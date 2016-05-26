module Domaine
  module Créature
    class Basique
      def attr_reader :caractéristiques

      def initialize
        @caractéristiques = Caractéristiques.new
      end
    end
  end
end
