# ruby input.rb

def greet(name="")
  if name==""
    puts "Greetings!"
  else
    puts "Welcome, #{name}"
  end
end
greet(gets.chomp)
