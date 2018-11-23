=begin
Упражнение 12

Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким образом, чтобы он возвращал false только в тех случаях, когда flavor равняется «black licorice».
=end

class Dessert
  attr_accessor :name, :calories
  def initialize(*description)
    @name = description[0]
    @calories = description[1]
  end 
  
  def healthy?
    if @calories == nil; return nil
    elsif @calories < 200; return true
    else return false
    end
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(*description)
      if description.length == 1
          @flavor=description[0]
      else
          super
          @flavor=description[2]
      end
  end
  
  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end
end
