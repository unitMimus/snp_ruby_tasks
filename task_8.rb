=begin
Упражнение 8

Написать метод multiply_numbers(inputs), который вернет произведение цифр, входящих в inputs.

Тест для примеров и проверки:
	multiply_numbers() # => nil 
	multiply_numbers('ss') # => nil 
	multiply_numbers('1234') # => 24 
	multiply_numbers('sssdd34') # => 12 
	multiply_numbers(2.3) # => 6 
	multiply_numbers([5, 6, 4]) # => 120 
=end

def multiply_numbers(inputs="")
  output=1
  inputs=inputs.to_s.scan(/./).keep_if{|i| ("0".."9").include?(i)}.each{|i| output *=(i.to_i)}
  inputs.length!=0 ? output : nil
end
