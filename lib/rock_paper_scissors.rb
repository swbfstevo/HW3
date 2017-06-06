class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError
  end

  def self.winner(player1, player2)
    @first = player1
    @second  = player2
    
    if (@first[1] == "R" || @first[1] == "P" || @first[1] == "S") && (@second[1] == "R" || @second[1] == "P" || @second[1] == "S")
      
      if (@first[1] == "S") && (@second[1] == "R")
        return @second  
      elsif (@first[1] == "P") && (@second[1] == "S")
        return @second  
      elsif (@first[1] == "R") && (@second[1] == "P")
        return @second
      else
        return @first
      end
    else
      raise NoSuchStrategyError.new("Strategy must be one of R,P,S")
    end
    
  end

  def self.tournament_winner(tournament)
    @tourny = tournament
    @newtourny = Array.new(0)
    if @tourny[0][0].is_a?(Array)
        @tourny.each do |game|
          @newtourny.push(self.tournament_winner(game))
        end
    else
       return self.winner(@tourny[0], @tourny[1])
    end
    return self.tournament_winner(@newtourny)
        
      
  end

end
