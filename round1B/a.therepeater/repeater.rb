def reducer (str)
    op=""
    moves=0
    lastchar=""
    arr=str.split(//)
    for char in arr do
        if lastchar!=char
            op = op+char
        else
            moves=moves+1
        end
        lastchar=char
    end
    return op, moves
end

t=gets.to_i
for x in 1..t do
    possible=false
    n=gets.to_i
    arr=Array.new(n)
    moves=0
    for i in 0...n do
        arr[i]=gets.to_s.delete("\n")
    end
    if arr.uniq.length == 1
        moves=0
    else
        reduced=Array.new(n)
        for str in arr do
            reduced.push(reducer(str)[0])
            moves=moves+reducer(str)[1]
        end
        puts reduced.to_s
        if reduced.uniq.length==1
            possible=true
        end
    end
    puts "Case ##{x}: #{moves}"
end