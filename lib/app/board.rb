# à l'initialisation du plateau, il doit instancier immédiatement 9 BoardCases (une par case).
# Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir
# les lire et les modifier facilement. Il faut les lui attribuer sous forme d'un array ou 
# d'un hash. Aussi, il est utile de compter le nombre de coup joué pour identifier facilement 
# si on arrive au 9ème coup sans vainqueur.
# Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : 
# il change les valeurs des BoardCases (de " " à "x" ou "o") et vérifie en fonction de 
# la combinaison des BoardCases si la partie est finie (= un joueur a gagné ou bien les
# 9 cases sont remplies sans vainqueur).

require 'pry'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :BoardCases
  
  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @BoardCases = [ 
    [BoardCase.new("A1"), BoardCase.new("B1"), BoardCase.new("C1")],
    [BoardCase.new("A2"), BoardCase.new("B2"), BoardCase.new("C2")], 
    [BoardCase.new("A3"), BoardCase.new("B3"), BoardCase.new("C3")]
  ]
end

def play_turn(player, addressCase)
  #TO DO : une méthode qui :
  #1) demande au bon joueur ce qu'il souhaite faire
  #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  for  i_columns in 0..2 do 
    for i_rows in 0..2 do
      current_case = board.BoardCases[i_rows][i_columns]
      if current_case.content != " "
        current_case.content = player.symbol
      else
        puts "Abruti, la case était déja remplie"
      end        
    end       
  end
end

def victory?(player)
  #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  #On balaye la matrice par colonne
  output =false
  for  i_columns in 0..2 do 
    result = 1
    contentfirstCase = board.BoardCases[0][i_columns].content
    for i_rows in 0..2 do
      current_case = board.BoardCases[i_rows][i_columns]
      if current_case.content == player.symbol
        result+=1
      end
    end
    if output = false  && result = 3
      output = true
    end
  end
  
  if output = true
    return output
  end
  
  #On balaye la matrice par ligne
  for  i_rows in 0..2 do 
    result = 1
    contentfirstCase = board.BoardCases[0][i_columns].content
    for i_columns in 0..2 do
      current_case = board.BoardCases[i_rows][i_columns]
      if current_case.content == player.symbol
        result+=1
      end      
    end  
    if output = false  && result = 3
      output = true     
    end
  end
  if output = true
    return output
  end

  # balaye la matrice en diagonale
  if board.BoardCases[0][0].content = player.symbol &&  board.BoardCases[1][1].content =  player.symbol && board.BoardCases[2][2].content =player.symbol
    return true

  if board.BoardCases[0][2].content = player.symbol &&  board.BoardCases[1][1].content =  player.symbol && board.BoardCases[2][0].content =player.symbol
    return true
  
end

def MatchNul?()
  output = true
  for  i_rows in 0..2 do 
    for i_columns in 0..2 do
      current_case = board.BoardCases[i_rows][i_columns]
      if current_case.content == " "
        return false
      end      
    end  
  end
  return output
end