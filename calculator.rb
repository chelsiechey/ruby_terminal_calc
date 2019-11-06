def first_number
  puts "Welcome to the Ruby Calculator"
  puts "To exit, press control C at any time. To restart, type clear."
  puts "What is the First Number?"
  @first_number = gets.chomp
  if @first_number.to_i.to_s == @first_number
    get_modifier
  elsif @first_number.to_f.to_s == @first_number
    get_modifier
  elsif @first_number == "clear"
    first_number
  else
    puts "Invalid Entry"
    first_number
  end
end

def get_modifier
  puts "What is the Modifier?"
  @mod = gets.chomp
  if @mod == "+"
    second_number
  elsif @mod == "-"
    second_number
  elsif @mod == "*"
    second_number
  elsif @mod == "/"
    second_number
  elsif @mod == "%"
    second_number
  elsif @mod == "clear"
    first_number
  else
    puts "Invalid Entry"
    get_modifier
  end
end

def second_number
  puts "What is the Second Number?"
  @second_number = gets.chomp
  if @second_number.to_i.to_s == @second_number
    get_result
  elsif @second_number.to_f.to_s == @second_number
    get_result
  elsif @second_number == "clear"
    first_number
  else
    puts "Invalid Entry"
    second_number
  end
end

def get_result
  @first_number = @first_number.to_f
  @second_number = @second_number.to_f
  if @mod == "+"
    @result = @first_number + @second_number
    keep_going
  elsif @mod == "-"
    @result = @first_number - @second_number
    keep_going
  elsif @mod == "*"
    @result = @first_number * @second_number
    keep_going
  elsif @mod == "/"
    @result = @first_number / @second_number
    keep_going
  elsif @mod == "%"
    @result = @first_number % @second_number
    keep_going
  else
    puts "Unknown Error"
    first_number
  end
end

def keep_going
  puts "#{@first_number} #{@mod} #{@second_number} = #{@result}"
  @first_number = @result
  puts @first_number  
  get_modifier
end


first_number

