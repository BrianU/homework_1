class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
  if ( m1[1] == m2[1])
    return m1
  end
  
  if ( m1[1].downcase=='r' and m2[1].downcase=='s')
    return m1
  end
  
  if ( m1[1].downcase=='r' and m2[1].downcase=='p')
    return m2
  end
  
  if ( m1[1].downcase=='s' and m2[1].downcase=='r')
    return m2
  end
  
  if ( m1[1].downcase=='s' and m2[1].downcase=='p')
    return m1
  end
  
  if ( m1[1].downcase=='p' and m2[1].downcase=='s')
    return m2
  end
  if ( m1[1].downcase=='p' and m2[1].downcase=='r')
    return m1
  end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
#  raise NoSuchStrategyError unless 
#    game[0][1].downcase =~ /s|p|r/ and game[1][1].downcase =~ /s|p|r/ 
  winner = rps_result(game[0], game[1])
  return winner
end

def rps_tournament_winner(tournament)
  tournament.each do |game|
    puts rps_game_winner(game)
  end
end

game = [["Armando", "s"], ["Dave", "W"]]
puts rps_game_winner( game )

#game = [["Armando", "P"], ["Dave", "P"], ["Arse", "R"]]
#rps_game_winner( game )

rps_game_winner( game )
 
game = [["Armando", "P"], ["Dave", "W"]]
 
rps_game_winner( game )

tournament =  [
                  [
                      [ ["Armando", "P"], ["Dave", "S"] ],
                      [ ["Richard", "R"],  ["Michael", "S"] ],
                  ],
                  [
                      [ ["Allen", "S"], ["Omer", "P"] ],
                      [ ["David E.", "R"], ["Richard X.", "P"] ]
                  ]
              ]
              
# rps_tournament_winner tournament               
