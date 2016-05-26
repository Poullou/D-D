require 'test_helper'

module Domaine
  module Dé
    class GénériqueTest < Minitest::Test

      def test_un_dé_générique_utilise_son_nombre_de_côté_pour_le_lancer
        dé = Générique.new(10)
        dé.expects(:rand).with(10).returns(5).once # rand returns 0..9

        assert_equal 6, dé.lance
      end

      def test_un_dé_générique_peut_être_lancé_plusieurs_fois
        dé = Générique.new(10, 3)
        dé.expects(:rand).with(10).returns(2).times(3) # rand returns 0..9

        assert_equal 9, dé.lance
      end
    end
  end
end
