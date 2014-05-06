t=gets.to_i
for x in 1..t do
    (a,b,k) = gets.split.map { |i| i.to_i }
    poss=0
    arr=Array.new
    if(k >= a || k >= b)
        poss=a*b
    elsif a==b && k==a-1
        poss=a*b-1
    else
        for i in 0...a do
            for j in 0...b do
                if i&j < k
                    poss+=1
                end
            end
        end
    end
    puts "Case ##{x}: #{poss}"
end