## arrete-circulation-marchandises

Sch�ma des arr�t�s permanents de circulation pour le transport de marchandises

Sp�cification du fichier d'�change relatif aux arr�t�s permanents de circulation pour le transport de marchandises g�r�s par les collectivit�s.

- Sch�ma cr�� le : 04/30/21
- Site web : https://github.com/CEREMA/schema-arrete-circulation
- Version : 0.1.1
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Cl� primaire�: `ID`

### Mod�le de donn�es


##### Liste des propri�t�s

| Propri�t� | Type | Obligatoire |
| -- | -- | -- |
| [ID](#identifiant-de-l'entit�---propri�t�-id) | cha�ne de caract�res  | Oui |
| [COLL_NOM](#nom-de-la-collectivit�-�-l'origine-de-l'arr�t�---propri�t�-coll_nom) | cha�ne de caract�res  | Oui |
| [ARR_INSEE](#code-insee---propri�t�-arr_insee) | cha�ne de caract�res  | Oui |
| [ARR_DATE](#date-de-l'arr�t�---propri�t�-arr_date) | date (format `%Y-%m-%d`) | Oui |
| [ARR_REF](#r�f�rence-de-l'arr�t�---propri�t�-arr_ref) | cha�ne de caract�res  | Oui |
| [ARR_OBJET](#objet-de-l'arr�t�---propri�t�-arr_objet) | cha�ne de caract�res  | Oui |
| [ARR_CONSIDERANT](#consid�rant-de-l'arr�t�---propri�t�-arr_considerant) | cha�ne de caract�res  | Non |
| [ARR_URL](#adresse-internet-de-l'arr�t�---propri�t�-arr_url) | cha�ne de caract�res (format `uri`) | Non |
| [REGL_ARTICLE](#article-du-r�glement---propri�t�-regl_article) | nombre entier  | Non |
| [REGL_SOUS_ARTICLE](#sous-article-du-r�glement---propri�t�-regl_sous_article) | cha�ne de caract�res  | Non |
| [REGL_MODALITE](#modalit�-du-r�glement---propri�t�-regl_modalite) | cha�ne de caract�res  | Oui |
| [VEH_TYPES](#types-de-v�hicules---propri�t�-veh_types) | cha�ne de caract�res  | Non |
| [VEH_PTAC](#poids-total-autoris�-en-charge---propri�t�-veh_ptac) | nombre r�el  | Non |
| [VEH_LONG](#longueur-du-v�hicule---propri�t�-veh_long) | nombre r�el  | Non |
| [VEH_LARG](#largeur-du-v�hicule---propri�t�-veh_larg) | nombre r�el  | Non |
| [VEH_HAUT](#hauteur-du-v�hicule---propri�t�-veh_haut) | nombre r�el  | Non |
| [VEH_USAGES](#types-d'usage---propri�t�-veh_usages) | cha�ne de caract�res  | Non |
| [VEH_MOTORS](#types-de-motorisation---propri�t�-veh_motors) | cha�ne de caract�res  | Non |
| [VEH_CQAS](#vignettes-crit'air---propri�t�-veh_cqas) | cha�ne de caract�res  | Non |
| [PERIODE_DEBUT](#date-d'entr�e-en-vigueur-des-restrictions---propri�t�-periode_debut) | date (format `%Y-%m-%d`) | Non |
| [PERIODE_JH](#jours-et-heures-de-circulation---propri�t�-periode_jh) | cha�ne de caract�res  | Non |
| [EMPRISE_DESIGNATION](#nom-de-la-voie---propri�t�-emprise_designation) | cha�ne de caract�res  | Oui |
| [EMPRISE_DEBUT](#d�but-de-la-section---propri�t�-emprise_debut) | cha�ne de caract�res  | Non |
| [EMPRISE_FIN](#fin-de-la-section---propri�t�-emprise_fin) | cha�ne de caract�res  | Non |
| [EMPRISE_SENS](#direction-ou-sens-de-circulation---propri�t�-emprise_sens) | cha�ne de caract�res  | Non |
| [INTERV_DUREE](#dur�e-maximale-d'intervention---propri�t�-interv_duree) | heure  | Non |
| [INTERV_HMAX](#heure-maximale-d'intervention---propri�t�-interv_hmax) | heure  | Non |
| [GEOM_WKT](#g�om�trie-au-format-wkt---propri�t�-geom_wkt) | cha�ne de caract�res  | Non |
| [GEOM_SOURCE](#source-de-la-g�om�trie---propri�t�-geom_source) | cha�ne de caract�res  | Non |

#### Identifiant de l'entit� - Propri�t� `ID`

> *Description : Il s'agit de l'identifiant de l'entit� (ou ligne du tableau). Ce dernier doit �tre unique. L'entit� �l�mentaire correspond � une voie enti�re r�glement�e (par ex. `Avenue Philippe Solari`) ou une portion de celle-ci (voir les champs `SECTION_DEBUT` et `SECTION_FIN`). L'identifiant peut tout simplement �tre auto-incr�ment� (1, 2 ou 3,...). Il peut correspondre � la valeur `osm_id` de la voie r�glement�e (par exemple, `133`). Il peut �galement �tre un identifiant propre � une structure ou � une autre base de donn�es (identifiant issu de la BDTOPO IGN, par exemple). [Vous pouvez cr�er des identifiants gr�ce � l'application Heidi d'Etalab](https://heidi.app.etalab.studio/).<br/>Ex : 133-3*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Nom de la collectivit� � l'origine de l'arr�t� - Propri�t� `COLL_NOM`

> *Description : Nom de la collectivit�.<br/>Ex : Commune d'Aix-en-Provence*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Code INSEE - Propri�t� `ARR_INSEE`

> *Description : Code INSEE de la commune sur laquelle s'applique l'arr�t�<br/>Ex : 13090*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Entre 5 et 5 caract�res
- Motif : `^([013-9]\d|2[AB1-9])\d{3}$`

#### Date de l'arr�t� - Propri�t� `ARR_DATE`

> *Description : Date de cr�ation ou de mise � jour de l'arr�t�, au format ISO 8601 AAAA-MM-DD. Mettre `NC` si pas d'indication dans l'arr�t�<br/>Ex : 2021-04-30*
- Valeur obligatoire
- Type : date (format `%Y-%m-%d`)

#### R�f�rence de l'arr�t� - Propri�t� `ARR_REF`

> *Description : R�f�rence ou num�ro de l'arr�t� auquel se r�f�re la r�glementation. Si l'arr�t� a �t� mis � jour, la r�f�rence doit �tre celle de l'arr�t� mis � jour et non celle de l'arr�t� originel. Si l'arr�t� ne poss�de pas de r�f�rence, mettre la valeur `NC`<br/>Ex : AP-13090-12*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Objet de l'arr�t� - Propri�t� `ARR_OBJET`

> *Description : Objet ou titre de l'arr�t�. Mettre `NC` si l'arr�t� ne comprend pas d'objet.<br/>Ex : Arr�t� r�glementant la circulation dans le quartier Mazarin et du palais de Justice*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Consid�rant de l'arr�t� - Propri�t� `ARR_CONSIDERANT`

> *Description : Consid�rant est le justificatif de la mise en place de la r�glementation<br/>Ex : Consid�rant la dangerosit� que repr�sente le trafic des PL aux abords des groupes scolaires*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Adresse internet de l'arr�t� - Propri�t� `ARR_URL`

> *Description : Adresse internet par laquelle acc�der � l'arr�t�, et donc au r�glement.<br/>Ex : https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf*
- Valeur optionnelle
- Type : cha�ne de caract�res (format `uri`)

#### Article du r�glement - Propri�t� `REGL_ARTICLE`

> *Description : N� de l'article associ� au r�glement lorsqu'il existe<br/>Ex : 4*
- Valeur optionnelle
- Type : nombre entier

#### Sous-article du r�glement - Propri�t� `REGL_SOUS_ARTICLE`

> *Description : Un article peut se d�composer en plusieurs sous-articles, contenant chacun une r�glementation particuli�re. Ces sous-articles ont des num�rotations.<br/>Ex : 4 bis*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Modalit� du r�glement - Propri�t� `REGL_MODALITE`

> *Description : Indique si l'arr�t� interdit ou autorise<br/>Ex : Autorise*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - Autorise
    - Interdit

#### Types de v�hicules - Propri�t� `VEH_TYPES`

> *Description : Types de v�hicules. S�parer les valeurs par le caract�re '|'<br/>Ex : Poids lourds|V�hicules utilitaires l�gers*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `(?:(?:^|\|)(Poids lourds|V�hicules utilitaires l�gers|V�lo-cargos|Tous v�hicules))+$`

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

#### Largeur du v�hicule - Propri�t� `VEH_LARG`

> *Description : Longueur maximale exprim�e en m�tres.<br/>Ex : 3.5*
- Valeur optionnelle
- Type : nombre r�el
- Valeur entre 0 et 6

#### Hauteur du v�hicule - Propri�t� `VEH_HAUT`

> *Description : Longueur maximale exprim�e en m�tres.<br/>Ex : 2.5*
- Valeur optionnelle
- Type : nombre r�el
- Valeur entre 0 et 6

#### Types d'usage - Propri�t� `VEH_USAGES`

> *Description : Types d'usage de v�hicule. S�parer les valeurs par le caract�re '|'<br/>Ex : Bennes � ordures m�nag�res|V�hicules de police*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Types de motorisation - Propri�t� `VEH_MOTORS`

> *Description : Types de motorisation. S�parer les valeurs par le caract�re '|'<br/>Ex : �lectrique|Hydrog�ne*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `(?:(?:^|\|)(Electrique|Gaz Naturel pour V�hicules|Hydrog�ne))+$`

#### Vignettes crit'air - Propri�t� `VEH_CQAS`

> *Description : Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr). S�parer les �tiquettes CQA par le caract�re '|'<br/>Ex : 1|2|3*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `(?:(?:^|\|)(100% �lectrique et V�hicules � hydrog�ne|1|2|3|4|5|V�hicule non class�))+$`

#### Date d'entr�e en vigueur des restrictions - Propri�t� `PERIODE_DEBUT`

> *Description : Date d'entr�e en vigueur des restrictions (en particulier pour les Zones � Faible �mission), au format ISO 8601 AAAA-MM-DD.<br/>Ex : 2021-04-30*
- Valeur optionnelle
- Type : date (format `%Y-%m-%d`)

#### Jours et heures de circulation - Propri�t� `PERIODE_JH`

> *Description : Jours et heures de circulation autoris�s pour la circulation exprim�s selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer les week-ends (we), les jours f�ri�s (PH) et les vacances scolaires (SH). Par exemple `Mo-Fr 09:00-17:00; PH 10:00-12:00; PH Su off` signifie : 'Du lundi au vendredi de 9h � 17h sauf les jours f�ri�s o� l'ouverture est de 10h � 12h, � l'exception des jours f�ri�s tombant un dimanche'. `24/7` indique `Tous les jours`. [Utiliser groom-groom pour r�cup�rer les jours et heures de circulation](https://cerema-med.shinyapps.io/groom-groom?action=opening_hours)<br/>Ex : Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `((?:(?:^|;\s?)(((((Mo|Tu|We|Th|Fr|Sa|Su|PH|SH)|(?:(?:|,)(Mo|Tu|We|Th|Fr|Sa|Su))+|((Mo|Tu|We|Th|Fr|Sa|Su)-(Mo|Tu|We|Th|Fr|Sa|Su))))\s((([0-1][0-9]|2[0-4]):([0-5][0-9]))-(([0-1][0-9]|2[0-4]):([0-5][0-9]))(,(([0-1][0-9]|2[0-4]):([0-5][0-9]))-(([0-1][0-9]|2[0-4]):([0-5][0-9])))?))|((Mo|Tu|We|Th|Fr|Sa|Su|PH|SH) off)|(sunrise-sunset)))+$|(24/7))`

#### Nom de la voie - Propri�t� `EMPRISE_DESIGNATION`

> *Description : Nom de la voie, ou de la zone associ�e � la section r�glement�e. La zone peut �tre une aire pi�tonne, un quartier, une zone ZFE ([voir le sch�ma des ZFE](https://schema.data.gouv.fr/etalab/schema-zfe/latest.html))<br/>Ex : Avenue Philippe Solari, Commune d'Aix-en-Provence, Quartier Mazarin, 200046977-ZFE-001*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Motif : `^[a-zA-Z0-9\-\�\'\�\s\d\u00C0-\u00FF\(\)]+$`

#### D�but de la section - Propri�t� `EMPRISE_DEBUT`

> *Description : Indication de l'endroit � partir duquel la r�glementation s'applique, telle qu'�crite dans l'arr�t�. Ou bien coordonn�es GPS de l'endroit, � noter sous la forme 'long, lat' (5 ou 6 d�cimales sont conseill�es).<br/>Ex : 22 avenue Philippe Solari, Croisement de l'avenue Philippe Solari avec la rue Gaston de Saporta, 43.53591,5.42101*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Fin de la section - Propri�t� `EMPRISE_FIN`

> *Description : Indication de l'endroit au bout duquel la r�glementation s'applique, telle qu'�crite dans l'arr�t�. Ou bien coordonn�es GPS de l'endroit, � noter sous la forme 'long, lat' (5 ou 6 d�cimales sont conseill�es).<br/>Ex : 22 avenue Philippe Solari, Croisement de l'avenue Philippe Solari avec la rue Gaston de Saporta*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Direction ou sens de circulation - Propri�t� `EMPRISE_SENS`

> *Description : Direction ou sens de circulation associ� � la r�glementation. Pair : concerne la circulation le long des adresses � chiffre pair. `Nord` signifie vers le Nord, soit "vers le haut".<br/>Ex : Deux sens, Impair, Nord*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - Pair
    - Impair
    - Nord
    - Sud
    - Est
    - Ouest
    - Deux sens

#### Dur�e maximale d'intervention - Propri�t� `INTERV_DUREE`

> *Description : Dur�e maximale d'intervention (au niveau d'une aire pi�tonne, par exemple). L'entr�e et la sortie dans une zone peuvent �tre horodat�es � la d�livrance d'un ticket lors de la travers�e d'une borne de passage.<br/>Ex : 03:00:00*
- Valeur optionnelle
- Type : heure

#### Heure maximale d'intervention - Propri�t� `INTERV_HMAX`

> *Description : Heure max � partir de laquelle les v�hicules doivent quitter l'aire pi�tonne.<br/>Ex : 22:00:00*
- Valeur optionnelle
- Type : heure

#### G�om�trie au format WKT - Propri�t� `GEOM_WKT`

> *Description : G�om�trie de la ligne exprim�e au format [WKT (Well Know Text](https://fr.wikipedia.org/wiki/Well-known_text) sous le syst�me de projection WGS84 (EPSG:4326)<br/>Ex : LineString (5.39340184 45.56538751, 5.41017215 45.56722934, 5.42510063 45.5679079)*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `(MULTI|multi)?(LINESTRING|linestring)\(((|,\s?)\(((|,\s?)(-?[0-9](\.[0-9]+)?\s-?[0-9](\.[0-9]+)?))+\))+\)`

#### Source de la g�om�trie - Propri�t� `GEOM_SOURCE`

> *Description : Source de la donn�e depuis laquelle la donn�e a �t� extraite (OpenStreetMap, IGN,...).<br/>Ex : BDTOPO IGN 2021*
- Valeur optionnelle
- Type : cha�ne de caract�res
