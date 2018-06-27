class FlamesController < ApplicationController
   skip_before_filter :verify_authenticity_token

  def index
  end

  def create
  	@name1 = params[:name1]
  	@name2 = params[:name2]
  
    # Flames-rtn
    names(@name1, @name2)
    future(relstat)
    @rel = relstat
    # byebug
  
  end
  
def names(x, y)
  # puts x
  # puts y
  xmax = x.length - 1
  # puts xmax
  ymax = y.length - 1
  # puts ymax

  xctr = 0
  yctr = 0

  for i in 0..xmax
    
    for j in 0..ymax
      if (x[i] == ' ') then 
        break
      end
      if (x[i] == y[j])
        xctr += 1

        break
      end
    end
  end
  xctr -= 1
  # puts "xctr = #{xctr}" 


  
  for j in 0..ymax
    for i in 0..xmax
      if (y[j] == ' ') then 
        break
      end
      if (y[j] == x[i])
        yctr += 1
        break
      end
    end
  end
  
  # puts "yctr = #{yctr}" 

  # puts "#{$totctr = xctr + yctr}" 
  $totctr = xctr + yctr 


end
  
def future(z)
 
  case $totctr 
    when 1, 7, 13
      z =  "F-RIENDS"
      # puts "F-RIENDS"
    when 2, 8, 14 
      z =  "L-OVERS"
      # puts "L-OVERS"
    when 3, 9, 15 
      z =  "A-NGRY"
      # puts "A-NGRY"
    when 4, 10, 16 
      z =  "M-ARRIED"
      # puts "M-ARRIED"
    when 5, 11, 17 
      z =  "E-NGAGED"
      # puts "E-NGAGED"
    when 6, 12, 18 
      z =  "S-WEETHEART"
      # puts "S-WEETHEART"
    else 
      z =  "OUT OF RANGE..."
      # puts "OUT OF RANGE..."
  end

end

# puts 'Input Name1'
# x = gets
# puts 'Input Name2'
# y = gets
# names(x, y)

# future

end
