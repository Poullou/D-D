require 'test_helper'

module Domaine
  module Créature
    class CaractéristiquesTest < Minitest::Test

      def test_les_caractéristiques_sont_toutes_initialisées_aléatoirement
        caractéristique = mock()
        Caractéristique.expects(:aléatoire).returns(caractéristique).times(Caractéristiques::NOMS.size)

        caractéristiques = Caractéristiques.new

        assert Caractéristiques::NOMS.all?{ |nom| caractéristiques[nom] == caractéristique }
      end
    end
  end
end
