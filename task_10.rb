=begin
Упражнение 10

Разработайте функцию count_words(string), которая будет возвращать хэш со статистикой частоты употребления входящих в неё слов.

Тесты для примеров и проверки:
	count_words("A man, a plan, a canal -- Panama") 
	    # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1} 
	count_words "Doo bee doo bee doo" 
	    # => {'doo' => 3, 'bee' => 2} 
=end

def count_words(string)
  counter = Hash.new(0)
  string.downcase!.scan(/\w+/).each{|word| counter[word] += 1}
  counter
end
