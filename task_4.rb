=begin
Упражнение 4

Дан массив целых чисел. Необходимо разработать метод sort_array(array), который поменяет местами минимальные и максимальные элементы массива, а также добавит в конец массива одно минимальное значение из него.

Тесты для примеров и проверки:
	sort_array([]) # => [] 
	sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2] 
	sort_array([1]) # => [1, 1] 
	sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1] 
=end

def sort_array(array)
  outarr=[]
  min=array.min
  max=array.max
  array.each{|i|
    case i
      when min then outarr << max
      when max then outarr << min
      else outarr << i
    end
  }
  outarr.length==0 ? [] : outarr << min
end


#можно обойтись только одним массивом...например, так...но это будет несколько медленнее
=begin
def sort_array(array)
  min=array.min
  max=array.max
  for i in (1..array.length)
    case array[0]
      when min then array << max
      when max then array << min
      else array << array[0]
    end
    array.delete_at(0)
  end
  array.length==0 ? [] : array << min
end
=end
