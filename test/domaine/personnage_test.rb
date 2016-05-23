require 'test_helper'

module Domaine
  class PersonnageTest < Minitest::Test

    def test_un_personnage_a_une_identité
      identité = mock()

      assert_equal identité, Personnage.new(identité: identité).identité
    end

    def test_un_personnage_a_des_caractéristiques
      caractéristiques = mock()

      assert_equal caractéristiques, Personnage.new(caractéristiques: caractéristiques).caractéristiques
    end

    def test_un_personnage_a_un_inventaire
      inventaire = mock()

      assert_equal inventaire, Personnage.new(inventaire: inventaire).inventaire
    end

    def test_un_personnage_peut_prendre_un_objet_en_main_droite
      personnage = Personnage.new
      arme = mock()

      personnage.attrape_main_droite(arme)

      assert_equal arme, personnage.main_droite
    end

    def test_un_personnage_peut_prendre_un_objet_en_main_gauche
      personnage = Personnage.new
      arme = mock()

      personnage.attrape_main_gauche(arme)

      assert_equal arme, personnage.main_gauche
    end

    def test_un_personnage_peut_attaquer_de_la_main_droite
      arme = mock()
      caractéristiques = mock()
      attaque = mock()
      personnage = Personnage.new(caractéristiques: caractéristiques)
      personnage.attrape_main_droite(arme)
      Attaque.expects(:new).with(){ |params| params[:caractéristiques] == caractéristiques && params[:arme] == arme }.returns(attaque).once

      assert_equal attaque, personnage.attaque_main_droite
    end
  end
end
