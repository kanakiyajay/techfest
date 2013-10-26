str1 = gets
str2 = gets

str1 = str1.chomp
str2 = str2.chomp

no_of_beads = str1.to_i

max = no_of_beads

arr = str2.split(' ')

arr.map { |e| e.to_i }

origns = []

(1..max).each do |start|

    oarr = [start]
    n = start
    (max-1).times do |x|
        if x==max
            n = 1
        else
            n = n + 1
        end
        if n>max
            n=1
        end
        oarr.push(n)
    end

    origns.push(oarr)
end

#Compare with all the origin
compares = []

origns.each do |orig|
    t = 0
    arr.each_index do |i|
        j = orig.index(arr[i].to_i)
        diff = i-j
        t += diff.abs
    end
    compares.push(t)
end

print compares.min