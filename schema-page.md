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
| [ID](#propri�t�-id) | cha�ne de caract�res  | Oui |
| [COLL_NOM](#nom-de-la-collectivit�---propri�t�-coll_nom) | cha�ne de caract�res  | Oui |
| [COLL_SIRET](#code-siret-de-la-collectivit�---propri�t�-coll_siret) | cha�ne de caract�res  | Oui |
| [ARR_REF](#r�f�rence-de-l'arr�t�---propri�t�-arr_ref) | cha�ne de caract�res  | Oui |
| [ARR_OBJET](#objet-de-l'arr�t�---propri�t�-arr_objet) | cha�ne de caract�res  | Oui |
| [ARR_CONSIDERANT](#consid�rant-de-l'arr�t�---propri�t�-arr_considerant) | cha�ne de caract�res  | Non |
| [ARR_DATE_CREATION](#date-de-cr�ation-de-l'arr�t�---propri�t�-arr_date_creation) | date (format `%Y-%m-%d`) | Oui |
| [ARR_EST_MAJ](#arr�t�-mis-�-jour-?---propri�t�-arr_est_maj) | bool�en  | Oui |
| [ARR_INSEE](#code-insee---propri�t�-arr_insee) | cha�ne de caract�res  | Oui |
| [ARR_URL](#url-d'acc�s-de-l'arr�t�---propri�t�-arr_url) | cha�ne de caract�res  | Non |
| [REGL_ARTICLE](#article-du-r�glement---propri�t�-regl_article) | nombre entier  | Non |
| [REGL_SOUS_ARTICLE](#sous-article-du-r�glement---propri�t�-regl_sous_article) | cha�ne de caract�res  | Non |
| [REGL_MODALITE](#propri�t�-regl_modalite) | cha�ne de caract�res  | Oui |
| [ZONE_TYPE](#propri�t�-zone_type) | cha�ne de caract�res  | Non |
| [ZONE_REF](#nom-ou-identifiant-de-la-zone-associ�e-�-la-r�glementation---propri�t�-zone_ref) | cha�ne de caract�res  | Non |
| [VEH_TYPE](#propri�t�-veh_type) | cha�ne de caract�res  | Non |
| [VEH_PTAC](#poids-total-autoris�-en-charge---propri�t�-veh_ptac) | nombre r�el  | Non |
| [VEH_LONG](#longueur-du-v�hicule---propri�t�-veh_long) | nombre r�el  | Non |
| [VEH_LARG](#largeur-du-largeur---propri�t�-veh_larg) | nombre r�el  | Non |
| [VEH_HAUT](#largeur-du-largeur---propri�t�-veh_haut) | nombre r�el  | Non |
| [VEH_USAGE](#type-d'usage---propri�t�-veh_usage) | cha�ne de caract�res  | Non |
| [VEH_MOTOR](#type-de-motorisation---propri�t�-veh_motor) | cha�ne de caract�res  | Non |
| [VEH_CQA](#vignettes-crit'air---propri�t�-veh_cqa) | cha�ne de caract�res  | Non |
| [PERIODE_DEBUT](#date-d'entr�e-en-vigueur-des-restrictions---propri�t�-periode_debut) | date (format `%Y-%m-%d`) | Non |
| [PERIODE_JH](#jours-et-heures-de-circulation---propri�t�-periode_jh) | cha�ne de caract�res  | Non |
| [INTERV_DUREE](#dur�e-maximale-d'intervention---propri�t�-interv_duree) | heure  | Non |
| [INTERV_HMAX](#heure-maximale-d'intervention---propri�t�-interv_hmax) | heure  | Non |
| [SECTION_VOIE](#nom-de-la-voie---propri�t�-section_voie) | cha�ne de caract�res  | Oui |
| [SECTION_COTE](#c�t�-de-la-voie---propri�t�-section_cote) | cha�ne de caract�res  | Non |
| [SECTION_DEBUT_POINT](#d�but-de-la-section---propri�t�-section_debut_point) | point g�ographique (format `default`) | Non |
| [SECTION_DEBUT_REF](#d�but-de-la-section-(texte)---propri�t�-section_debut_ref) | cha�ne de caract�res  | Non |
| [SECTION_FIN_POINT](#fin-de-la-section---propri�t�-section_fin_point) | point g�ographique (format `default`) | Non |
| [SECTION_FIN_REF](#fin-de-la-section-(texte)---propri�t�-section_fin_ref) | cha�ne de caract�res  | Non |
| [GEOM_JSON](#g�om�trie-au-format-geojson---propri�t�-geom_json) | G�oJSON (format `default`) | Non |
| [GEOM_WKT](#g�om�trie-au-format-wkt---propri�t�-geom_wkt) | cha�ne de caract�res  | Non |
| [GEOM_SOURCE](#propri�t�-geom_source) | cha�ne de caract�res  | Non |

#### Propri�t� `ID`

> *Description : Identifiant unique de l'entit� (ligne du tableau). L'entit� �l�mentaire correspond � une voie enti�re (par ex. `Avenue Philippe Solari`) ou une portion de voie (section) r�glement�e (voir les champs `SECTION_DEBUT` et `SECTION_FIN`). L'identifiant peut tout simplement �tre un identifiant auto-incr�ment� (1, 2 ou 3,...). Si la section est issue d'OpenStreetMap, l'identifiant peut correspondre � la valeur `osm_id` de la voie r�glement�e (par exemple, `133`). Si la section poss�de plusieurs r�glements, l'identifiant peut �tre accompagn� d'un suffixe incr�ment� (par exemple 133-2 pour le second r�glement associ� � la voie). Il peut �galement �tre un identifiant propre � une structure ou une base de donn�es (identifiant issu de la BDTOPO IGN, par exemple).<br/>Ex : 133-3*
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

> *Description : R�f�rence ou num�ro de l'arr�t� auquel se r�f�re la r�glementation. Si l'arr�t� a �t� mis � jour, la r�f�rence doit �tre celle de l'arr�t� mis � jour et non celle de l'arr�t� originel. Si l'arr�t� ne poss�de pas de r�f�rence, mettre le code INSEE accompagn� du mois et de l'ann�e de l'arr�t�, par ex. `13090-03/1979`<br/>Ex : AP-13090-12*
- Valeur obligatoire
- Type : cha�ne de caract�res

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

#### Arr�t� mis � jour ? - Propri�t� `ARR_EST_MAJ`

> *Description : Sp�cifie si l'arr�t� a �t� l'objet d'une mise � jour. Dans ce cas, remplir la nouvelle r�f�rence de l'arr�t� dans `ARR_REF`.<br/>Ex : TRUE*
- Valeur obligatoire
- Type : bool�en

#### Code INSEE - Propri�t� `ARR_INSEE`

> *Description : Code INSEE de la commune sur laquelle s'applique l'arr�t�<br/>Ex : 13090*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Entre 5 et 5 caract�res
- Motif : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`

#### URL d'acc�s de l'arr�t� - Propri�t� `ARR_URL`

> *Description : Adresse internet par laquelle acc�der � l'arr�t�, et donc au r�glement.<br/>Ex : https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `^(https|http)?://(?:[a-z0-9\-]+\.)+[a-z]{2,6}(?:/[^/#?]+)+`

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

#### Propri�t� `VEH_TYPE`

> *Description : Type de v�hicule<br/>Ex : Poids lourds*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - V�lo-cargos
    - Poids lourds
    - V�hicules utilitaires l�gers
    - Tous v�hicules

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

#### Type d'usage - Propri�t� `VEH_USAGE`

> *Description : Type d'usage du v�hicule. S�parer les valeurs par le caract�re '|'.<br/>Ex : Bennes � ordures m�nag�res|V�hicules de police*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `^(Autocars|Convois fun�raires|Bennes � ordures m�nag�res|Commer�ant nomade|Commer�ant s�dentaire|Desserte locale : d�m�nageur|Livraison|Poids lourds d'urgence|Professions m�dicales|Riverains|Services publics|Taxis|Transport de carburant|Transport de denr�es animales ou v�g�tales|Transport de fonds|Transport de gaz|Transport de mati�res dangereuses|Transports en commun|V�hicules de police|V�hicules de secours|V�hicules de travaux|V�hicules municipaux|V�hicules munis d'une autorisation|Voitures de transport avec chauffeur){1}(\|(Autocars|Convois fun�raires|Bennes � ordures m�nag�res|Commer�ant nomade|Commer�ant s�dentaire|Desserte locale : d�m�nageur|Livraison|Poids lourds d'urgence|Professions m�dicales|Riverains|Services publics|Taxis|Transport de carburant|Transport de denr�es animales ou v�g�tales|Transport de fonds|Transport de gaz|Transport de mati�res dangereuses|Transports en commun|V�hicules de police|V�hicules de secours|V�hicules de travaux|V�hicules municipaux|V�hicules munis d'une autorisation|Voitures de transport avec chauffeur)))*$`

#### Type de motorisation - Propri�t� `VEH_MOTOR`

> *Description : Type de motorisation du v�hicule. S�parer les valeurs par le caract�re '|'.<br/>Ex : �lectrique|Hydrog�ne*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `^(�lectrique|Gaz Naturel pour V�hicules|Hydrog�ne){1}(\|(�lectrique|Gaz Naturel pour V�hicules|Hydrog�ne))*$`

#### Vignettes crit'air - Propri�t� `VEH_CQA`

> *Description : Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr). S�parer les �tiquettes CQA par le caract�re '|'. 'NC' signifie que la valeur n'a pas �t� renseign�e.<br/>Ex : 1|2|3*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `^(100% �lectrique et V�hicules � hydrog�ne|1|2|3|4|5|V�hicule non class�){1}(\|(100% �lectrique et V�hicules � hydrog�ne|1|2|3|4|5|V�hicule non class�))*$`

#### Date d'entr�e en vigueur des restrictions - Propri�t� `PERIODE_DEBUT`

> *Description : Date d'entr�e en vigueur des restrictions (en particulier pour les Zones � Faible �mission),, au format ISO 8601 AAAA-MM-DD.<br/>Ex : 2021-04-30*
- Valeur optionnelle
- Type : date (format `%Y-%m-%d`)

#### Jours et heures de circulation - Propri�t� `PERIODE_JH`

> *Description : Jours et heures de circulation autoris�s pour la circulation exprim�s selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer les week-ends (we), les jours f�ri�s (PH) et les vacances scolaires (SH). Par exemple `Mo-Fr 09:00-17:00; PH 10:00-12:00; PH Su off` signifie : 'ouverture du lundi au vendredi de 9h � 17h sauf les jours f�ri�s o� l'ouverture est de 10h � 12h, � l'exception des jours f�ri�s tombant un dimanche'<br/>Ex : Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off*
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

> *Description : Nom de la voie associ�e � la section r�glement�e. 'NC' si application � une commune, une ZFE (etc...). Voir pour cela le champ `ZONE_TYPE`.<br/>Ex : Avenue Philippe Solari*
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

#### D�but de la section - Propri�t� `SECTION_DEBUT_POINT`

> *Description : Coordonn�es du point indiquant l'endroit o� commence la r�glementation sur la voie. A noter sous la forme 'long, lat', par exemple '43.53591,5.42101' ou '43.53591, 5.42101'. 5 ou 6 d�cimales sont conseill�es.<br/>Ex : None*
- Valeur optionnelle
- Type : point g�ographique (format `default`)

#### D�but de la section (texte) - Propri�t� `SECTION_DEBUT_REF`

> *Description : Indication de l'endroit � partir duquel la r�glementation s'applique, telle qu'�crite dans l'arr�t�. Par exemple, une adresse ou une indication textuelle : 'au croisement de la rue', 'depuis le rond-point'. Les coordonn�es GPS, elles, doivent �tre indiqu�es dans le champ `SECTION_DEBUT_POINT`.<br/>Ex : 22 avenue Philippe Solari*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Fin de la section - Propri�t� `SECTION_FIN_POINT`

> *Description : Point indiquant l'endroit o� commence la r�glementation sur la voie. A noter sous la forme 'long, lat', par exemple '43.53591,5.42101' ou '43.53591, 5.42101'. 5 ou 6 d�cimales sont conseill�es.<br/>Ex : None*
- Valeur optionnelle
- Type : point g�ographique (format `default`)

#### Fin de la section (texte) - Propri�t� `SECTION_FIN_REF`

> *Description : Indication de l'endroit jusqu'auquel la r�glementation s'applique, telle qu'�crite dans l'arr�t�. Par exemple, une adresse ou une indication textuelle : 'au croisement de la rue', 'depuis le rond-point'. Les coordonn�es GPS, elles, doivent �tre indiqu�es dans le champ `SECTION_DEBUT_POINT`.<br/>Ex : Croisement avec la rue Gaston de Saporta*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### G�om�trie au format GeoJSON - Propri�t� `GEOM_JSON`

> *Description : G�om�trie de la ligne exprim�e au format [GeoJSON](https://fr.wikipedia.org/wiki/GeoJSON)  sous le syst�me de projection WGS84 (EPSG:4326). Le GeoJSON, de l'anglais Geographic JSON, signifiant litt�ralement JSON g�ographique, est un format ouvert d'encodage d'ensemble de donn�es g�ospatiales simples utilisant la norme JSON (JavaScript Object Notation). Objet de type `LineString` souhait�. Sous PostGIS, on peut retrouver le GeoJSON d'une g�om�trie gr�ce � la fonction [ST_AsGeoJSON](https://postgis.net/docs/ST_AsGeoJSON.html). Vous avez aussi le choix de renseigner la g�om�trie au format WKT gr�ce au champ `GEOM_WKT`.<br/>Ex : { "type": "Feature", "geometry": { "type": "LineString", "coordinates": [ [102.0, 0.0], [103.0, 1.0], [104.0, 0.0], [105.0, 1.0] ] }*
- Valeur optionnelle
- Type : G�oJSON (format `default`)

#### G�om�trie au format WKT - Propri�t� `GEOM_WKT`

> *Description : G�om�trie de la ligne exprim�e au format [WKT (Well Know Text](https://fr.wikipedia.org/wiki/Well-known_text) sous le syst�me de projection WGS84 (EPSG:4326). Sous QGIS ou PostGIS, il est particuli�rement ais� de retrouver le WKT d'une g�om�trie (fonction `geom_to_wkt` sous QGIS et fonction [`ST_As_Text`](https://postgis.net/docs/ST_AsText.html) sous PostGIS). Vous avez aussi le choix de renseigner la g�om�trie au format GeoJSON gr�ce au champ `GEOM_JSON`.<br/>Ex : LineString (5.39340184 45.56538751, 5.41017215 45.56722934, 5.42510063 45.5679079)*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Propri�t� `GEOM_SOURCE`

> *Description : Source de la g�om�trie<br/>Ex : BDTOPO IGN 2021*
- Valeur optionnelle
- Type : cha�ne de caract�res
