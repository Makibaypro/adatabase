

Personne (<code style="color : red">id</code>, Nom, Prenom, Telephone, adherent) R1<br>

Benevole (<code style="color : purple">#idPersonne</code>, date) R2<br>

Competence (<code style="color : red">id</code>, Nom) R1<br>

Benevole/Competence (<code style="color : purple">#IdPersonne</code><code style="color : red">,</code><code style="color : purple">#IdCompetence</code>) R3<br>

Atelier (<code style="color : red">id</code>, Nom, Date, Duree, NbPlace, <code style="color : purple">#IdPersonne</code>) R2<br>

Objet (<code style="color : red">id</code>, Categorie, Etat, Poids, Status, PrixOrigine, PrixFinal, <code style="color : purple">#IdVente</code>, <code style="color : purple">#IdDepot</code>) R2<br>

Depot (<code style="color : red">id</code>, Date, Type, <code style="color : purple">#IdPersonne</code>) R2<br>

Vente (<code style="color : red">id</code>, Date, ModePaiement) R1<br>

Reparation (<code style="color : red">id</code>, Date, Durée, Résultat, <code style="color : purple">#IdObjet</code>, <code style="color : purple">#IdPersonne</code>) R2
