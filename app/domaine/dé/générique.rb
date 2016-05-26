module Domaine
  module Dé
    class Générique
      def initialize(nombre_de_côtés, nombre_de_lancer = 1)
        @nombre_de_côtés = nombre_de_côtés
        @nombre_de_lancer = nombre_de_lancer
      end

      def lance
        (0...@nombre_de_lancer).map{ rand(@nombre_de_côtés) + 1 }.reduce(:+)
      end
    end
  end
end
