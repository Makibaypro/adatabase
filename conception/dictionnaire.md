# Dictionnaire de données — La Remise

| Nom | Description | Type | Taille | Contrainte | Remarque |
|---|---|---|---|---|---|
| personneId | id de la personne | Numerique | | Identifiant Automatique | |
| personneNom | nom de la personne | Texte | | Obligatoire | |
| personnePrenom | prenom de la personne | Texte | | | |
| personneTel | tel de la personne | Numerique | varchar(32) | Obligatoire | |
| personneAdherent | la personne est adherente ? | Boolean | | Obligatoire | |
| | | | | | |
| benevoleIdPersonne | cle etrangere | Numerique | | Identifiant Automatique | |
| benevoleDate | date de debut du benevolat | Date | YYYY-MM-DD | | |
| | | | | | |
| competenceId | id de la competence | Numerique | | Identifiant Automatique | |
| competenceNom | nom de la competence | Texte | | Obligatoire | |
| | | | | | |
| depotId | id du depot | Numerique | | Identifiant Automatique | |
| depotIdPersonne | cle etrangere | Numerique | | Identifiant Automatique | |
| depotDate | date du depot | Date | YYYY-MM-DD | Obligatoire | |
| depotType | type de depot | Texte | | Obligatoire | Depot ou Collecte |
| | | | | | |
| objetId | id de l'objet | Numerique | | Identifiant Automatique | |
| objetCategorie | categorie de l'objet | Texte | | Obligatoire | mobilier, electromenager, livres, vaissell, textile, jouets, bricolage |
| objetEtat | etat de l'objet | Texte | | Obligatoire | bon etat, a reparer ou HS |
| objetPoids | poids de l'objet | Numerique | | Obligatoire | |
| objetStatus | status de l'objet dans la chaine | Texte | | Obligatoire | arrive, en reparation, en rayon, vendu ou recycle |
| objetPrixOrigine | prix d'origine de l'objet | Numerique | | | |
| objetPrixFinal | prix final de l'objet | Numerique | | Obligatoire | |
| objetIdDepot | cle etrangere | Numerique | | Identifiant Automatique | |
| objetIdVente | cle etrangere | Numerique | | Identifiant Automatique | |
| | | | | | |
| reparationId | id de la reparation | Numerique | | Identifiant Automatique | |
| reparationDate | date de la reparation | Date | YYYY-MM-DD | Obligatoire | |
| reparationDuree | duree de la reparation | Numerique | hours | Obligatoire | |
| reparationResultat | resultat de la reparation | Texte | | Obligatoire | |
| reparationIdObjet | cle etrangere | Numerique | | Identifiant Automatique | |
| reparationIdPersonne | cle etrangere | Numerique | | Identifiant Automatique | |
| | | | | | |
| venteId | id de la vente | Numerique | | Identifiant Automatique | |
| venteDate | date de la vente | Date | YYYY-MM-DD | Obligatoire | |
| venteModePaiement | mode de paiment pour la vente | Texte | | Obligatoire | especes, carte ou cheque |
| | | | | | |
| atelierId | id de l'atelier | Numerique | | Identifiant Automatique | |
| atelierNom | nom de l'atelier | Texte | | Obligatoire | |
| atelierDate | date de l'atelier | Date | YYYY-MM-DD | Obligatoire | |
| atelierDuree | duree de l'atelier | Numerique | hours | Obligatoire | |
| atelierNbPlace | nombre de place pour l'atelier | Numerique | | Obligatoire | |
| atelierIdPersonne | cle etrangere | Numerique | | Identifiant Automatique | |
| | | | | | |
| inscriptionDate | date d'inscription | Date | YYYY-MM-DD | | |
| inscriptionPresence | presence a l'atelier | Boolean | | | |
| inscriptionIdPersonne | cle etrangere | Numerique | | Identifiant Automatique | |
| inscriptionIdAtelier | cle etrangere | Numerique | | Identifiant Automatique | |

**Remarques générales**

- Obligation de créer une entité compétence car on ne doit mettre qu'une donnée/value par colonne.
- Création d'une entité inscription afin de pouvoir lier une personne avec un atelier sans surcharger ni atelier ni personne.
- Une seule entité personne plutôt que plusieurs entités clients, donateur, bénévole etc. Car chaque personne peut avoir tous ces rôles.
