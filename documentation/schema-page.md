## arrete-circulation-marchandises

Arr�t�s permanents de circulation pour le transport de marchandises

Sp�cification du fichier d'�change relatif aux arr�t�s permanents de circulation pour le transport de marchandises g�r�s par les collectivit�s.

- Sch�ma cr�� le : 04/30/21
- Site web : https://github.com/CEREMA/schema-arrete-circulation
- Version : 0.8.0
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Cl� primaire�: `ID`

### Mod�le de donn�es


##### Liste des propri�t�s

| Propri�t� | Type | Obligatoire |
| -- | -- | -- |
| [ID](#identifiant-de-l'entit�---propri�t�-id) | cha�ne de caract�res  | Oui |
| [COLL_NOM](#nom-de-la-collectivit�-�-l'origine-de-l'arr�t�---propri�t�-coll_nom) | cha�ne de caract�res  | Oui |
| [COLL_INSEE](#code-insee---propri�t�-coll_insee) | cha�ne de caract�res  | Oui |
| [ARR_DATE](#date-de-l'arr�t�---propri�t�-arr_date) | date (format `%Y-%m-%d`) | Oui |
| [ARR_REF](#r�f�rence-de-l'arr�t�---propri�t�-arr_ref) | cha�ne de caract�res  | Oui |
| [ARR_OBJET](#objet-de-l'arr�t�---propri�t�-arr_objet) | cha�ne de caract�res  | Oui |
| [ARR_CONSIDERANT](#consid�rant-de-l'arr�t�---propri�t�-arr_considerant) | cha�ne de caract�res  | Non |
| [ARR_URL](#adresse-internet-de-l'arr�t�---propri�t�-arr_url) | cha�ne de caract�res (format `uri`) | Non |
| [REGL_ARTICLE](#article-du-r�glement---propri�t�-regl_article) | cha�ne de caract�res  | Non |
| [REGL_SOUS_ARTICLE](#sous-article-du-r�glement---propri�t�-regl_sous_article) | cha�ne de caract�res  | Non |
| [REGL_CONTEXTE](#contexte---propri�t�-regl_contexte) | cha�ne de caract�res  | Non |
| [REGL_MODALITE](#modalit�-du-r�glement---propri�t�-regl_modalite) | cha�ne de caract�res  | Oui |
| [VEH_TYPES](#types-de-v�hicules---propri�t�-veh_types) | cha�ne de caract�res  | Non |
| [VEH_TONNAGE_MODALITE](#indication-sur-le-tonnage---propri�t�-veh_tonnage_modalite) | cha�ne de caract�res  | Non |
| [VEH_TONNAGE](#tonnage---propri�t�-veh_tonnage) | nombre r�el  | Non |
| [VEH_USAGES](#types-d'usage---propri�t�-veh_usages) | cha�ne de caract�res  | Non |
| [SAUF_VEH_USAGES](#exceptions-sur-les-usages-accept�s-ou-interdits---propri�t�-sauf_veh_usages) | cha�ne de caract�res  | Non |
| [VEH_LONG](#longueur-du-v�hicule---propri�t�-veh_long) | nombre r�el  | Non |
| [VEH_LARG](#largeur-du-v�hicule---propri�t�-veh_larg) | nombre r�el  | Non |
| [VEH_HAUT](#hauteur-du-v�hicule---propri�t�-veh_haut) | nombre r�el  | Non |
| [VEH_MOTORS](#types-de-motorisation---propri�t�-veh_motors) | cha�ne de caract�res  | Non |
| [VEH_CQAS](#vignettes-crit'air---propri�t�-veh_cqas) | cha�ne de caract�res  | Non |
| [PERIODE_JH](#jours-et-heures-de-circulation---propri�t�-periode_jh) | cha�ne de caract�res  | Non |
| [PERIODE_DEBUT](#entr�e-en-vigueur-des-restrictions---propri�t�-periode_debut) | cha�ne de caract�res  | Non |
| [PERIODE_FIN](#fin-des-restrictions---propri�t�-periode_fin) | cha�ne de caract�res  | Non |
| [EMPRISE_ZONE](#zone-associ�e-�-l'emprise---propri�t�-emprise_zone) | cha�ne de caract�res  | Non |
| [EMPRISE_DESIGNATION](#nom-de-la-voie---propri�t�-emprise_designation) | cha�ne de caract�res  | Oui |
| [EMPRISE_DEBUT](#d�but-de-la-section-(libell�)---propri�t�-emprise_debut) | cha�ne de caract�res  | Non |
| [EMPRISE_FIN](#fin-de-la-section-(libell�)---propri�t�-emprise_fin) | cha�ne de caract�res  | Non |
| [EMPRISE_SENS](#direction-ou-sens-de-circulation---propri�t�-emprise_sens) | cha�ne de caract�res  | Non |
| [INTERV_DUREE](#dur�e-maximale-d'intervention---propri�t�-interv_duree) | heure  | Non |
| [INTERV_HMAX](#heure-maximale-d'intervention---propri�t�-interv_hmax) | heure  | Non |
| [GEOM_WKT](#g�om�trie-au-format-wkt---propri�t�-geom_wkt) | cha�ne de caract�res  | Non |
| [GEOM_DEBUT](#d�but-de-la-section-(coordonn�es)---propri�t�-geom_debut) | point g�ographique  | Non |
| [GEOM_FIN](#fin-de-la-section-(coordonn�es)---propri�t�-geom_fin) | point g�ographique  | Non |
| [GEOM_SOURCE](#source-de-la-g�om�trie---propri�t�-geom_source) | cha�ne de caract�res  | Non |

#### Identifiant de l'entit� - Propri�t� `ID`

> *Description : Il s'agit de l'identifiant, unique, de la ligne du tableau.. [Vous pouvez cr�er des identifiants gr�ce � l'application Heidi d'Etalab](https://heidi.app.etalab.studio/).<br/>Ex : 133-3*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Nom de la collectivit� � l'origine de l'arr�t� - Propri�t� `COLL_NOM`

> *Description : Nom de la collectivit�.<br/>Ex : Commune d'Aix-en-Provence*
- Valeur obligatoire
- Type : cha�ne de caract�res

#### Code INSEE - Propri�t� `COLL_INSEE`

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

> *Description : Consid�rant est le justificatif de la mise en place de la r�glementation. S'il y a plusieurs consid�rations, les s�parer par le caract�re '|'<br/>Ex : Consid�rant la dangerosit� que repr�sente le trafic des PL aux abords des groupes scolaires*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Adresse internet de l'arr�t� - Propri�t� `ARR_URL`

> *Description : Adresse internet par laquelle acc�der � l'arr�t�, et donc au r�glement.<br/>Ex : https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf*
- Valeur optionnelle
- Type : cha�ne de caract�res (format `uri`)

#### Article du r�glement - Propri�t� `REGL_ARTICLE`

> *Description : N� de l'article associ� au r�glement lorsqu'il existe<br/>Ex : 'Article 4' ou 'Titre 2'*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Sous-article du r�glement - Propri�t� `REGL_SOUS_ARTICLE`

> *Description : Un article peut se d�composer en plusieurs sous-articles, contenant chacun une r�glementation particuli�re. Ces sous-articles ont des num�rotations.<br/>Ex : Sous-article 4 bis*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Contexte - Propri�t� `REGL_CONTEXTE`

> *Description : Contexte, motif, commentaire libre entourant la mise en place de la r�gle de circulation<br/>Ex : Forte affluence, march�*
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

> *Description : Types de v�hicules. S'il y a plusieurs types, les s�parer les valeurs par le caract�re '|'. Les valeurs possibles sont : 'Poids lourds', 'V�hicules utilitaires l�gers', 'V�lo-cargos' et 'Tous v�hicules'.<br/>Ex : V�hicules articul�s|Trains doubles|Ensemble de v�hicules*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Indication sur le tonnage - Propri�t� `VEH_TONNAGE_MODALITE`

> *Description : Indication sur le tonnage minimal ou maximal. 'jusqu'� 9T' �quivaut � '<= 9T' (inclusif). '� partir de 9T' �quivaut � '>= 9T' (inclusif)<br/>Ex : jusqu'�*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Valeurs autoris�es : 
    - jusqu'�
    - � partir de

#### Tonnage - Propri�t� `VEH_TONNAGE`

> *Description : Tonnage du v�hicule. Remplir le champ `VEH_TONNAGE_MODALITE` pour dire s'il s'agit du tonnage � partir duquel ou jusqu'auquel s'applique la r�gle.<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre r�el
- Valeur entre 0 et 45

#### Types d'usage - Propri�t� `VEH_USAGES`

> *Description : Types d'usage de v�hicule. S'il y a plusieurs usages, s�parer les valeurs par le caract�re '|'<br/>Ex : Bennes � ordures m�nag�res|V�hicules de police*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Exceptions sur les usages accept�s ou interdits - Propri�t� `SAUF_VEH_USAGES`

> *Description : Exceptions sur les usages accept�s ou interdits. Par exemple, notion 'Rue interdite � la circulation, � l'exception des usages suivants : livraison' S'il y a plusieurs usages, s�parer les valeurs par le caract�re '|'<br/>Ex : V�hicules de livraison|Services de la Mairie*
- Valeur optionnelle
- Type : cha�ne de caract�res

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

#### Types de motorisation - Propri�t� `VEH_MOTORS`

> *Description : Types de motorisation. S'il y a plusieurs motorisations, les s�parer par le caract�re '|'. Les valeurs possibles sont : Electrique, Gaz Naturel pour V�hicules et Hydrog�ne.<br/>Ex : �lectrique|Hydrog�ne*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `(?:(?:^|\|)(�lectrique|Gaz Naturel pour V�hicules|Hydrog�ne))+$`

#### Vignettes crit'air - Propri�t� `VEH_CQAS`

> *Description : Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr). S�parer les �tiquettes CQA par le caract�re '|'<br/>Ex : 1|2|3*
- Valeur optionnelle
- Type : cha�ne de caract�res
- Motif : `(?:(?:^|\|)(100% �lectrique et V�hicules � hydrog�ne|1|2|3|4|5|V�hicule non class�))+$`

#### Jours et heures de circulation - Propri�t� `PERIODE_JH`

> *Description : Jours et heures de circulation autoris�s pour la circulation exprim�s selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer les week-ends (we), les jours f�ri�s (PH) et les vacances scolaires (SH). Par exemple `Mo-Fr 09:00-17:00; PH 10:00-12:00; PH Su off` signifie : 'Du lundi au vendredi de 9h � 17h sauf les jours f�ri�s o� l'ouverture est de 10h � 12h, � l'exception des jours f�ri�s tombant un dimanche'. `24/7` indique `Tous les jours`. [Utiliser groom-groom pour r�cup�rer les jours et heures de circulation](https://cerema-med.shinyapps.io/groom-groom?action=opening_hours)<br/>Ex : Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Entr�e en vigueur des restrictions - Propri�t� `PERIODE_DEBUT`

> *Description : Entr�e en vigueur des restrictions (par exemple pour les Zones � Faible �mission).<br/>Ex : 'D�but des vacances de la Toussaint' ou '23 Octobre'*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Fin des restrictions - Propri�t� `PERIODE_FIN`

> *Description : Fin des restrictions. Si elle existe, cela indique le caract�re cyclique et non temporaire de la p�riode de r�gulation.<br/>Ex : 'Fin des vacances de la Toussaint' ou '8 Novembre'*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Zone associ�e � l'emprise - Propri�t� `EMPRISE_ZONE`

> *Description : Zone associ�e � l'emprise. Il s'agit g�n�ralement de la d�nomination du quartier ou de l'aire pi�tonne associ�e r�glement�e<br/>Ex : Secteur du Centre-Ville*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Nom de la voie - Propri�t� `EMPRISE_DESIGNATION`

> *Description : Nom de la voie, ou de la zone associ�e � la section r�glement�e. La zone peut �tre une aire pi�tonne, un quartier, une zone ZFE ([voir le sch�ma des ZFE](https://schema.data.gouv.fr/etalab/schema-zfe/latest.html))<br/>Ex : Avenue Philippe Solari, Commune d'Aix-en-Provence, Quartier Mazarin, 200046977-ZFE-001*
- Valeur obligatoire
- Type : cha�ne de caract�res
- Motif : `^[a-zA-Z0-9\-\�\'\�\s\d\u00C0-\u00FF\(\)\,\.]+$`

#### D�but de la section (libell�) - Propri�t� `EMPRISE_DEBUT`

> *Description : Indication textuelle de l'endroit � partir duquel la r�glementation s'applique, telle qu'�crite dans l'arr�t�. Pour indiquer les coordonn�es GPS, se r�f�rer au champ `GEOM_DEBUT`.<br/>Ex : 22 avenue Philippe Solari, Croisement de l'avenue Philippe Solari avec la rue Gaston de Saporta*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Fin de la section (libell�) - Propri�t� `EMPRISE_FIN`

> *Description : Indication textuelle de l'endroit au bout duquel la r�glementation s'applique, telle qu'�crite dans l'arr�t�. Pour indiquer les coordonn�es GPS, se r�f�rer au champ `GEOM_FIN`.<br/>Ex : 34 bis avenue Philippe Solari, Intersection de l'avenue Philippe Solari avec le boulevard des Charmettes*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Direction ou sens de circulation - Propri�t� `EMPRISE_SENS`

> *Description : Direction ou sens de circulation associ� � la r�glementation. On peut indiquer le sens de la circulation par le c�t� : 'Pair' ou 'Impair', ou bien par la direction : 'Nord-Sud', 'Est-Ouest', par exemple<br/>Ex : Dans le sens boulevard Mar�chal Foch vers l�avenue de la Rostagne (Sens Nord-Sud)*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### Dur�e maximale d'intervention - Propri�t� `INTERV_DUREE`

> *Description : Dur�e maximale d'intervention (au niveau d'une aire pi�tonne, par exemple). L'entr�e et la sortie dans une zone peuvent �tre horodat�es � la d�livrance d'un ticket lors de la travers�e d'une borne de passage.<br/>Ex : 03:00:00*
- Valeur optionnelle
- Type : heure

#### Heure maximale d'intervention - Propri�t� `INTERV_HMAX`

> *Description : Heure max � partir de laquelle les v�hicules doivent quitter l'aire pi�tonne.<br/>Ex : 22:00:00*
- Valeur optionnelle
- Type : heure

#### G�om�trie au format WKT - Propri�t� `GEOM_WKT`

> *Description : G�om�trie de la rue (ligne), ou de l'emprise (polygone) exprim�e au format [WKT (Well Know Text](https://fr.wikipedia.org/wiki/Well-known_text) sous le syst�me de projection WGS84 (EPSG:4326)<br/>Ex : LineString(5.39340184 45.56538751, 5.41017215 45.56722934, 5.42510063 45.5679079)*
- Valeur optionnelle
- Type : cha�ne de caract�res

#### D�but de la section (coordonn�es) - Propri�t� `GEOM_DEBUT`

> *Description : Coordonn�es GPS du d�but de la section. Se r�f�re � `EMPRISE_DEBUT`. S'�crit sous la forme 'long,lat' (5 ou 6 d�cimales sont conseill�es).<br/>Ex : 5.42101,43.53591*
- Valeur optionnelle
- Type : point g�ographique

#### Fin de la section (coordonn�es) - Propri�t� `GEOM_FIN`

> *Description : Coordonn�es GPS de la fin de la section. Se r�f�re � `EMPRISE_DEBUT`. S'�crit sous la forme 'long,lat' (5 ou 6 d�cimales sont conseill�es).<br/>Ex : 5.42101,43.53591*
- Valeur optionnelle
- Type : point g�ographique

#### Source de la g�om�trie - Propri�t� `GEOM_SOURCE`

> *Description : Source de la donn�e depuis laquelle la donn�e a �t� extraite (OpenStreetMap, IGN,...).<br/>Ex : BDTOPO IGN 2021*
- Valeur optionnelle
- Type : cha�ne de caract�res
