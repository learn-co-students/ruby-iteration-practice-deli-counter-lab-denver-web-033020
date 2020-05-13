require 'pry'

# Write your code here.
katz_deli = []

def line(katz_deli)
    if katz_deli.length == 0
      puts "The line is currently empty."
    else
      output = "The line is currently: "
      katz_deli.each_with_index {|val, index| output += "#{index + 1}. #{val} "}
      puts output.strip
    end
  end

  def take_a_number(deli_line, name)
    deli_line << name
    if deli_line.count == 1
      puts "Welcome, #{name}. You are number 1 in line."
    else
      i = deli_line.index(name)
      puts "Welcome, #{deli_line[i]}. You are number #{i + 1} in line."
    end
    deli_line
  end
  
  def now_serving(deli_line)
    if deli_line.count == 0
        puts "There is nobody waiting to be served!"
        deli_line
    else
      curr_serving = deli_line.shift()
      puts "Currently serving #{curr_serving}."
      deli_line
    end
  end