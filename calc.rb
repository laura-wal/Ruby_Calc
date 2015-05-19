
def add(x, y)
  "The answer is #{x + y}"
end


def minus(x,y)
  "The answer is #{x - y}"
end


def divide(x,y)
   "The answer is#{x / y}"
end 


def multiply(x,y)
  "The answer is #{x * y}"
end

def power(x,y)
  "The answer is #{x ** y}"
end 

def square_root(x)
  "The answer is #{Math.sqrt(x)}"
end 

def bmi(x,y)
  puts "The answer is #{x /(y*2)}"
end 


def simple_calc(input1, input2, operation)
  case operation 
  when 'add'
    puts add(input1,input2)
  when 'divide'
    puts divide(input1,input2)
  when 'minus'
    puts divide(input1,input2)
  when 'multiply'
    puts multiply(input1,input2)
  end 
end

def advanced_calc(input1, input2, operation2)
  case operation2
  when 'power'
    puts power(input1, input2)
  when 'square_root'
    puts square_root(input1)
  end
end


puts "Which Calculator Do You Want? Simple, Advanced?"
calculator = gets.chomp
case calculator
when 'simple'
  puts "Do you want to add, minus, divide or multiply"
  operation = gets.chomp
  puts "What is the first number"
  input1 = gets.chomp.to_i
  puts "What is the second number"
  input2 = gets.chomp.to_i

  simple_calc(input1, input2, operation)

when 'advanced'
    puts "Do you want to use power, square root, bmi?"
    operation2 = gets.chomp
  case operation2
    when  'power'
      puts "What is the first number"
      input1 = gets.chomp.to_i
      puts "What is the second number"
      input2 = gets.chomp.to_i
      advanced_calc(input1, input2, operation2)
    when 'square_root'
      puts "What is the first number"
      input1 = gets.chomp.to_i 
      advanced_calc(input1, nil, operation2)
   when 'bmi'    
    puts "what is your weight in KG"
    input1 = gets.chomp.to_i
    puts "What is your height in meters"
    input2 = gets.chomp.to_f
    bmi(input1,input2)
  when ''
  end
end


# add gets???
