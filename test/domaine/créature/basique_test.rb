require 'test_helper'

module Domaine
  module Créature
    class BasiqueTest < Minitest::Test

      def test_une_créature_basique_a_des_caractéristiques
        caractéristiques = mock()
        Caractéristiques.expects(:new).returns(caractéristiques).once

        créature = Basique.new

        assert_equal caractéristiques, créature.caractéristiques
      end
    end
  end
end
