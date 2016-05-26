require 'test_helper'

module Domaine
  module Créature
    class CaractéristiqueTest < Minitest::Test

      def test_une_caractéristique_a_une_valeur
        carac = Caractéristique.new(10)

        assert_equal 10, carac.valeur
      end

      def test_une_caractéristique_peut_donner_son_bonus # (valeur - 10) / 2 arrondi à l'inférieur
        assert_equal -6, Caractéristique.new(-1).bonus
        assert_equal -1, Caractéristique.new(9).bonus
        assert_equal 0, Caractéristique.new(10).bonus
        assert_equal 1, Caractéristique.new(13).bonus
      end

      def test_une_caractéristique_peut_être_aléatoire
        carac_aléatoire = mock()
        Caractéristique.expects(:rand).with(5).returns(0).once
        Caractéristique.expects(:new).with(8).returns(carac_aléatoire)

        carac = Caractéristique.aléatoire(8, 12)

        assert_equal carac_aléatoire, carac
      end
    end
  end
end
