str1 = gets
str2 = gets

str1 = str1.chomp
str2 = str2.chomp

t = str1.split(" ")[1].to_i

time = 0
soil = 0
blocks = str2.split('')

min_soil = 0

blocks.each do |x|
    if x=='H'
        soil -= 1
        if soil < min_soil
            min_soil = soil
        end
        time += 1
    else
        if x=='S'
            soil += 1
            time += 1
        end
    end
    
    if x=='.'
        time+=1
    end
end

if time>t
    print -1
else
    print min_soil*-1    
end
