t=gets.to_i
for i in 1..t do
  aq1=Array.new(4){Array.new(4)}
  aq2=Array.new(4){Array.new(4)}
  ans1=gets.to_i
  aq1[0]=gets.split.map{|i| i.to_i}
  aq1[1]=gets.split.map{|i| i.to_i}
  aq1[2]=gets.split.map{|i| i.to_i}
  aq1[3]=gets.split.map{|i| i.to_i}
  ans2=gets.to_i
  aq2[0]=gets.split.map{|i| i.to_i}
  aq2[1]=gets.split.map{|i| i.to_i}
  aq2[2]=gets.split.map{|i| i.to_i}
  aq2[3]=gets.split.map{|i| i.to_i}
  if ((aq1[ans1-1] & aq2[ans2-1]).length == 1)
    puts "Case ##{i}: #{(aq1[ans1-1] & aq2[ans2-1])[0]}"
  elsif ((aq1[ans1-1] & aq2[ans2-1]).length > 1)
    puts "Case ##{i}: Bad magician!"
  elsif ((aq1[ans1-1] & aq2[ans2-1]).length == 0)
    puts "Case ##{i}: Volunteer cheated!"
  end
end