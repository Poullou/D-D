module Domaine
  module Créature
    class Basique
      attr_reader :caractéristiques

      def initialize
        @caractéristiques = Caractéristiques.new
      end
    end
  end
end
