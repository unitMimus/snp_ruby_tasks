=begin
Упражнение 5

Разработать метод date_in_future(integer), который вернет дату через integer дней. Если integer не является целым числом, то метод должен вывести текущую дату. Формат возвращаемой методом даты должен иметь следующий вид '01-01-2001 22:33:44'. 

Для работы со временем в языке Ruby рекомендуется использовать библиотеку active_support, которая расширяет его дополнительными методами, включая работу со временем.

Тесты для примеров и проверки:
	date_in_future([]) # => текущая дата
	date_in_future(2) # => текущая дата + 2 дня
=end

require 'active_support/core_ext/date'

def date_in_future(integer=0)
  integer.respond_to?(:integer?) ? integer : integer = 0
  Time::DATE_FORMATS[:dmyhms] = "%d-%m-%y %H:%M:%S"
  return Time.current.advance(days: integer).to_formatted_s(:dmyhms)
end
