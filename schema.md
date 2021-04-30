## arrete-permanent-circulation

Sch�ma des arr�t�s permanents de circulation

Sp�cification du fichier d'�change relatif aux arr�t�s permanents de circulation g�r�s par les collectivit�s.

- Sch�ma cr�� le : 04/30/21
- Site web : https://github.com/CEREMA/schema-arrete-circulation
- Version : 0.1.1
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"NC"`, `"N/A"`
- Cl� primaire�: `SECTION_REGL_ID`

### Mod�le de donn�es

|Nom|Type|Description|Exemple|Propri�t�s|
|-|-|-|-|-|
|SECTION_REGL_ID|cha�ne de caract�res|Identifiant unique de la ligne. La ligne correspond � la voie ou la section de voie r�glement�e. Ce peut �tre une voie enti�re (la D9) ou une portion de voie (voir champ `SECTION_DEBUT` et `SECTION_FIN`). L'identifiant peut tout simplement �tre un identifiant auto-incr�ment� (1, 2 ou 3,...). Si la section est issue d'OpenStreetMap, l'identifiant peut correspondre � la valeur osm_id de la voie r�glement�e (par exemple, 133). Si la section poss�de plusieurs r�glements, l'identifiant peut �tre accompagn� d'un suffixe incr�ment� (par exemple 133-2 pour le second r�glement associ� � la voie). Il peut �galement �tre un identifiant propre � une structure ou une base de donn�es (identifiant issu de la BDTOPO IGN, par exemple).|133-3|Valeur obligatoire, Valeur unique|
|COLL_NOM (Nom de la collectivit�)|cha�ne de caract�res|Nom de la collectivit�.|Commune d'Aix-en-Provence|Valeur obligatoire|
|COLL_SIRET (Code SIRET de la collectivit�)|cha�ne de caract�res|Identifiant du [Syst�me d'Identification du R�pertoire des Etablissements](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements) (SIRET) de la collectivit� sur le territoire de laquelle sont situ�s les �quipements collectifs publics r�pertori�s dans le jeu de donn�es. Il est compos� de 9 chiffres SIREN + 5 chiffres NIC d�un seul tenant.|22940028800010|Valeur obligatoire, Motif�: `^\d{14}$`|
|ARR_REF (R�f�rence de l'arr�t�)|cha�ne de caract�res|R�f�rence ou num�ro de l'arr�t� auquel se r�f�re la r�glementation. Si l'arr�t� a �t� mis � jour, la r�f�rence doit �tre celle de l'arr�t� mis � jour et non celle de l'arr�t� originel.|`AP-13090-12`|Valeur obligatoire|
|ARR_URL (URL d'acc�s de l'arr�t�)|cha�ne de caract�res|Adresse internet par laquelle acc�der � l'arr�t�, et donc au r�glement.|https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf|Valeur optionnelle, Motif�: `^(https|http)?://(?:[a-z0-9\-]+\.)+[a-z]{2,6}(?:/[^/#?]+)+`|
|ARR_OBJET (Objet de l'arr�t�)|cha�ne de caract�res|Objet ou titre de l'arr�t�|Arr�t� r�glementant la circulation dans le quartier Mazarin et du palais de Justice|Valeur optionnelle|
|ARR_CONSIDERANT (Consid�rant de l'arr�t�)|cha�ne de caract�res|Consid�rant est le justificatif de la mise en place de la r�glementation|Consid�rant la dangerosit� que repr�sente le trafic des PL aux abords des groupes scolaires|Valeur optionnelle|
|ARR_DATE_CREATION (Date de cr�ation de l'arr�t�)|date (format `%Y-%m-%d`)|Date de cr�ation ou de mise � jour de l'arr�t�, au format ISO 8601 AAAA-MM-DD.|2021-04-30|Valeur obligatoire|
|ARR_MAJ (Arr�t� mis � jour ?)|bool�en|Valeurs consid�r�es comme vraies : ['true', 'True', 'TRUE', '1', 'vrai', 'Vrai', 'VRAI']Valeurs consid�r�es comme fausses : ['false', 'False', 'FALSE', '0', 'faux', 'Faux', 'FAUX']Sp�cifie si l'arr�t� a �t� l'objet d'une mise � jour. Dans ce cas, remplir la nouvelle r�f�rence de l'arr�t� dans `ARR_REF`.|TRUE|Valeur obligatoire|
|ARR_INSEE (Code INSEE)|cha�ne de caract�res|Code INSEE de la commune sur laquelle s'applique l'arr�t�|75114|Valeur obligatoire, Taille minimale�: 5, Taille maximale�: 5, Motif�: `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`|
|REGL_ARTICLE (Article du r�glement)|nombre entier|N� de l'article associ� au r�glement lorsqu'il existe|4|Valeur optionnelle|
|REGL_SOUS_ARTICLE (Sous-article du r�glement)|cha�ne de caract�res|Un article peut se d�composer en plusieurs sous-articles, contenant chacun une r�glementation particuli�re. Ces sous-articles ont des num�rotations.|4 bis|Valeur optionnelle|
|REGL_MODALITE|cha�ne de caract�res|Modalit�|Autorise|Valeur obligatoire, Valeurs autoris�es�: Autorise, Interdit|
|ZONE_TYPE|cha�ne de caract�res|Type de zone|Quartier|Valeur optionnelle, Valeurs autoris�es�: Arrondissement, Commune enti�re, Zone � Faible �mission, Zone IRIS INSEE, Zone pi�tonne|
|ZONE_REF (Nom ou identifiant de la zone associ�e � la r�glementation)|cha�ne de caract�res|Nom ou identifiant de la zone associ�e � la r�glementation (nom du quartier, arrondissement, identifiant ZFE, identifiant IRIS...).|Quartier Mazarin|Valeur optionnelle|
|VEH_PTAC (Poids total autoris� en charge)|nombre r�el|Poids total autoris� en charge, exprim� en tonnes.|7.5|Valeur optionnelle, Valeur minimale�: 0, Valeur maximale�: 45|
|VEH_LONG (Longueur du v�hicule)|nombre r�el|Longueur maximale exprim�e en m�tres.|6.5|Valeur optionnelle, Valeur minimale�: 0, Valeur maximale�: 30|
|VEH_LARG (Largeur du Largeur)|nombre r�el|Longueur maximale exprim�e en m�tres.|3.5|Valeur optionnelle, Valeur minimale�: 0, Valeur maximale�: 6|
|VEH_HAUT (Largeur du Largeur)|nombre r�el|Longueur maximale exprim�e en m�tres.|2.5|Valeur optionnelle, Valeur minimale�: 0, Valeur maximale�: 6|
|VEH_TYPE|cha�ne de caract�res|Type de v�hicule|Poids lourds|Valeur optionnelle, Valeurs autoris�es�: Poids lourds, V�hicules utilitaires l�gers|
|VEH_USAGE (Type d'usage)|cha�ne de caract�res|Type d'usage du v�hicule|['Bennes � ordures m�nag�res', 'V�hicules de police']||
|VEH_MOTOR (Type de motorisation)|cha�ne de caract�res|Type de motorisation du v�hicule.|['�lectrique', 'Hydrog�ne']||
|VEH_CQA (Vignettes crit'air)|cha�ne de caract�res|Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr)|['1', '2', '3']||
|PERIODE_DEBUT (Date d'entr�e en vigueur des restrictions)|date|Date d'entr�e en vigueur des restrictions (en particulier pour les Zones � Faible �mission),, au format ISO 8601 AAAA-MM-DD.|2021-04-30|Valeur optionnelle|
|PERIODE_JH (Jours et heures de circulation)|cha�ne de caract�res|Jours et heures de circulation autoris�s pour la circulation exprim�s selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer aussi les jours f�ri�s (PH pour Public Holidays).|Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off|Valeur optionnelle|
|INTERV_DUREE (Dur�e maximale d'intervention)|heure|Dur�e maximale d'intervention (au niveau d'une aire pi�tonne, par exemple).|03:00:00|Valeur optionnelle|
|INTERV_HMAX (Heure maximale d'intervention)|heure|Heure max � partir de laquelle les v�hicules doivent quitter l'aire pi�tonne.|22:00:00|Valeur optionnelle|
|SECTION_VOIE (Nom de la voie)|cha�ne de caract�res|Nom de la voie associ�e � la section r�glement�e. 'NC' si application � une commune, une ZFE (etc...). Voir pour cela le champ `ZONE_TYPE`..|Avenue Philippe Solari|Valeur obligatoire, Motif�: `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`|
|SECTION_COTE (C�t� de la voie)|cha�ne de caract�res|C�t� de la voie associ� � la r�glementation. Pair : concerne la circulation le long des adresses � chiffre pair.|Deux c�t�s|Valeur optionnelle, Valeurs autoris�es�: Pair, Impair, Deux c�t�s|
|SECTION_DEBUT (D�but de la section)|cha�ne de caract�res|D�but de la section. Adresse ou coordonn�es GPS � partir desquelles la r�glementaton commence. Coordonn�es GPS conseill�es. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.|43.54007,5.44027|Valeur optionnelle|
|SECTION_FIN (Fin de la section)|cha�ne de caract�res|Fin de la section. Adresse ou coordonn�es GPS auxquelles la r�glementaton finit. Coordonn�es GPS conseill�es. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.|43.54007,5.44027|Valeur optionnelle|
|GEOM_JSON (G�om�trie)|G�oJSON|G�om�trie de la ligne au format [GeoJSON](https://fr.wikipedia.org/wiki/GeoJSON) (de l'anglais Geographic JSON, signifiant litt�ralement JSON g�ographique, est un format ouvert d'encodage d'ensemble de donn�es g�ospatiales simples utilisant la norme JSON (JavaScript Object Notation).|||
|GEOM_SOURCE|cha�ne de caract�res|Source de la g�om�trie|BDTOPO IGN 2021|Valeur optionnelle|
