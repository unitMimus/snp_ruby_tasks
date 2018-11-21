=begin
Упражнение 1

Разработайте метод palindrome?(string), который будет определять, является ли строка string палиндром (строкой, которая читается одинаково как с начала так и с конца), при условии игнорирования пробелов, знаков препинания и регистра. 

Тесты для примеров и проверки:
	palindrome?("A man, a plan, a canal -- Panama")  # => true 
	palindrome?("Madam, I'm Adam!")                  # => true 
	palindrome?(333)                                 # => true 
	palindrome?(nil)                                 # => false 
	palindrome?("Abracadabra")                       # => false 
=end

def palindrome?(string)
  if string != nil
    
      #более читаемый вариант
      #chararr=("a".."z").to_a + ("0".."9").to_a  #вспомогательный массив "нужного"
      #useful="#{string}".downcase.chars
      #useful=useful-(useful-chararr) #удаляем "мусор" из проверяемой "строки"
      
      #краткая запись
      useful="#{string}".downcase.chars-("#{string}".downcase.chars-(("a".."z").to_a + ("0".."9").to_a))
      
      return useful.reverse==useful #проверяем на палиндромность
  else  return false
  end
end
