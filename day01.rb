
# zaehler  definieren

counter =0


# textdatei lesen

lines=File.readlines('day01.txt').map(&:to_i)

i=0

while i < lines.length-1
    if lines[i] < lines[i+1]
        counter+=1
    end
    i+=1
end

puts 'teil 1', counter

counter=0
i=0

while i<lines.length-3
    a=lines[i]+lines[i+1]+lines[i+2]
    b=lines[i+1]+lines[i+2]+lines[i+3]
    if a<b
        counter+=1
    end
    i+=1
end

puts 'teil 2', counter
