module Domaine
  module Dé
    class D20 < Générique

      def initialize(nombre_de_lancer = 1)
        super(20, nombre_de_lancer)
      end
    end
  end
end
