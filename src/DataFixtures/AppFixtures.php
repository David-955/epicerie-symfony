<?php

namespace App\DataFixtures;

use App\Entity\Produit;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $produits = [
            ['Tondeuse à gazon', 150, 7, "tondeuse.jpg", false, "tondeuse"],
            ['Chauffe-eau', 200, 15, "chauffe-eau.jpg", false , "chauffe-eau"],
            ['Machette', 45, 1.2, "machette.jpg", true, "machette"],
            ['Pistolet à colle', 8, 0.3, "pistolet-colle.jpg", false, "pistolet-colle"],
            ['Masque de ski', 35, 0.5, "masque-ski.jpg", false, "masque-ski"],
            ['Appareil photo', 250, 0.8, "appareil-photo.jpg", false, "appareil-photo"],
            ['Détecteur de fumée', 25, 0.2, "detecteur-fumee.jpg", false, "detecteur-fumee"],
            ['Batterie externe', 30, 0.3, "batterie-externe.jpg", false, "batterie-externe"],
            ['Scie circulaire', 120, 5, "scie-circulaire.jpg", true, "scie-circulaire"],
            ['Aspirateur', 90, 4, "aspirateur.jpg", false, "aspirateur"]
        ];
        foreach ($produits as [$nom, $prix, $poids, $image, $dangereux, $alias]) {
                $produit = new Produit();
                $produit->setNom($nom);
                $produit->setPrix($prix);
                $produit->setPoids($poids);
                $produit->setImage("/image/produits/" . $image);
                $produit->setDangereux($dangereux);
                $produit->setAlias($alias);
                $manager->persist($produit);
            }
        $manager->flush();
    }
}
