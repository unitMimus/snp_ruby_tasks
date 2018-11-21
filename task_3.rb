=begin
Упражнение 3

Дан массив элементов произвольной природы. Необходимо разработать метод max_odd(array), который определит максимальный нечетный элемент. Вернуть nil, если таких элементов нет в переданном массиве.

Тесты для примеров и проверки:
	max_odd([1, 2, 3, 4, 4]) # => 3 
	max_odd([21.0, 2, 3, 4, 4]) # => 21 
	max_odd(['ololo', 2, 3, 4, [1, 2], nil]) # => 3 
	max_odd(%w[ololo fufufu]) # => nil 
	max_odd([2, 2, 4]) # => nil 
=end

def max_odd(array)
  mv= array.keep_if{|i| i.to_s.to_f%2==1}.max.to_i
  return mv !=0 ? mv : nil
end
