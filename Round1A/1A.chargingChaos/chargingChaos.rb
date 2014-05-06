t=gets.to_i
for x in 1..t do
    n=gets.to_i
    d=Array.new(n)
    o=Array.new(n)
    d=gets.split.map{|i| i.to_i(2)}
    o=gets.split.map{|i| i.to_i(2)}
    xors=Array.new(n){Array.new(n)}
    for i in 0...n do
        for j in 0...n do 
            xors[i][j]=(d[i]^o[j])
        end
    end
    ints=xors.inject{|codes,x| codes & x }
    minimum=n
    possible=false
    for inter in ints do
        possible=true
        if inter.to_s(2).count("1") <minimum
            minimum=inter.to_s(2).count("1")
        end
    end
    if possible
        puts "Case ##{x}: #{minimum}"
    else
        puts "Case ##{x}: NOT POSSIBLE"
    end
end