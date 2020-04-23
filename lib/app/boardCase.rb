# chacune des 9 instances de BoardCase correspond à l'état d'une case du plateau.
# Variables d'instance : une Boardcase est définie par sa position (A1, B2, B3, etc.)
#  et son contenu (Soit elle est vide, soit elle a comme valeur le string "x", 
#  soit elle a comme valeur le string "o").

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :content, :case_identificator
  
  def initialize(case_identificator)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @content = "x"
    @case_identificator = case_identificator
  end
  
end