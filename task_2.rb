=begin
Упражнение 2

Дан массив array и числовой диапазон range. Разработайте метод coincidence(array, range) для определения элементов из массива array, значения которых входят в указанный диапазон. Если не передан хотя бы один из параметров, то должен вернуться пустой массив.

Тесты для примеров и проверки:
	coincidence([1, 2, 3, 4, 5], (3..5))  # => [3, 4, 5] 
	coincidence()  # => [] 
	coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3)) # => [1, 2, 2.5] 
=end

def  coincidence(array=[], range=())
  if array.respond_to?(:length) && array.length>0 && range.to_a.length>0
    return array.keep_if{|i| range.include?(i)}
  else  return []
  end
end
