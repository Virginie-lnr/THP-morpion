
#TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

class Player 
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

end