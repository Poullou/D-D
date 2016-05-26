module Domaine
  module Créature
    class Caractéristiques

      NOMS = [:force, :dextérité, :endurance, :intelligence, :sagesse, :charisme]

      def initialize
        @table = NOMS.inject({}){ |table, carac| table.merge(carac => Caractéristique.aléatoire) }
      end

      def [](nom_de_caractéristique)
        @table[nom_de_caractéristique]
      end
    end
  end
end
