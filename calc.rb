# Calculator

def prompt(message)
  puts("=> #{message}")
end

def valid?(num)
  num.to_i.nonzero?
end

def operator_to_message(operator)
  case operator
  when 'add'
    'Adding'
  when 'subtract'
    'Subtracting'
  when 'multiply'
    'Multiplying'
  when 'divide'
    'Dividing'
  end
end

prompt('Welcome to the Calculator!')

prompt('What is your name?')
name = gets.chomp.capitalize!
prompt("Hi, #{name}!")

loop do # main loop

  first_num = ''
  loop do
    prompt('What is the first number?')
    first_num = gets.chomp

    if valid?(first_num)
      break
    else
      prompt('That doesn\'t look like a valid number')
    end
  end

  second_num = ''
  loop do
    prompt('What is the second number?')
    second_num = gets.chomp

    if valid?(second_num)
      break
    else
      prompt('That doesn\'t look like a valid number')
    end
  end
 
  operator_prompt = <<-MSG
    Please choose one of these valid operations...
    Add
    Subtract
    Multiply
    Divide
  MSG

  prompt(operator_prompt)
 
  operator = ''
  loop do
    operator = gets.chomp.downcase

    if %w(add subtract multiply divide).include?(operator)
      break
    else
      prompt('Error! Please choose a valid operation.')
    end
  end

  prompt("#{operator_to_message(operator)} the two numbers...")
   
   result = case operator
            when 'add'
              first_num.to_i + second_num.to_i
            when 'subtract'
              first_num.to_i - second_num.to_i
            when 'multiply'
              first_num.to_i * second_num.to_i
            when 'divide'
              first_num.to_f / second_num.to_f
            end
  
  prompt("The result is #{result}.")

  prompt('Perform another calculation? (Type Y to perform another calculation)')
  answer = gets.chomp
  break unless answer.start_with? 'y'
end

prompt('Thank you for using Calculator v1.0')
