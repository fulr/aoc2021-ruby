
horizontal=0
tiefe=0

lines=File.readlines("day02.txt").map(&:split)

print lines

lines.each do |line|
    if line[0]=='forward'
        horizontal+=line[1].to_i
    end
    if line[0]=='down'
        tiefe+=line[1].to_i
    end
    if line[0]=='up'
        tiefe-=line[1].to_i
    end
end

result=horizontal*tiefe

puts "teil 1", result

horizontal=0
tiefe=0
aim=0

lines.each do |line|
    if line[0]=='forward'
        horizontal+=line[1].to_i
        tiefe+=aim*line[1].to_i
    end
    if line[0]=='down'
        aim+=line[1].to_i
    end
    if line[0]=='up'
        aim-=line[1].to_i
    end
end

puts "teil 2", horizontal*tiefe

