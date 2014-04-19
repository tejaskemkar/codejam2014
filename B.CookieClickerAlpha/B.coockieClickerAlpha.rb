def timeAfterFarmPurchase(c,f,x, oldTime, rate)
    timeToBuy=oldTime+(c/rate)
    rate = rate + f
    waitAfterBuy=x / rate
    return timeToBuy, waitAfterBuy, rate
end

t=gets.to_i
for i in 1..t do 
    shouldWait=true
    (c, f, x) = gets.split.map{|i| i.to_f}
    rate=2.0
    oldWaitTime=x / rate
    timeToBuyFarms=0.00
    while shouldWait
        newTime=timeAfterFarmPurchase(c, f, x, timeToBuyFarms,rate)
        totalTimeAfterPurchase = newTime[0] + newTime[1]
        timeToBuyFarms=newTime[0]
        rate=newTime[2]
        if totalTimeAfterPurchase > oldWaitTime
            totalTimeAfterPurchase = oldWaitTime
            shouldWait=false
        else
            oldWaitTime=totalTimeAfterPurchase
        end
    end
    puts "Case ##{i}:  #{totalTimeAfterPurchase}"
end