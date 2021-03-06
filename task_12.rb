=begin
Упражнение 12

Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким образом, чтобы он возвращал false только в тех случаях, когда flavor равняется «black licorice».
=end

class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end 
  
  def healthy?
    if @calories < 200; return true
    else return false
    end
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor=flavor
  end

  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end
end
