module Domaine
  class Personnage
    attr_reader :identité, :caractéristiques, :inventaire, :main_droite, :main_gauche

    def initialize(params = {})
      @identité = params[:identité]
      @caractéristiques = params[:caractéristiques]
      @inventaire = params[:inventaire]
    end

    def attrape_main_droite(objet)
      @main_droite = objet
    end

    def attrape_main_gauche(objet)
      @main_gauche = objet
    end

    def attaque_main_droite
      Attaque.new(caractéristiques: @caractéristiques, arme: @main_droite)
    end
  end
end
