=begin
Упражнение 13

Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo") вы могли его использовать как "foo".palindrome? # => false.
=end


module Palindrolver 
  def palindrome?
    string = self
    if string != nil
      
      #краткая запись
      useful="#{string}".downcase.chars-("#{string}".downcase.chars-(("a".."z").to_a + ("0".."9").to_a))
      
      return useful.reverse==useful #проверяем на палиндромность
    else  return false
    end
  end
end
include Palindrolver
