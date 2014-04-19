t=gets.to_i
for i in 1..t do
    (r, c, m) = gets.split.map{|i| i.to_i}
    total_cells=r*c
    free_cells=total_cells-m
    possible=false
    grid=Array.new(r){Array.new(c)}

    puts "Case ##{i}:"
    if(free_cells == 1)
        possible=true
        for i in 0...r do
            for j in 0...c do
                if (i==0 && j===0) 
                    print "c" 
                else
                    print "*"
                end
            end
            puts
        end
    elsif (r==1 || c==1)
        possible=true
        if r==1
            print "c"
            (free_cells-1).times do print "." end
            m.times do print "*" end
            puts
        else
            puts "c"
            (free_cells-1).times do puts "." end
            m.times do puts "*" end
        end
    elsif (free_cells % 2 == 0) && (free_cells > 2)
        for i in 0...r do
            x = free_cells/2 - r*(i/2).ceil
            for j in 0...c do
                if (i == 0 && j == 0) 
                    print "c"
                elsif (j < x)
                    print "."
                else
                    print "*"
                end
            end
            puts
        end
    elsif (((free_cells % r) == 0) || ((free_cells % c) == 0)) && (free_cells != r || free_cells != c)
        possible=true
        for i in 0...r do
            for j in 0...c do
                if (free_cells % r==0) ? (j<(free_cells / r)) : (i<(free_cells / c))
                    print (i==0 && j==0) ? "c" : "."
                else
                    print "*"
                end
            end
            puts
        end
    elsif (r >= 3 && c >= 3)
        if (free_cells >= 9 )
            possible=true
            f = free_cells - 9
            for i in 0...r do
                x = f/2- r*(i/2).ceil
                    for j in 0...c do
                        if (i == 0 && j == 0) 
                            print "c"
                        elsif(i >= f/(r*(i+1)) && j >= f/(r*(i+1)))
                            print "*"
                        elsif (j < x  ) 
                            print "."
                        else 
                            print "*"
                        end
                    end
                    puts
            end
        else
            possible=false
            puts "Impossible"
        end
    else
        possible=false
        puts "Impossible"
    end
end