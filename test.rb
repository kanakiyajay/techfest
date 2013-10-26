max = 5
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

    puts oarr
end