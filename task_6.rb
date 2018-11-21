=begin
Упражнение 6

Разработать методы для программы Камень-Ножницы-Бумага.

Метод rps_game_winner должен принимать на вход массив следующей структуры [["player1", "P"], ["player2", "S"]], где P - бумага, S - ножницы, R - камень, и функционировать следующим образом:

	• если количество игроков больше 2 необходимо вызывать исключение WrongNumberOfPlayersError;
	• если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать исключение NoSuchStrategyError;
	• в иных случаях необходимо вернуть имя и ход победителя, если оба игрока походили одинаково - выигрывает первый игрок.

Тесты для примеров и проверки:
	rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]])) # => WrongNumberOfPlayersError 
	rps_game_winner([%w[player1 P], %w[player2 A]])) # => NoSuchStrategyError 
	rps_game_winner([%w[player1 P], %w[player2 S]])) # => 'player2 S' 
	rps_game_winner([%w[player1 P], %w[player2 P]])) # => 'player1 P' 
=end

def rps_game_winner(step)
  actions=["R","S","P"]
  
  begin	#Ловим неправильное количество игрков
    raise ArgumentError.new('WrongNumberOfPlayersError') if step.length!=2
  rescue ArgumentError => e
    return e
  end
  
  begin	#Ловим неправильные ходы
    raise ArgumentError.new('NoSuchStrategyError') if !(actions.include?(step[0][1]) && actions.include?(step[1][1]))
  rescue ArgumentError => e
    return e
  end
  
  case [step[0][1],step[1][1]]
    when ["R","S"], ["S","P"], ["P","R"] then return "#{step[0][0]} #{step[0][1]}\n"	#Ходы разные, побеждает первый
    when ["S","R"], ["P","S"], ["R","P"] then return "#{step[1][0]} #{step[1][1]}\n"	#Ходы разные, побеждает второй
    else return "#{step[0][0]} #{step[0][1]}\n"	#Ходы одинаковые => побеждает первый
  end
  
end
