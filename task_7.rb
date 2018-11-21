=begin
Упражнение 7

Анаграмма — литературный приём, состоящий в перестановке букв или звуков определённого слова (или словосочетания), что в результате даёт другое слово или словосочетание.

Разработайте метод combine_anagrams(words_array), который принимает на вход массив слов и разбивает их в группы по анаграммам, регистр букв не имеет значения при определении анаграмм. 

Тест для примеров и проверки:
	combine_anagrams(%w[cars for potatoes racs four scar creams scream] # => [ ["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"] ] 
=end

def combine_anagrams(words_array)
  words_array.each{|word| word=word.downcase!}	#Делаем нечувствительным к регистру
  output=[]
  until words_array.length == 0
    currword = words_array.shift	#Вытаскиваем первое слово
    output << words_array.select{|word| currword.scan(/./).sort == word.scan(/./).sort}.unshift(currword)	#Ищем другие слова с таким же количеством/набором букв, что и первое. Добавляем их, вместе с первым, в вывод.
    words_array -= output.last	#Удаляем из начальных уже выбранные слова
  end
  output
end
