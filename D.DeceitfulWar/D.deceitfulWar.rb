t=gets.to_i
for x in 1..t do
    numBlocks=gets.to_i
    naomiBlocks=Array.new(numBlocks)
    kenBlocks=Array.new(numBlocks)
    naomiBlocks=gets.split.map { |i| i.to_f}
    kenBlocks=gets.split.map { |i| i.to_f}
    kenBlocks.sort!
    kenWarBlocks=Array.new(kenBlocks)

    naomiWarScore=numBlocks

    for naomiBlock in naomiBlocks do
        for kenBlock in kenWarBlocks do
            if kenBlock > naomiBlock
                naomiWarScore=naomiWarScore-1
                kenWarBlocks.delete(kenBlock)
                break
            end
        end 
    end

    naomiBlocks.sort!
    naomiDeceitScore=0
    for block in naomiBlocks do
        if block > kenBlocks.max.to_f 
            naomiDeceitScore += 1
            kenBlocks.delete(kenBlocks.max)
        elsif block > kenBlocks.min.to_f
            naomiDeceitScore += 1
            kenBlocks.delete(kenBlocks.min)
        end
    end 
    puts "Case ##{x}: #{naomiDeceitScore} #{naomiWarScore}"
end