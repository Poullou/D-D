module Domaine
  module Créature
    class Caractéristique
      attr_reader :valeur

      class << self
        def aléatoire(min, max)
          new(min + rand(max - min + 1))
        end
      end

      def initialize(valeur)
        @valeur = valeur
      end

      def bonus
        (valeur - 10) / 2
      end
    end
  end
end
