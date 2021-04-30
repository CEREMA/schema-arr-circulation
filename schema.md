## arrete-permanent-circulation

Sch�ma des arr�t�s permanents de circulation

Sp�cification du fichier d'�change relatif aux arr�t�s permanents de circulation g�r�s par les collectivit�s.

- Sch�ma cr�� le : 04/30/21
- Site web : https://github.com/CEREMA/schema-arrete-circulation
- Version : 0.1.1
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"NC"`, `"N/A"`
- Cl� primaire�: `SECTION_REGL_ID`

### Mod�le de donn�es


##### Liste des propri�t�s

| Propri�t� | Type | Obligatoire |
| -- | -- | -- |
| [SECTION_REGL_ID](#propri�t�-section_regl_id) | cha�ne de caract�res  | Oui |
| [COLL_NOM](#nom-de-la-collectivit�---propri�t�-coll_nom) | cha�ne de caract�res  | Oui |
| [COLL_SIRET](#code-siret-de-la-collectivit�---propri�t�-coll_siret) | cha�ne de caract�res  | Oui |
| [ARR_REF](#r�f�rence-de-l'arr�t�---propri�t�-arr_ref) | cha�ne de caract�res  | Oui |
| [ARR_URL](#url-d'acc�s-de-l'arr�t�---propri�t�-arr_url) | cha�ne de caract�res  | Non |
| [ARR_OBJET](#objet-de-l'arr�t�---propri�t�-arr_objet) | cha�ne de caract�res  | Oui |
| [ARR_CONSIDERANT](#consid�rant-de-l'arr�t�---propri�t�-arr_considerant) | cha�ne de caract�res  | Non |
| [ARR_DATE_CREATION](#date-de-cr�ation-de-l'arr�t�---propri�t�-arr_date_creation) | date (format `%Y-%m-%d`) | Oui |
| [ARR_MAJ](#arr�t�-mis-�-jour-?---propri�t�-arr_maj) | bool�en  | Oui |
| [ARR_INSEE](#code-insee---propri�t�-arr_insee) | cha�ne de caract�res  | Oui |
| [REGL_ARTICLE](#article-du-r�glement---propri�t�-regl_article) | nombre entier  | Non |
| [REGL_SOUS_ARTICLE](#sous-article-du-r�glement---propri�t�-regl_sous_article) | cha�ne de caract�res  | Non |
| [REGL_MODALITE](#propri�t�-regl_modalite) | cha�ne de caract�res  | Oui |
| [ZONE_TYPE](#propri�t�-zone_type) | cha�ne de caract�res  | Non |
| [ZONE_REF](#nom-ou-identifiant-de-la-zone-associ�e-�-la-r�glementation---propri�t�-zone_ref) | cha�ne de caract�res  | Non |
| [VEH_PTAC](#poids-total-autoris�-en-charge---propri�t�-veh_ptac) | nombre r�el  | Non |
| [VEH_LONG](#longueur-du-v�hicule---propri�t�-veh_long) | nombre r�el  | Non |
| [VEH_LARG](#largeur-du-largeur---propri�t�-veh_larg) | nombre r�el  | Non |
| [VEH_HAUT](#largeur-du-largeur---propri�t�-veh_haut) | nombre r�el  | Non |
| [VEH_TYPE](#propri�t�-veh_type) | cha�ne de caract�res  | Non |
| [VEH_USAGE](#type-d'usage---propri�t�-veh_usage) | cha�ne de caract�res  | Non |
| [VEH_MOTOR](#type-de-motorisation---propri�t�-veh_motor) | cha�ne de caract�res  | Non |
| [VEH_CQA](#vignettes-crit'air---propri�t�-veh_cqa) | cha�ne de caract�res  | Non |
| [PERIODE_DEBUT](#date-d'entr�e-en-vigueur-des-restrictions---propri�t�-periode_debut) | date  | Non |
| [PERIODE_JH](#jours-et-heures-de-circulation---propri�t�-periode_jh) | cha�ne de caract�res  | Non |
| [INTERV_DUREE](#dur�e-maximale-d'intervention---propri�t�-interv_duree) | heure  | Non |
| [INTERV_HMAX](#heure-maximale-d'intervention---propri�t�-interv_hmax) | heure  | Non |
| [SECTION_VOIE](#nom-de-la-voie---propri�t�-section_voie) | cha�ne de caract�res  | Oui |
| [SECTION_COTE](#c�t�-de-la-voie---propri�t�-section_cote) | cha�ne de caract�res  | Non |
| [SECTION_DEBUT](#d�but-de-la-section---propri�t�-section_debut) | cha�ne de caract�res  | Non |
| [SECTION_FIN](#fin-de-la-section---propri�t�-section_fin) | cha�ne de caract�res  | Non |
| [GEOM_JSON](#g�om�trie---propri�t�-geom_json) | G�oJSON (format `default`) | Non |
| [GEOM_SOURCE](#propri�t�-geom_source) | cha�ne de caract�res  | Non |

#### Propri�t� `SECTION_REGL_ID`

> *Description : Identifiant unique de la ligne. La ligne correspond � la voie ou la section de voie r�glement�e. Ce peut �tre une voie enti�re (la D9) ou une portion de voie (voir champ `SECTION_DEBUT` et `SECTION_FIN`). L'identifiant peut tout simplement �tre un identifiant auto-incr�ment� (1, 2 ou 3,...). Si la section est issue d'OpenStreetMap, l'identifiant peut correspondre � la valeur osm_id de la voie r�glement�e (par exemple, 133). Si la section poss�de plusieurs r�glements, l'identifiant peut �tre accompagn� d'un suffixe incr�ment� (par exemple 133-2 pour le second r�glement associ� � la voie). Il peut �galement �tre un identifiant propre � une structure ou une base de donn�es (identifiant issu de la BDTOPO IGN, par exemple).<br/>Ex : 133-3*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Nom de la collectivit� - Propri�t� `COLL_NOM`

> *Description : Nom de la collectivit�.<br/>Ex : Commune d'Aix-en-Provence*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Code SIRET de la collectivit� - Propri�t� `COLL_SIRET`

> *Description : Identifiant du [Syst�me d'Identification du R�pertoire des Etablissements](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements) (SIRET) de la collectivit� sur le territoire de laquelle sont situ�s les �quipements collectifs publics r�pertori�s dans le jeu de donn�es. Il est compos� de 9 chiffres SIREN + 5 chiffres NIC d�un seul tenant.<br/>Ex : 22940028800010*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Motif : `^\d{14}$`

#### R�f�rence de l'arr�t� - Propri�t� `ARR_REF`

> *Description : R�f�rence ou num�ro de l'arr�t� auquel se r�f�re la r�glementation. Si l'arr�t� a �t� mis � jour, la r�f�rence doit �tre celle de l'arr�t� mis � jour et non celle de l'arr�t� originel.<br/>Ex : AP-13090-12*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### URL d'acc�s de l'arr�t� - Propri�t� `ARR_URL`

> *Description : Adresse internet par laquelle acc�der � l'arr�t�, et donc au r�glement.<br/>Ex : https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `^(https|http)?://(?:[a-z0-9\-]+\.)+[a-z]{2,6}(?:/[^/#?]+)+`

#### Objet de l'arr�t� - Propri�t� `ARR_OBJET`

> *Description : Objet ou titre de l'arr�t�<br/>Ex : Arr�t� r�glementant la circulation dans le quartier Mazarin et du palais de Justice*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Consid�rant de l'arr�t� - Propri�t� `ARR_CONSIDERANT`

> *Description : Consid�rant est le justificatif de la mise en place de la r�glementation<br/>Ex : Consid�rant la dangerosit� que repr�sente le trafic des PL aux abords des groupes scolaires*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Date de cr�ation de l'arr�t� - Propri�t� `ARR_DATE_CREATION`

> *Description : Date de cr�ation ou de mise � jour de l'arr�t�, au format ISO 8601 AAAA-MM-DD.<br/>Ex : 2021-04-30*
- Valeur obligatoire
- Type : date (format `%Y-%m-%d`)

#### Arr�t� mis � jour ? - Propri�t� `ARR_MAJ`

> *Description : Sp�cifie si l'arr�t� a �t� l'objet d'une mise � jour. Dans ce cas, remplir la nouvelle r�f�rence de l'arr�t� dans `ARR_REF`.<br/>Ex : TRUE*
- Valeur obligatoire
- Type : bool�en

#### Code INSEE - Propri�t� `ARR_INSEE`

> *Description : Code INSEE de la commune sur laquelle s'applique l'arr�t�<br/>Ex : 75114*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Entre 5 et 5 caract�res
- Motif : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`

#### Article du r�glement - Propri�t� `REGL_ARTICLE`

> *Description : N� de l'article associ� au r�glement lorsqu'il existe<br/>Ex : 4*
- Valeur optionnelle
- Type : nombre entier

#### Sous-article du r�glement - Propri�t� `REGL_SOUS_ARTICLE`

> *Description : Un article peut se d�composer en plusieurs sous-articles, contenant chacun une r�glementation particuli�re. Ces sous-articles ont des num�rotations.<br/>Ex : 4 bis*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Propri�t� `REGL_MODALITE`

> *Description : Modalit�<br/>Ex : Autorise*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - Autorise
    - Interdit

#### Propri�t� `ZONE_TYPE`

> *Description : Type de zone<br/>Ex : Quartier*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - Arrondissement
    - Commune enti�re
    - Zone � Faible �mission
    - Zone IRIS INSEE
    - Zone pi�tonne

#### Nom ou identifiant de la zone associ�e � la r�glementation - Propri�t� `ZONE_REF`

> *Description : Nom ou identifiant de la zone associ�e � la r�glementation (nom du quartier, arrondissement, identifiant ZFE, identifiant IRIS...).<br/>Ex : Quartier Mazarin*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Poids total autoris� en charge - Propri�t� `VEH_PTAC`

> *Description : Poids total autoris� en charge, exprim� en tonnes.<br/>Ex : 7.5*
- Valeur optionnelle
- Type : nombre r�el
- Valeur entre 0 et 45

#### Longueur du v�hicule - Propri�t� `VEH_LONG`

> *Description : Longueur maximale exprim�e en m�tres.<br/>Ex : 6.5*
- Valeur optionnelle
- Type : nombre r�el
- Valeur entre 0 et 30

#### Largeur du Largeur - Propri�t� `VEH_LARG`

> *Description : Longueur maximale exprim�e en m�tres.<br/>Ex : 3.5*
- Valeur optionnelle
- Type : nombre r�el
- Valeur entre 0 et 6

#### Largeur du Largeur - Propri�t� `VEH_HAUT`

> *Description : Longueur maximale exprim�e en m�tres.<br/>Ex : 2.5*
- Valeur optionnelle
- Type : nombre r�el
- Valeur entre 0 et 6

#### Propri�t� `VEH_TYPE`

> *Description : Type de v�hicule<br/>Ex : Poids lourds*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - Poids lourds
    - V�hicules utilitaires l�gers

#### Type d'usage - Propri�t� `VEH_USAGE`

> *Description : Type d'usage du v�hicule<br/>Ex : ['Bennes � ordures m�nag�res', 'V�hicules de police']*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Type de motorisation - Propri�t� `VEH_MOTOR`

> *Description : Type de motorisation du v�hicule.<br/>Ex : ['�lectrique', 'Hydrog�ne']*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Vignettes crit'air - Propri�t� `VEH_CQA`

> *Description : Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr)<br/>Ex : ['1', '2', '3']*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Date d'entr�e en vigueur des restrictions - Propri�t� `PERIODE_DEBUT`

> *Description : Date d'entr�e en vigueur des restrictions (en particulier pour les Zones � Faible �mission),, au format ISO 8601 AAAA-MM-DD.<br/>Ex : 2021-04-30*
- Valeur optionnelle
- Type : date

#### Jours et heures de circulation - Propri�t� `PERIODE_JH`

> *Description : Jours et heures de circulation autoris�s pour la circulation exprim�s selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer aussi les jours f�ri�s (PH pour Public Holidays).<br/>Ex : Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Dur�e maximale d'intervention - Propri�t� `INTERV_DUREE`

> *Description : Dur�e maximale d'intervention (au niveau d'une aire pi�tonne, par exemple).<br/>Ex : 03:00:00*
- Valeur optionnelle
- Type : heure

#### Heure maximale d'intervention - Propri�t� `INTERV_HMAX`

> *Description : Heure max � partir de laquelle les v�hicules doivent quitter l'aire pi�tonne.<br/>Ex : 22:00:00*
- Valeur optionnelle
- Type : heure

#### Nom de la voie - Propri�t� `SECTION_VOIE`

> *Description : Nom de la voie associ�e � la section r�glement�e. 'NC' si application � une commune, une ZFE (etc...). Voir pour cela le champ `ZONE_TYPE`..<br/>Ex : Avenue Philippe Solari*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Motif : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`

#### C�t� de la voie - Propri�t� `SECTION_COTE`

> *Description : C�t� de la voie associ� � la r�glementation. Pair : concerne la circulation le long des adresses � chiffre pair.<br/>Ex : Deux c�t�s*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - Pair
    - Impair
    - Deux c�t�s

#### D�but de la section - Propri�t� `SECTION_DEBUT`

> *Description : D�but de la section. Adresse ou coordonn�es GPS � partir desquelles la r�glementaton commence. Coordonn�es GPS conseill�es. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.<br/>Ex : 43.54007,5.44027*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Fin de la section - Propri�t� `SECTION_FIN`

> *Description : Fin de la section. Adresse ou coordonn�es GPS auxquelles la r�glementaton finit. Coordonn�es GPS conseill�es. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.<br/>Ex : 43.54007,5.44027*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### G�om�trie - Propri�t� `GEOM_JSON`

> *Description : G�om�trie de la ligne au format [GeoJSON](https://fr.wikipedia.org/wiki/GeoJSON) (de l'anglais Geographic JSON, signifiant litt�ralement JSON g�ographique, est un format ouvert d'encodage d'ensemble de donn�es g�ospatiales simples utilisant la norme JSON (JavaScript Object Notation).<br/>Ex : None*
- Valeur optionnelle
- Type : G�oJSON (format `default`)

#### Propri�t� `GEOM_SOURCE`

> *Description : Source de la g�om�trie<br/>Ex : BDTOPO IGN 2021*
- Valeur optionnelle
- Type : cha�ne de caract�res
