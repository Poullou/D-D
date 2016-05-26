require 'test_helper'

module Domaine
  module Dé
    class D20Test < Minitest::Test

      def test_un_dé_hérite_de_générique
        assert D20.new.is_a? Générique
      end

      def test_un_dé_20_a_20_côtés
        dé = D20.new
        dé.expects(:rand).with(20).returns(1).once

        dé.lance
      end
    end
  end
end
