<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs tei"
    version="2.0">
    <!-- 
    *******************************************************************
    *******************************************************************
    **          EDITION DU JOURNAL DE NICOLAS DURIVAL (2016)         **
    *******************************************************************
    *******************************************************************
    **                                                               **
    **      XSL principale.                                          **
    **                                                               **
    **          Cette feuille contient de quoi générer l'ensemble    **
    **          des pages web de l'édition                           **
    **                                                               **
    **                                                               **
    **          Sont détaillées dans cette feuilles :                **
    **              - La page index.html ;                           **
    **              - Les pages du journal (par mois) ;              **
    **                                                               **
    **          Les autres pages sont détaillées dans les fichiers   **
    **          xsl présents dans le dossier edition/xsl/include'    **
    **          et intégrées au sein de ce fichier par des 'includes'**
    **          en fin de document.                                  **
    **                                                               **
    *******************************************************************
    *******************************************************************
    -->
    
    <xsl:output method="xhtml" indent="yes" omit-xml-declaration="no" encoding="UTF-8"/>
    <xsl:output method="xhtml" indent="yes" omit-xml-declaration="yes" encoding="UTF-8" name="html"/>
    <xsl:output method="text" indent="yes" encoding="UTF-8" name="frise"/>
    
<<<<<<< HEAD
    <xsl:variable name="header">
        <header class="row">            
            <div data-sticky-container="true">
                <div class="nav" data-sticky="true" data-options="marginTop:0;">
                    <div class="title-bar" data-responsive-toggle="menu-responsive" data-hide-for="medium">
                        <button class="menu-icon" type="button" data-toggle="true"><xsl:comment>button pour foundation responsive</xsl:comment></button>
                        <div class="title-bar-title">Menu</div>
                    </div>
                    <div class="top-bar" id="menu-responsive">
                        <div class="top-bar-left">
                            <ul class="vertical medium-horizontal menu" data-responsive-menu="drilldown medium-dropdown">
                                <li><a href="../index.html">Accueil</a></li>                                        
                                <li><a href="calendrier.html">Le journal</a></li>
                                <li>
                                    <a href="cartes.html">Cartes</a>
                                    <ul class="vertical menu">
                                        <li><a target="_blank" href="belprey.html">Nancy en 1754</a></li>
                                        <li><a target="_blank" href="mique.html">Nancy en 1778</a></li>
                                        <li><a target="_blank" href="cartographie.html">Nancy aujourd'hui</a></li>                                        
                                    </ul>
                                </li>
                                <li><a href="galerie.html">Galerie</a></li>
                                <li>
                                    <a href="focus.html">Focus</a>
                                    <ul class="vertical menu">
                                        <li>
                                            <a href="#">Biographies</a>
                                            <ul class="vertical menu">
                                                <li><a href="durival.html">Durival</a></li>
                                                <li><a href="stanislas.html">Stanislas</a></li>                                                
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Histoires</a>
                                            <ul class="vertical menu">
                                                <li><a href="bibliotheque.html">Histoire de la Bibliothèque</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="bibliographie.html">Bibliographie générale</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="top-bar-right">
                            <ul class="vertical medium-horizontal menu" data-responsive-menu="drilldown medium-dropdown">                                                                             
                                <li>
                                    <a href="#">Index</a>
                                    <ul class="vertical menu">
                                        <li><a href="listPerson.html">Personnes</a></li>
                                        <li><a href="listPlace.html">Lieux</a></li>
                                        <li><a href="listOrg.html">Institutions</a></li>
                                        <li><a href="listbib.html">Œuvres citées</a></li>                                        
                                    </ul>
                                </li>
                                <li><a href="apropos.html">À propos</a></li>
                            </ul>
                        </div>                                
                    </div>
                </div>
            </div>
            <img src="../images/header/header.jpg" alt="header" />
        </header>
    </xsl:variable>
    

    <xsl:variable name="mapHeader">
        <header data-sticky-container="true">            
            <div class="full-width sticky" data-sticky="true" data-options="marginTop:0;">
                <div class="nav">
                    <div class="title-bar" data-responsive-toggle="menu-responsive" data-hide-for="medium">
                        <button class="menu-icon" type="button" data-toggle="true"><xsl:comment>button pour foundation responsive</xsl:comment></button>
                        <div class="title-bar-title">Menu</div>
                    </div>
                    <div class="top-bar" id="menu-responsive">
                        <div class="top-bar-left">
                            <ul class="vertical medium-horizontal menu" data-responsive-menu="drilldown medium-dropdown">
                                <li><a href="../index.html">Accueil</a></li>                                        
                                <li><a href="calendrier.html">Le journal</a></li>
                                <li>
                                    <a href="cartes.html">Cartes</a>
                                    <ul class="vertical menu">
                                        <li><a target="_blank" href="belprey.html">Nancy en 1754</a></li>
                                        <li><a target="_blank" href="mique.html">Nancy en 1778</a></li>
                                        <li><a target="_blank" href="cartographie.html">Nancy aujourd'hui</a></li>                                        
                                    </ul>
                                </li>
                                <li><a href="galerie.html">Galerie</a></li>
                                <li>
                                    <a href="focus.html">Focus</a>
                                    <ul class="vertical menu">
                                        <li>
                                            <a href="#">Biographies</a>
                                            <ul class="vertical menu">
                                                <li><a href="durival.html">Durival</a></li>
                                                <li><a href="stanislas.html">Stanislas</a></li>                                                
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Histoires</a>
                                            <ul class="vertical menu">
                                                <li><a href="bibliotheque.html">Histoire de la Bibliothèque</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="bibliographie.html">Bibliographie générale</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="top-bar-right">
                            <ul class="vertical medium-horizontal menu" data-responsive-menu="drilldown medium-dropdown">                                                                             
                                <li>
                                    <a href="#">Index</a>
                                    <ul class="vertical menu">
                                        <li><a href="listPerson.html">Personnes</a></li>
                                        <li><a href="listPlace.html">Lieux</a></li>
                                        <li><a href="listOrg.html">Institutions</a></li>
                                        <li><a href="listbib.html">Œuvres citées</a></li>                                        
                                    </ul>
                                </li>
                                <li><a href="apropos.html">À propos</a></li>
                            </ul>
                        </div>                                
                    </div>
                </div>
            </div>
        </header>
    </xsl:variable>

    <xsl:variable name="footer">
        <div class="row footer">
            <div class="large-8 medium-12 columns">
                <ul class="menu">
                    <li class="logo"><a target="_blank" href="http://www.nancy.fr"><img class="logo" src="../images/logo/logo-ville-de-nancy.jpg" /></a></li>
                    <li class="logo"><a target="_blank" href="http://www.reseau-colibris.fr/iguana/www.main.cls?surl=accueil"><img class="logo" src="../images/logo/BN-logo-blanc-fond-or-B15mm-30x60mm.jpg" /></a></li>
                    <li class="logo"><a target="_blank" href="http://www.pactelorraine.eu/"><img class="logo" src="../images/logo/pacte Lorraine.png" /></a></li>
                    <li class="logo"><a target="_blank" href="https://musee-lorrain.nancy.fr/"><img class="logo" src="../images/logo/MuseeLorrain-LOGO.jpg" /></a></li>
                    <li class="logo"><img class="logo" src="../images/logo/LOGO CMJN 250e FR-LOR.jpg" /></li>
                </ul>
            </div>
            <div class="large-4 medium-12 columns">
                <div class="row edito">
                    <div class="small-6 columns">
                        Bibliothèques&#160;de&#160;Nancy<br />43,&#160;rue&#160;Stanislas<br />54&#160;000&#160;Nancy<br />&#x260E; 03 83 87 38 83 
                    </div>
                    <div class="small-6 columns">
                        <a class="float-right" href="mailto:bibliotheque@nancy.fr">Contact</a>
                        <br />
                        <a class="float-right" href="apropos.html">Crédits</a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:variable>
=======
    <!--********** page d'index **********-->
>>>>>>> ProjetDurival/master
    
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>Édition du journal de Nicolas Durival 1765-1766</title>
                <script src="js/vendor/modernizr.js">/*Pour transformation xslt*/</script>
                <script src="js/js/jquery.js">/*Pour transformation xslt*/</script>
                <script src="js/vendor/modernizr.js">/*xslt*/</script>
                <link rel="canonical" href="https://technotarek.com/timeliner/timeliner.html" />
                <!--<link rel="stylesheet" href="../js/timeliner/css/demo.css" type="text/css" media="screen" />-->
                <link rel="stylesheet" href="js/timeliner/css/timeliner.css" type="text/css" media="screen" />
                <link rel="stylesheet" href="js/timeliner/css/responsive.css" type="text/css" media="screen" />
                <link rel="stylesheet" href="js/timeliner/inc/colorbox.css" type="text/css" media="screen" />
                <link rel="stylesheet" href="css/app.css" />
                <link rel="stylesheet" href="css/foundation.css" />  
                <script>
                    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                    
                    ga('create', 'UA-78667211-1', 'auto');
                    ga('send', 'pageview');                            
                </script> 
            </head>
            <body class="text-justify">
                <header class="row">            
                    <div data-sticky-container="true">
                        <div class="nav" data-sticky="true" data-options="marginTop:0;">
                            <div class="title-bar" data-responsive-toggle="menu-responsive" data-hide-for="medium">
                                <button class="menu-icon" type="button" data-toggle="true"><xsl:comment>button pour foundation responsive</xsl:comment></button>
                                <div class="title-bar-title">Menu</div>
                            </div>
                            <div class="top-bar" id="menu-responsive">
                                <div class="top-bar-left">
                                    <ul class="vertical medium-horizontal menu" data-responsive-menu="drilldown medium-dropdown">
                                        <li><a href="index.html">Accueil</a></li>                                        
                                        <li><a href="html/calendrier.html">Le journal</a></li>
                                        <li>
                                            <a href="html/cartes.html">Cartes</a>
                                            <ul class="vertical menu">
                                                <li><a target="_blank" href="html/belprey.html">Nancy en 1754</a></li>
                                                <li><a target="_blank" href="html/mique.html">Nancy en 1778</a></li>
                                                <li><a target="_blank" href="html/cartographie.html">Nancy aujourd'hui</a></li>                                        
                                            </ul>
                                        </li>
                                        <li><a href="html/galerie.html">Galerie</a></li>
                                        <li>
                                            <a href="html/focus.html">Focus</a>
                                            <ul class="vertical menu">
                                                <li>
                                                    <a href="#">Biographies</a>
                                                    <ul class="vertical menu">
                                                        <li><a href="html/durival.html">Durival</a></li>
                                                        <li><a href="html/girardet.html">Girardet</a></li>
                                                        <!--<li><a href="html/stanislas.html">Stanislas</a></li>-->                                                        
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#">Histoires</a>
                                                    <ul class="vertical menu">
                                                        <li><a href="html/bibliotheque.html">Histoire de la Bibliothèque</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="html/bibliographie.html">Bibliographie générale</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="top-bar-right">
                                    <ul class="vertical medium-horizontal menu" data-responsive-menu="drilldown medium-dropdown">                                                                             
                                        <li>
                                            <a href="#">Index</a>
                                            <ul class="vertical menu">
                                                <li><a href="html/listPerson.html">Personnes</a></li>
                                                <li><a href="html/listPlace.html">Lieux</a></li>
                                                <li><a href="html/listOrg.html">Institutions</a></li>
                                                <li><a href="html/listbib.html">Œuvres citées</a></li>                                                
                                            </ul>
                                        </li>
                                        <li><a href="html/apropos.html">À propos</a></li>
                                    </ul>
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <img src="images/header/header.jpg" alt="header" />
                </header>                                
                <div class="row" >
                    <div class="large-12 columns">
                        <br />
                        <a href="html/d176501.html" alt="mois de Janvier 1765"><img src="images/vignettes/vignetteB543956101M00863_vues_0009.png" width="500px" class="float-center" title="Année 1765 du Journal de Durival"/></a>
                        <ul class="accordion" data-accordion="true" data-allow-all-closed="true">
                            <li class="accordion-item" data-accordion-item="true">
                                <a href="#" class="accordion-title text-center"><h2 class="edito2">En savoir plus sur le projet</h2></a>                                
                                <div class="accordion-content" data-tab-content="true">
                                    <p class="edito text-left"> Le site internet <b>Journal de
                                        durival</b> est la première étape d'un projet qui vise à
                                        l'édition complète des 14 volumes composés par Nicolas
                                        Durival entre 1737 et 1795. </p>
<<<<<<< HEAD
                                    <p> Nicolas Durival est un officier au service du chancelier
=======
                                    <p class="edito text-left"> Nicolas Durival est un officier au service du chancelier
>>>>>>> ProjetDurival/master
                                        Chaumont de la Galaizière dès l'arrivée de Stanislas et des
                                        Français en Lorraine en 1737. Il passe ensuite au Conseil du
                                        roi et, à partir de 1760, achète la charge de lieutenant
                                        général de police de Nancy à la demande de son souverain. Il
                                        tient, dès 1737 et jusqu'à sa mort en 1795, un journal des
                                        faits qui se sont déroulés dans l'entourage ducal et dans la
                                        ville de Nancy. Sources de première importance pour
                                        l'histoire de la ville et de la cour, ces 14 volumes
                                        manuscrits n'ont encore jamais fait l'objet d'une
                                        édition complète. </p>
<<<<<<< HEAD
                                    <p>Dès aujourd'hui, les Bibliothèques de Nancy proposent l'édition de deux années
=======
                                    <p class="edito text-left">Dès aujourd'hui, les Bibliothèques de Nancy proposent l'édition de deux années
>>>>>>> ProjetDurival/master
                                        charnières pour l'histoire de la Lorraine : 1765-1766. Cette
                                        édition est annotée et augmentée d'un index, de cartes
                                        anciennes ou interactives, d'illustrations , de ressources
                                        complémentaires tels que bibliographies et notices
                                        biographiques ou historiques visant à éclairer le contexte
                                        de rédaction de ce document exceptionnel. <br/> Ce site vous
                                        plonge au plus près de la vie des nancéiens à la fin du
                                        règne de Stanislas et durant la première année du
                                        rattachement effectif du Duché au royaume de France. </p>
                                </div>
                            </li>                            
                        </ul>
                        <br />
                        <br />
                        <div class="large-4 medium-12 columns">
                            <a href="html/cartes.html" target="blank"><img class="float-center" src="images/vignettes/vignetteBelprey.gif"/></a>
                            <h3 class="text-center edito2">cartes</h3>
                        </div>
                        <div class="large-4 medium-12 columns">
                            <a href="html/focus.html" target="blank"><img class="float-center" src="images/vignettes/vignetteStanislasPortrait.png"/></a>
                            <h3 class="text-center edito2">focus</h3>
                        </div>                         
                        <div class="large-4 medium-12 columns">                            
                            <a href="html/galerie.html" target="blank"><img class="float-center" src="images/vignettes/vignetteB543956101_M_TS_ES_00020.png"/></a>
                            <h3 class="text-center edito2">galerie</h3>
                        </div>                        
                        <br />
                    </div>
                    <!-- <p class="text-center"><img src="../accolade2.png"></p> -->
                    <br />
                </div>
                <br />
                <!-- FOOTER -->
                <div class="row footer">
                    <div class="large-8 medium-12 columns">
                        <ul class="menu">
                            <li class="logo"><a target="_blank" href="http://www.nancy.fr"><img class="logo" src="images/logo/logo-ville-de-nancy.jpg" /></a></li>
                            <li class="logo"><a target="_blank" href="http://www.reseau-colibris.fr/iguana/www.main.cls?surl=accueil"><img class="logo" src="images/logo/BN-logo-blanc-fond-or-B15mm-30x60mm.jpg" /></a></li>
                            <li class="logo"><a target="_blank" href="http://www.pactelorraine.eu/"><img class="logo" src="images/logo/pacte Lorraine.png" /></a></li>
                            <li class="logo"><a target="_blank" href="https://musee-lorrain.nancy.fr/"><img class="logo" src="images/logo/MuseeLorrain-LOGO.jpg" /></a></li>
                            <li class="logo"><img class="logo" src="images/logo/LOGO CMJN 250e FR-LOR.jpg" /></li>
                        </ul>
                        <a class="float-left" target="_blanck" href="latex/durival.pdf">Télécharger la version pdf du Journal</a>
                    </div>
                    <div class="large-4 medium-12 columns">
                        <div class="row edito">
                            <div class="small-6 columns">
                                Bibliothèques&#160;de&#160;Nancy<br />43,&#160;rue&#160;Stanislas<br />54&#160;000&#160;Nancy<br />&#x260E; 03 83 87 38 83
                            </div>
                            <div class="small-6 columns">
                                <a class="float-right" href="mailto:bibliotheque@nancy.fr">Contact</a>
                                <br />
                                <a class="float-right" href="html/apropos.html">Crédits</a>
                            </div>
                        </div>
                    </div>
                </div>

                <script src="js/vendor/jquery.js">/*Pour transformation xslt*/</script>
                <script src="js/foundation.min.js">/*Pour transformation xslt*/</script>
                <script src="js/modernisation/modernisation.js">                    
                </script><script>$(document).foundation();</script>
            </body>
        </html>
        <!-- pour fonction result-document -->
        <xsl:apply-templates select="//tei:body"/>
        <!--<xsl:apply-templates select="//tei:div[@type='index']"/>-->
        <xsl:apply-templates select="//tei:div[@type='index']/tei:listPlace" mode="index"/>
        <xsl:apply-templates select="//tei:div[@type='index']/tei:listPerson" mode="index"/>
        <xsl:apply-templates select="//tei:div[@type='index']/tei:listOrg" mode="index"/>
        <xsl:apply-templates select="//tei:div[@type='index']/tei:listBibl" mode="index"/>
        <!--<xsl:apply-templates select="//tei:div[@type='transcription']" mode="frise"/>-->
        <xsl:apply-templates select="//tei:div[@type='transcription']" mode="calendrier"/>
        <!--<xsl:apply-templates select="//tei:listPlace[@xml:id='listPlace']" mode="cartographie"/>-->
        <xsl:apply-templates select="//tei:div[@type='index'][descendant::tei:listPlace[@xml:id='listPlace']][descendant::tei:listOrg[@xml:id='listOrg']]" mode="cartographie"/>
        <xsl:apply-templates select="//tei:front/tei:div[@type='bio']" mode="bio"/>
        <xsl:apply-templates select="//tei:front/tei:div[@type='history']" mode="history"/>
        <xsl:apply-templates select="/" mode="mique"/>
        <xsl:apply-templates select="/" mode="belprey"/>
        <xsl:apply-templates select="/" mode="carte"/>
        <xsl:apply-templates select="/" mode="focus"/>
        <xsl:apply-templates select="//tei:projectDesc" mode="projecDesc"/>
        <xsl:apply-templates select="//tei:div[@type='bibl']" mode="bibl"/>
        <xsl:apply-templates select="//tei:div[@type='pictures']" mode="galerie"/>
    </xsl:template>    
    
    <!--********** pages du Journal **********-->
    
    <xsl:template match="//tei:body">
        <xsl:for-each select=".//tei:div[@type='month']">
            <xsl:variable name="year" select="substring(./tei:fw[@type='runningHead']/tei:date/@when,1,4)"/>
            <xsl:result-document format="html" encoding="UTF-8" href="html/{./@xml:id}.html">
                <html>
                    <head>
                        <title>Édition du journal de Nicolas Durival 1765-1766</title>
                        <meta charset="utf-8"/>
                        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
                        
                        <!-- css Pour personnalisation -->
                        <link rel="stylesheet" href="../css/app.css"/>
                        <!-- css Foundation -->
                        <link rel="stylesheet" href="../css/foundation.css"/>
                                                
                        <!-- css Owl-Carousel -->
                        <link rel="stylesheet" href="../css/owl-carousel/owl.carousel.css"/>                         
                        <link rel="stylesheet" href="../css/owl-carousel/owl.theme.default.css"/>
                        
                        <!-- css Lightbox -->                                                
                        <link href="../css/lightbox/lightbox.css" rel="stylesheet" />  
                        
                        <!-- Font -->
                        <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,900,700' rel='stylesheet' type='text/css'/>                     
                        <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'/>
                        <script>
                            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                            })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                            
                            ga('create', 'UA-78667211-1', 'auto');
                            ga('send', 'pageview');                            
                        </script>
                    </head>
                    <body>
                        <xsl:copy-of select="$header"/>                                                                                                                                                                                               
                        <div class="row">                            
                            <div class="large-12 tabs-content" data-tabs-content="example-tabs">
                                <div class="row">                                                                           
                                    <div class="large-12 columns clearfix">
                                        <ul class="tabs float-right" data-tabs="true" id="example-tabs">                                
                                            <li class="tabs-title is-active"><a href="#panel1" aria-selected="true">transcriptions</a></li>
                                            <li class="tabs-title"><a href="#panel2">facsimilés</a></li>                                            
                                        </ul>
                                    </div>                                    
                                    <div class="large-12 columns">
                                        <div class="control">
                                            <span>Transcription modernisée&#160;</span>
                                            <div class="switch tiny">                                                        
                                                <input class="switch-input checkbox_modern" id="modern" type="checkbox" name="modern"/>
                                                <label class="switch-paddle" for="modern">                                                                
                                                    <!--<span>Modernisation</span>-->
                                                    <span class="switch-active" aria-hidden="true"/>
                                                    <span class="switch-inactive" aria-hidden="true"/>
                                                </label>
                                            </div>
                                            <span>&#160;Transcription originale</span>
                                        </div>
                                    </div>                                    
                                </div>                                
                                <div class="tabs-panel is-active" id="panel1">                                                                                 
                                    <div class="large-12 center">                            
                                        <div class="owl-carousel owl-theme">
                                            <xsl:apply-templates/>
                                        </div> 
                                    </div>
                                </div>
                                <div class="tabs-panel" id="panel2">
                                    <div class="owl-carousel owl-theme">
                                        <xsl:for-each select=".//tei:pb/@facs">
                                            <xsl:variable name="facs" select="substring-after(concat(.,'.jpg'),'#')"/>
                                            <div class="item">
                                                <img src="../images/{$year}/{$facs}" alt="facs" />
                                            </div>                                                                                                                            
                                        </xsl:for-each>
                                    </div>

                                </div>                                

                            </div>
                        </div>
                        <xsl:copy-of select="$footer"/>
                        <script src="../js/vendor/jquery.js">/*Pour transformation xslt*/</script>                        
                        
                        <script src="../js/foundation.min.js"></script>
                        <script src="../js/vendor/modernizr.js"></script>                                                
                        
                        <script src="../js/owl-carousel/owl.js"></script>                        
                        <script src="../js/owl-carousel/owlConfig.js"></script>

                        <script src="../js/modernisation/modernisation.js"></script>
                        
                        <script src="../js/lightbox/lightbox.js"></script>
                        <script>$(document).foundation();</script>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
    <!--********** détail des différentes fonctions **********-->
    
    <xsl:template match="//tei:div[@type='year']">
        <xsl:apply-templates select="tei:div[@type='month']"/>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='month']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='day']">        
        <xsl:variable name="id" select="@xml:id"/>
        <div class="item" data-hash="{$id}">
            <div class="row">
                <div class="large-12 columns">
                    <h2><xsl:apply-templates select="tei:dateline/tei:date[@type='entry']" mode="dateComplete"/></h2>
                </div>
            </div>
            <div class="row">                
                <div class="large-8 columns day">                                                            
                    <xsl:apply-templates/>                                        
                </div>
                <div class="large-4 columns">                    
                    <xsl:for-each select=".//tei:ref[@type='note']">
                        <xsl:variable name="id" select="substring-after(@target,'#')"/>
                        <xsl:variable name="number"><xsl:number select="." level="any" from="tei:div[@type='day']"/></xsl:variable>
                        <p class="note"><xsl:value-of select="$number"/><xsl:text>. </xsl:text><xsl:apply-templates select="//tei:back//tei:note[@xml:id=$id]/tei:p"/></p>
                    </xsl:for-each>
                    <xsl:if test=".//tei:ref[@type='picture']">                        
                        <div class="row">
                            <div class="large-10 large-offset-1 small-10 small-offset-1 text-justify">
                                <xsl:for-each select=".//tei:ref[@type='picture']">
                                    <xsl:variable name="ref" select="substring-after(@target,'#')"/>
                                    <xsl:variable name="picture" select="//tei:back//tei:figure[@xml:id=$ref]//tei:graphic/@url"/>
                                    <xsl:variable name="cartel" select="//tei:back//tei:figure[@xml:id=$ref]//tei:desc"/>                                    
                                    <a class="miniatures" href="../images/illustrations/{$picture}.jpg" data-lightbox="{$id}" data-title="{$cartel}">
                                        <img src="../images/illustrations/thumbs/T{$picture}.png" alt="{$cartel}"/>
                                    </a>
                                </xsl:for-each>
                            </div>
                        </div>
                    </xsl:if>
                </div>
            </div>
            <div class="row">
                <div class="large-8 columns">
                    <xsl:if test="not(
                        following-sibling::tei:div[@type='day'] 
                        or following-sibling::tei:pb 
                        or following-sibling::tei:fw 
                        or following-sibling::tei:div[@type='insert'])
                        or not(preceding-sibling::tei:div[@type='day']  
                        or preceding-sibling::tei:div[@type='insert'])">                        
                        <p>
                            <xsl:if test="./preceding::tei:div[@type='month'][1]/@xml:id">
                                <xsl:variable name="prevMonth" select="./preceding::tei:div[@type='month'][1]/@xml:id"/>
                                <a href="{$prevMonth}.html">Mois précédent</a>
                            </xsl:if>
                            <xsl:if test="./following::tei:div[@type='month'][1]/@xml:id">
                                <xsl:variable name="nextMonth" select="./following::tei:div[@type='month'][1]/@xml:id"/>
                                <span class="float-right"><a href="{$nextMonth}.html">Mois suivant</a></span>                                                                
                            </xsl:if>
                        </p>                        
                    </xsl:if>
                </div>
            </div>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='insert']">
        <xsl:variable name="id" select="@xml:id"/>
        <div class="item" data-hash="{$id}">            
            <xsl:choose>
                <xsl:when test="tei:div[@type='letter']">
                    <div class="row">
                        <div class="large-12 columns">
                            <h2>Encart : lettre</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-8 columns">
                            <p><xsl:apply-templates select="tei:div[@type='letter']/tei:dateline"/></p>
                            <xsl:for-each select="tei:div[@type='letter']/tei:p">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                            <p><xsl:apply-templates select="tei:div[@type='letter']/tei:closer/tei:salute"/></p>
                            <p class="right"><xsl:apply-templates select="tei:div[@type='letter']/tei:closer/tei:signed"/></p>
                        </div>
                        <div class="large-4 columns">                            
                            <xsl:for-each select=".//tei:ref[@type='note']">
                                <xsl:variable name="id" select="substring-after(@target,'#')"/>
                                <xsl:variable name="number"><xsl:number select="." level="any" from="tei:div[@type='day']"/></xsl:variable>
                                <p class="note"><sup><xsl:value-of select="$number"/></sup> <xsl:apply-templates select="//tei:back//tei:note[@xml:id=$id]/tei:p"/></p>
                            </xsl:for-each>
                        </div>                        
                    </div>
                    <div class="row">
                        <div class="large-8 columns">
                            <xsl:if test="not(
                                following-sibling::tei:div[@type='day'] 
                                or following-sibling::tei:pb 
                                or following-sibling::tei:fw 
                                or following-sibling::tei:div[@type='insert'])
                                or not(preceding-sibling::tei:div[@type='day']  
                                or preceding-sibling::tei:div[@type='insert'])">                        
                                <p>
                                    <xsl:if test="./preceding::tei:div[@type='month'][1]/@xml:id">
                                        <xsl:variable name="prevMonth" select="./preceding::tei:div[@type='month'][1]/@xml:id"/>
                                        <a href="{$prevMonth}.html">Mois précédent</a>
                                    </xsl:if>
                                    <xsl:if test="./following::tei:div[@type='month'][1]/@xml:id">
                                        <xsl:variable name="nextMonth" select="./following::tei:div[@type='month'][1]/@xml:id"/>
                                        <span class="float-right"><a href="{$nextMonth}.html">Mois suivant</a></span>                                                                
                                    </xsl:if>
                                </p>                        
                            </xsl:if>
                        </div>
                    </div>
                </xsl:when>
                <xsl:when test="tei:div[@type='verse']"><!-- todo vérif gestion -->
                    <xsl:for-each select="./tei:div[@type='verse']">
                        <div class="row">
                            <div class="large-12 columns">
                                <h2>Encart : vers</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="large-8 columns">
                                <xsl:if test="tei:head">
                                    <h3><xsl:apply-templates select="tei:head"/></h3>
                                </xsl:if>
                                <xsl:for-each select="tei:p | tei:lg | tei:quote">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </div>
                            <div class="large-4 columns">                                
                                <xsl:for-each select=".//tei:ref[@type='note']">
                                    <xsl:variable name="id" select="substring-after(@target,'#')"/>
                                    <xsl:variable name="number"><xsl:number select="." level="any" from="tei:div[@type='day']"/></xsl:variable>
                                    <p class="note"><sup><xsl:value-of select="$number"/></sup> <xsl:apply-templates select="//tei:back//tei:note[@xml:id=$id]/tei:p"/></p>
                                </xsl:for-each>
                            </div>                            
                        </div>
                        <div class="row">
                            <div class="large-8 columns">
                                <xsl:if test="not(
                                    following-sibling::tei:div[@type='day'] 
                                    or following-sibling::tei:pb 
                                    or following-sibling::tei:fw 
                                    or following-sibling::tei:div[@type='insert'])
                                    or not(preceding-sibling::tei:div[@type='day']  
                                    or preceding-sibling::tei:div[@type='insert'])">                        
                                    <p>
                                        <xsl:if test="./preceding::tei:div[@type='month'][1]/@xml:id">
                                            <xsl:variable name="prevMonth" select="./preceding::tei:div[@type='month'][1]/@xml:id"/>
                                            <a href="{$prevMonth}.html">Mois précédent</a>
                                        </xsl:if>
                                        <xsl:if test="./following::tei:div[@type='month'][1]/@xml:id">
                                            <xsl:variable name="nextMonth" select="./following::tei:div[@type='month'][1]/@xml:id"/>
                                            <span class="float-right"><a href="{$nextMonth}.html">Mois suivant</a></span>                                                                
                                        </xsl:if>
                                    </p>                        
                                </xsl:if>
                            </div>
                        </div>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <div class="row">
                        <div class="large-12 columns">
                            <h2>Encart</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-8 columns">
                            <xsl:apply-templates select=".//tei:p"/>
                        </div>
                        <div class="large-4 columns">                            
                            <xsl:for-each select=".//tei:ref[@type='note']">
                                <xsl:variable name="id" select="substring-after(@target,'#')"/>
                                <xsl:variable name="number"><xsl:number select="." level="any" from="tei:div[@type='day']"/></xsl:variable>
                                <p class="note"><sup><xsl:value-of select="$number"/></sup> <xsl:apply-templates select="//tei:back//tei:note[@xml:id=$id]/tei:p"/></p>
                            </xsl:for-each>
                        </div>                        
                    </div>
                    <div class="row">
                        <div class="large-8 columns">
                            <xsl:if test="not(
                                following-sibling::tei:div[@type='day'] 
                                or following-sibling::tei:pb 
                                or following-sibling::tei:fw 
                                or following-sibling::tei:div[@type='insert'])
                                or not(preceding-sibling::tei:div[@type='day']  
                                or preceding-sibling::tei:div[@type='insert'])">                        
                                <p>
                                    <xsl:if test="./preceding::tei:div[@type='month'][1]/@xml:id">
                                        <xsl:variable name="prevMonth" select="./preceding::tei:div[@type='month'][1]/@xml:id"/>
                                        <a href="{$prevMonth}.html">Mois précédent</a>
                                    </xsl:if>
                                    <xsl:if test="./following::tei:div[@type='month'][1]/@xml:id">
                                        <xsl:variable name="nextMonth" select="./following::tei:div[@type='month'][1]/@xml:id"/>
                                        <span class="float-right"><a href="{$nextMonth}.html">Mois suivant</a></span>                                                                
                                    </xsl:if>
                                </p>                        
                            </xsl:if>
                        </div>
                    </div>
                </xsl:otherwise>
            </xsl:choose>            
        </div>
    </xsl:template>     
    
    <xsl:template match="tei:dateline/tei:date[@type='entry']"/>            
    <xsl:template match="tei:dateline/tei:date[@type='entry']" mode="date">
        <xsl:choose>
            <xsl:when test="@when">
                <xsl:value-of select="format-date(@when,'[D01] [Mn]', 'fr', (), ())"/>        
            </xsl:when>
            <xsl:when test="@from and @to">
                <xsl:value-of select="format-date(@from,'[D01]', 'fr', (), ())"/>
                <xsl:text> - </xsl:text>
                <xsl:value-of select="format-date(@to,'[D01] [Mn]', 'fr', (), ())"/>
            </xsl:when>
        </xsl:choose>        
    </xsl:template>
    
    <xsl:template match="tei:dateline/tei:date[@type='entry']" mode="dateShort">
        <xsl:choose>
            <xsl:when test="@when">
                <xsl:value-of select="format-date(@when,'[D01] [Mn,*-3] [Y0001]', 'fr', (), (.))"/>        
            </xsl:when>
            <xsl:when test="@from and @to">
                <xsl:value-of select="format-date(@from,'[D01]', 'fr', (), ())"/>
                <xsl:text> - </xsl:text>
                <xsl:value-of select="format-date(@to,'[D01] [Mn,*-3] [Y0001]', 'fr', (), (.))"/>
            </xsl:when>
        </xsl:choose>        
    </xsl:template>
    
    <xsl:template match="tei:dateline/tei:date[@type='entry']" mode="dateComplete">
        <xsl:choose>
            <xsl:when test="@when">
                <xsl:value-of select="format-date(@when,'[D01] [Mn] [Y0001]', 'fr', (), ())"/>        
            </xsl:when>
            <xsl:when test="@from and @to">
                <xsl:value-of select="format-date(@from,'[D01]', 'fr', (), ())"/>
                <xsl:text> - </xsl:text>
                <xsl:value-of select="format-date(@to,'[D01] [Mn] [Y0001]', 'fr', (), ())"/>
            </xsl:when>
        </xsl:choose>        
    </xsl:template>
    
    <xsl:template match="tei:p[ancestor::tei:div[@type='transcription']]"><!-- todo besoin des id pour les p ? -->
        <!--<xsl:variable name="id" select="@xml:id"/>-->
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:q | tei:quote">                            
        <xsl:choose>
            <xsl:when test="@type='report'">
                <xsl:variable name="id" select="@xml:id"/>
                <blockquote id="{$id}">
                    <p class="right"><xsl:apply-templates select="tei:seg[@type='dateline']"/></p>
                    <xsl:apply-templates select="tei:p"/>
                </blockquote>
            </xsl:when>
            <xsl:when test="@type='letter'">
                <xsl:variable name="id" select="@xml:id"/>
                <blockquote id="{$id}">
                    <xsl:if test="tei:seg[@type='opener']/tei:seg[@type='dateline']">
                        <p class="right"><xsl:apply-templates select="tei:seg[@type='opener']/tei:seg[@type='dateline']"/></p>
                    </xsl:if>
                    <xsl:if test="tei:seg[@type='opener']/tei:seg[@type='salute']">
                        <p><xsl:apply-templates select="tei:seg[@type='opener']/tei:seg[@type='salute']"/></p>                        
                    </xsl:if>
                    <xsl:apply-templates select="tei:p"/>
                    <xsl:if test="tei:seg[@type='closer']/tei:seg[@type='salute']">
                        <p><xsl:apply-templates select="tei:seg[@type='closer']/tei:seg[@type='salute']"/></p>
                    </xsl:if>
                    <xsl:if test="tei:seg[@type='closer']/tei:seg[@type='signed']">
                        <p class="right"><xsl:apply-templates select="tei:seg[@type='closer']/tei:seg[@type='signed']"/></p>
                    </xsl:if>
                    <xsl:if test="tei:seg[@type='closer']/tei:seg[@type='dateline']">
                        <p><xsl:apply-templates select="tei:seg[@type='closer']/tei:seg[@type='dateline']"/></p>
                    </xsl:if>
                </blockquote>
            </xsl:when>
            <xsl:when test="@type='verse'">                
                <blockquote><xsl:apply-templates select="tei:lg"/></blockquote>
            </xsl:when>
            <xsl:when test="parent::tei:p">
                <xsl:text>«&#160;</xsl:text><xsl:apply-templates/><xsl:text>&#160;»</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:lg">        
        <p>
            <xsl:for-each select="tei:l">
                <xsl:apply-templates select="."/>
                <br />
            </xsl:for-each>
        </p>        
    </xsl:template>    

    <xsl:template match="tei:subst">
        <xsl:apply-templates/>
    </xsl:template>        
    
    <xsl:template match="tei:del">
        <del><xsl:apply-templates/></del>
    </xsl:template>
    
    <xsl:template match="tei:w">
        <xsl:value-of select="replace(.,'-','')"/>        
    </xsl:template>            
    
    <xsl:template match="tei:hi">
        <xsl:choose>
            <xsl:when test="@rend='super'"><sup><xsl:apply-templates/></sup></xsl:when>
            <xsl:when test="@rend='sub'"><sub><xsl:apply-templates/></sub></xsl:when>
            <xsl:when test="@rend='italic' and ancestor::tei:person"><i><xsl:apply-templates/></i></xsl:when>
            <xsl:otherwise><xsl:apply-templates/></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="//*[@rend='underline']">
        <u><xsl:apply-templates/></u>
    </xsl:template>        
    
    <xsl:template match="tei:choice">
        <xsl:choose>
            <xsl:when test="tei:abbr and tei:expan">
                <span class="abbr"><xsl:apply-templates select="tei:abbr"/></span><span class="expan"><xsl:apply-templates select="tei:expan"/></span>
            </xsl:when>
            <xsl:when test="tei:orig and tei:reg">
                <span class="orig"><xsl:apply-templates select="tei:orig"/></span><span class="reg"><xsl:apply-templates select="tei:reg"/></span>
            </xsl:when>
            <xsl:when test="tei:sic and tei:corr">
                <span class="sic"><xsl:apply-templates select="tei:sic"/><xsl:text>&#160;</xsl:text><i>(sic)</i></span><span class="corr"><xsl:apply-templates select="tei:corr"/></span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>        
    </xsl:template>
    
    <xsl:template match="tei:space">
        <i>(blanc)</i>
    </xsl:template>
    
    <!--<xsl:template match="tei:lb | tei:pb[ancestor::tei:p]">
        <br class="lb" />    
    </xsl:template>-->
    
    <xsl:template match="tei:div[@type='transcription']//tei:list">
        <ul>
            <xsl:for-each select="tei:item">
                <li><xsl:apply-templates select="."/></li>
            </xsl:for-each>
        </ul>
    </xsl:template>
    
    <xsl:template match="tei:fw"/>
    
    <xsl:template match="tei:ref[@type='note']">
        <xsl:for-each select=".">
            <xsl:variable name="number"><xsl:number select="." level="any" from="tei:div[@type='day']"/></xsl:variable>
            <sup><xsl:value-of select="$number"/></sup>
        </xsl:for-each>
    </xsl:template>        
    
    <xsl:template match="tei:person" mode="tooltip">
        <xsl:for-each select="tei:persName">
            <xsl:choose>
                <xsl:when test="tei:persName | tei:surname | tei:forename | tei:roleName">
                    <xsl:apply-templates select="."/>
                </xsl:when>                
                <xsl:otherwise>
                    <xsl:apply-templates select="."/>
                </xsl:otherwise>
            </xsl:choose>            
        </xsl:for-each>
        <xsl:choose>
            <xsl:when test="tei:birth | tei:death">
                <xsl:choose>
                    <xsl:when test="tei:birth and tei:death">
                        <xsl:text> (</xsl:text>
                        <xsl:apply-templates select="tei:birth"/><xsl:text>-</xsl:text><xsl:apply-templates select="tei:death"/>
                        <xsl:text>)</xsl:text>
                    </xsl:when>
                    <xsl:when test="tei:birth and not(tei:death)">
                        <xsl:text> (&#10033;&#160;</xsl:text><xsl:apply-templates select="tei:birth"/><xsl:text>)</xsl:text>
                    </xsl:when>
                    <xsl:when test="tei:death and not(tei:birth)">
                        <xsl:text> (&#x2020;&#160;</xsl:text><xsl:apply-templates select="tei:death"/><xsl:text>)</xsl:text>
                    </xsl:when>
                </xsl:choose>                
            </xsl:when>
        </xsl:choose>
        <xsl:if test="tei:state">
            <xsl:text> - </xsl:text><xsl:apply-templates select="tei:state"/>
        </xsl:if>
        <xsl:if test="tei:persName[@ref]">
            <xsl:variable name="href" select="tei:persName/@ref"/>
            <xsl:variable name="renvoi">
                <xsl:variable name="id" select="substring-after($href,'#')"/>
                <xsl:value-of select="//tei:person[@xml:id=$id]/tei:persName/tei:persName"/><!-- todo vérif qu'on a toujours un persName dans ce cas -->
            </xsl:variable>
            <xsl:text> voir </xsl:text><a href="{$href}"><xsl:value-of select="$renvoi"/></a>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="tei:placeName[@type='today']">
        <i><xsl:text>auj. </xsl:text><xsl:apply-templates/></i>
    </xsl:template>
    
    <xsl:template match="tei:place" mode="tooltip">
        <xsl:for-each select=".">
            <xsl:for-each select="tei:placeName">
                <xsl:choose>
                    <xsl:when test="position() != last()">
                        <xsl:apply-templates select="."/><xsl:text>, </xsl:text>
                    </xsl:when>
                    <xsl:otherwise><xsl:apply-templates select="."/></xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="tei:org" mode="tooltip">
        <xsl:for-each select=".">
            <xsl:apply-templates select="tei:orgName"/><xsl:if test="tei:location/tei:placeName"><xsl:text> - </xsl:text><xsl:apply-templates select="tei:location/tei:placeName"/></xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="tei:bibl" mode="tooltip">
        <xsl:for-each select=".">
            <xsl:apply-templates select="tei:title"/><xsl:if test="tei:author"><xsl:text> (</xsl:text><xsl:if test="tei:author/tei:forename"><xsl:apply-templates select="tei:author/tei:forename"/><xsl:text> </xsl:text></xsl:if><xsl:apply-templates select="tei:author/tei:surname"/><xsl:text>)</xsl:text></xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='transcription']//tei:persName | tei:div[@type='transcription']//tei:rs[@type='person']">
        <xsl:variable name="ref" select="@ref"/><!-- todo @type=groupPerson -->
        <xsl:variable name="id" select="substring-after(@ref,'#')"/>
        <xsl:variable name="tooltip">
            <xsl:if test="//tei:div[@type='index']//tei:person[@xml:id=$id]">
                <xsl:apply-templates select="//tei:div[@type='index']//tei:person[@xml:id=$id]" mode="tooltip"/>
                <!--<xsl:value-of select="//tei:div[@type='index']//tei:person[@xml:id=$id]/tei:persName"/>-->
            </xsl:if>
        </xsl:variable>
        <span data-tooltip='true' aria-haspopup="true" class="has-tip" data-disable-hover="false" tabindex="1" title="{$tooltip}"><a class="person" href="listPerson.html{$ref}"><xsl:apply-templates/></a></span>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='transcription']//tei:rs[@type='groupPerson']">
        <xsl:variable name="content"><xsl:apply-templates/></xsl:variable>
        <xsl:variable name="ref" select="concat(replace(@ref,' ','-'),'-')"/>
        <xsl:variable name="link">
            <xsl:choose>
                <xsl:when test="substring-before(@ref,' ')">
                    <xsl:value-of select="substring-before(@ref,' ')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="@ref"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="refContent">
            <xsl:for-each select="//tei:div[@type='index']//tei:person"><!-- todo contains -->
                <!--<xsl:variable name="id" select="@xml:id"/>-->
                <xsl:variable name="id" select="concat(@xml:id,'-')"/>
                <xsl:if test="contains($ref,$id)">
                    <xsl:apply-templates select="." mode="tooltip"/><xsl:text> - </xsl:text>                                        
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>
        <xsl:variable name="refContent" select="substring($refContent, 1, string-length($refContent) - 3)"/><!-- supprime le dernier tiret (todo trouver une technique plus propre mais ça fonctionne) -->
        <span data-tooltip='true' aria-haspopup="true" class="has-tip" data-disable-hover="false" tabindex="1" title="{$refContent}"><a class="person" href="listPerson.html{$link}"><xsl:apply-templates/></a></span>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='transcription']//tei:placeName">
        <xsl:variable name="ref" select="@ref"/>
        <xsl:variable name="id" select="substring-after(@ref,'#')"/>
        <xsl:variable name="tooltip">
            <xsl:if test="//tei:div[@type='index']//tei:place[@xml:id=$id]">
                <xsl:apply-templates select="//tei:div[@type='index']//tei:place[@xml:id=$id]" mode="tooltip"/>
            </xsl:if>
        </xsl:variable>
        <span data-tooltip='true' aria-haspopup="true" class="has-tip" data-disable-hover="false" tabindex="1" title="{$tooltip}"><a class="person" href="listPlace.html{$ref}"><xsl:apply-templates/></a></span>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='transcription']//tei:orgName">
        <xsl:variable name="ref" select="@ref"/>
        <xsl:variable name="id" select="substring-after(@ref,'#')"/>
        <xsl:variable name="tooltip">
            <xsl:if test="//tei:div[@type='index']//tei:org[@xml:id=$id]">
                <xsl:apply-templates select="//tei:div[@type='index']//tei:org[@xml:id=$id]" mode="tooltip"/>
            </xsl:if>
        </xsl:variable>
        <span data-tooltip='true' aria-haspopup="true" class="has-tip" data-disable-hover="false" tabindex="1" title="{$tooltip}"><a class="person" href="listOrg.html{$ref}"><xsl:apply-templates/></a></span>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='transcription']//tei:title">
        <xsl:variable name="ref" select="@ref"/>
        <xsl:variable name="id" select="substring-after(@ref,'#')"/>
        <xsl:variable name="tooltip">
            <xsl:if test="//tei:div[@type='index']//tei:bibl[@xml:id=$id]">
                <xsl:apply-templates select="//tei:div[@type='index']//tei:bibl[@xml:id=$id]" mode="tooltip"/>
            </xsl:if>
        </xsl:variable>
        <!--todo a.cite à la place de cite -->
        <xsl:choose>
            <xsl:when test="//tei:div[@type='index']//tei:bibl[@xml:id=$id]">
                <span data-tooltip='true' aria-haspopup="true" class="has-tip" data-disable-hover="false" tabindex="1" title="{$tooltip}"><a class="cite" href="listbib.html{$ref}"><xsl:apply-templates/></a></span>
            </xsl:when>
            <xsl:otherwise>
                <cite><xsl:apply-templates/></cite>
            </xsl:otherwise>
        </xsl:choose>                
    </xsl:template>
    
    <xsl:template match="tei:front//tei:title">
        <cite><xsl:apply-templates/></cite>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='transcription']//tei:rs[@type='bibl']">
        <xsl:variable name="ref" select="@ref"/>
        <xsl:variable name="id" select="substring-after(@ref,'#')"/>
        <xsl:variable name="tooltip">
            <xsl:if test="//tei:div[@type='index']//tei:bibl[@xml:id=$id]">
                <xsl:apply-templates select="//tei:div[@type='index']//tei:bibl[@xml:id=$id]" mode="tooltip"/>
            </xsl:if>
        </xsl:variable>        
        <span data-tooltip='true' aria-haspopup="true" class="has-tip" data-disable-hover="false" tabindex="1" title="{$tooltip}"><a class="person" href="listbib.html{$ref}"><xsl:apply-templates/></a></span>
    </xsl:template>
    
    <!-- ********** variables générales ********** -->
    
    <!-- header et footer html. -->
    
    <xsl:include href="include/variables.xsl"/>
    
    <!-- ********** index ********** -->
    
    <!--/!\/!\/!\/!\ les notes d'identification au survole (@mode='tooltip') sont gérées conjointement avec les entrées d'index. Voir le document index.xsl pour modification /!\/!\/!\/!\-->
    
    <xsl:include href="include/index.xsl"/>
    
    <!--********** calendrier (accès calendaire) **********-->
    
    <xsl:include href="include/calendrier.xsl"/>
    
    <!--********** cartographie (Mique-Belprey-interactive) **********-->
    
    <xsl:include href="include/cartographies.xsl"/>
    
    <!--********** biographies (Durival) **********-->
    
    <xsl:include href="include/biographies.xsl"/>
    
<<<<<<< HEAD
    <xsl:template match="/" mode="carte">
        <xsl:result-document format="html" encoding="UTF-8" href="html/cartes.html">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <title>Édition du journal de Nicolas Durival ß</title>
                    <meta charset="utf-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                    <link rel="stylesheet" href="../css/app.css"/>
                    <link rel="stylesheet" href="../css/foundation.css"/>
                    <link rel="stylesheet" href="../css/timeliner/timeliner.css" type="text/css"
                        media="screen"/>
                    <link rel="stylesheet" href="../js/timeliner/vendor/venobox/venobox.css"
                        type="text/css" media="screen"/>
                    <link
                        href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,900,700"
                        rel="stylesheet" type="text/css"/>
                    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900,300"
                        rel="stylesheet" type="text/css"/>
                    <script>
                        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                        
                        ga('create', 'UA-78667211-1', 'auto');
                        ga('send', 'pageview');                            
                    </script>
                </head>
                <body>
                    <xsl:copy-of select="$header"/>
                    <div class="row">
                        <div class="large-12">
                            <h2 class="text-center edito2">Cartes</h2>
                            <p class="edito"/>
                            <div class="large-4 medium-12 columns">
                                <div>
                                    <!-- <h3 class="text-center edito2">Nancy en 1754</h3> -->
                                    <br/>
                                </div>
                                <a href="belprey.html" target="blank">
                                    <img class="float-center" src="../images/vignettes/vignetteBelprey.gif"/>
                                </a>
                                <h3 class="text-center edito2">Nancy en 1754</h3>
                                <br/>
                                <h4 class="edito">Thomas Belprey (1713-1786)</h4>
                                <cite class="edito">Plan général des deux villes de Nancy et des
                                    nouveaux édifices que sa Majesté le roy de Pologne, duc de
                                    Lorraine et de Bar etc... y a fait construire. Levé par
                                    Belprey... en 1754.</cite>
                                <br/>
                                <p class="edito">Ce plan de Thomas Belprey présente une vue en
                                    perspective de la ville en 1754, soit avant l'achèvement de tous
                                    les travaux voulus par Stanislas. Il comporte douze vignettes
                                    qui représentent les principaux nouveaux bâtiments de la ville.
                                </p>
                            </div>
                            <div class="large-4 medium-12 columns">
                                <div>
                                    <br/>
                                    <a href="mique.html" target="blank"><img class="float-center" src="../images/vignettes/vignetteB543956101_H_FG_ES_00014.gif" /></a>
                                </div>
                                <h3 class="text-center edito2">Nancy en 1778</h3>
                                <br/>
                                <h4 class="edito">Claude Mique (1714-1796)</h4>
                                <cite class="edito">Plan des villes, citadelle et faubourgs de
                                    Nancy, dédié à la Reine par... C. Mique, architecte de feu Roi
                                    de Pologne à Nancy.</cite>
                                <p class="edito">Sur ce plan de l'architecte du roi, l'essentiel des
                                    transformations voulues par Stanislas ont été réalisées. On y
                                    voit l'université (actuelle bibliothèque Stanislas), et le début
                                    de la destruction des bastions. Celui des Michottes a déjà
                                    disparu, laissant place à la nouvelle place de Grève.</p>
                            </div>
                            <div class="large-4 medium-12 columns">
                                <div>
                                    <br/>
                                    <a href="cartographie.html" target="blank"><img class="float-center" src="../images/vignettes/vignetteCarte.gif"/></a>
                                    <h3 class="text-center edito2">Nancy aujourd'hui</h3>
                                    <br/>
                                    <cite class="edito">La ville de Nancy telle qu'évoquée par
                                        Durival en 1765-1766 sur un plan contemporain.</cite>
                                    <p class="edito"> Sur ce plan de nancy, les lieux cités par
                                        Durival sont signalés par une icône (avec une distinction
                                        pour le civil, le religieux et le militaire). </p>
                                    <p>Cette superposition redessine la ville telle que Durival l'a
                                        parcouru et donne accès à des informations sur des lieux qui
                                        sont toujours visibles, ont été transformés ou qui parfois
                                        ont disparu.</p>
                                </div>
                            </div>
                            <br/>
                        </div>
                    </div>
                    <xsl:copy-of select="$footer"/>
                    <!-- FOOTER -->
                    <script src="../js/vendor/jquery.js">/*Pour transformation xslt*/</script>
                    <script src="../js/vendor/modernizr.js">/*Pour transformation xslt*/</script>
                    <script src="../js/foundation.min.js">/*Pour transformation xslt*/</script>
                    <script type="text/javascript" src="../js/timeliner/timeliner.min.js"/>
                    <script type="text/javascript" src="../js/timeliner/vendor/venobox/venobox.min.js"/>
                    <script>$(document).foundation();</script>
                    <script>
                        $(document).ready(function() {
                        $.timeliner({});
                        });
                    </script>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
=======
    <!--********** histoires (bibliothèque) **********-->
>>>>>>> ProjetDurival/master
    
    <xsl:include href="include/histoire.xsl"/>
    
    <!-- *********** focus ***********-->
    
<<<<<<< HEAD
    <xsl:template match="//tei:div[@type='index'][descendant::tei:listPlace[@xml:id='listPlace']][descendant::tei:listOrg[@xml:id='listOrg']]" mode="cartographie">
        <!--<xsl:template match="//tei:listPlace[@xml:id='listPlace']" mode="cartographie">-->        
        <xsl:result-document format="html" encoding="UTF-8" href="html/cartographie.html">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    <title>Édition du journal de Nicolas Durival ß</title>
                    <meta charset="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                    <link rel="stylesheet" href="../css/foundation.css" />
                    <link rel="stylesheet" href="../css/app.css" />                    
                    <link rel="stylesheet" href="../js/leaflet/leaflet.css" />  
                    
                    <!-- Font -->
                    <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,900,700' rel='stylesheet' type='text/css'/>                     
                    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'/>
                    <script>
                        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                        
                        ga('create', 'UA-78667211-1', 'auto');
                        ga('send', 'pageview');                            
                    </script>
                </head>
                <body>
                    <xsl:copy-of select="$mapHeader"/>                    
                    <div id="mapid">
                        <xsl:comment>carte OSM</xsl:comment>
                    </div>
                    <script src="../js/leaflet/leaflet.js"></script>
                    <script src="../js/cartographie/cartographie.js"></script>
                    <xsl:result-document format="frise" href="js/cartographie/cartographie.js">
                        var mymap = L.map('mapid').setView([48.692054, 6.184417], 15);
                        //http://mapwarper.net/maps/tile/13564/{z}/{x}/{y}.png
                        //https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpandmbXliNDBjZWd2M2x6bDk3c2ZtOTkifQ._QA7i5Mpkd_m30IGElHziw
                        var base1 = L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpandmbXliNDBjZWd2M2x6bDk3c2ZtOTkifQ._QA7i5Mpkd_m30IGElHziw', {
                        maxZoom: 20, attribution: 'Map data ©; OpenStreetMap contributors, ' +
                        'CC-BY-SA, ' +
                        'Imagery © Mapbox',
                        id: 'mapbox.streets'
                        }).addTo(mymap);
                        
                        //var base2 = L.tileLayer('http://mapwarper.net/maps/tile/13564/{z}/{x}/{y}.png', {
                        //maxZoom: 20, attribution: 'Map data ©; OpenStreetMap contributors, ' +
                        //'CC-BY-SA, ' +
                        //'Imagery © Mapbox',
                        //id: 'mapbox.streets'
                        //})/*.addTo(mymap)*/;                                                
                        
                        // ICONES SUPPLEMENTAIRES
                        var iconA = L.icon({
                        iconUrl: '../js/leaflet/images/marker-icon-A.png',

                        iconRetinaUrl: '../js/leaflet/images/marker-icon-A2x.png',
                        iconSize: [32, 37],
                        iconAnchor:[16,36],
                        popupAnchor: [-3, -30]

                        });
                        
                        var iconB = L.icon({
                        iconUrl: '../js/leaflet/images/marker-icon-B.png',

                        iconRetinaUrl: '../js/leaflet/images/marker-icon-B2x.png',
                        iconSize: [32, 37],
                        iconAnchor:[16,36],
                        popupAnchor: [-3, -30]

                        });
                        
                        
                        var polygon = L.polygon(
                        [
                        [
                        
                        48.700336511159286,6.178371906280517
                        ],
                        [
                        
                        48.70103044460664,6.180174350738525
                        ],
                        [
                        
                        48.700039108181784,6.180174350738525
                        ],
                        [
                        
                        48.699288511900996,6.1806464195251465
                        ],
                        [
                        
                        48.69991164922492,6.183071136474609
                        ],
                        [
                        
                        48.70039315914625,6.184787750244141
                        ],
                        [
                        
                        48.70076136950753,6.186268329620361
                        ],
                        [
                        
                        48.69792891278156,6.1882853507995605
                        ],
                        [
                        
                        48.69672507040967,6.189079284667968
                        ],
                        [
                        
                        48.69557785265497,6.190195083618164
                        ],
                        [
                        
                        48.69420398958636,6.189594268798828
                        ],
                        [
                        
                        48.692688447661205,6.189508438110352
                        ],
                        [
                        
                        48.69195190614077,6.188392639160156
                        ],
                        [
                        
                        48.68974221693151,6.189208030700684
                        ],
                        [
                        
                        48.68785823865308,6.18903636932373
                        ],
                        [
                        
                        48.686300007873044,6.188371181488037
                        ],
                        [
                        
                        48.68560587136641,6.186847686767578
                        ],
                        [
                        
                        48.68529421512887,6.184358596801758
                        ],
                        [
                        
                        48.68552087440201,6.182384490966797
                        ],
                        [
                        
                        48.686030854036765,6.180968284606934
                        ],
                        [
                        
                        48.688665666546264,6.178951263427734
                        ],
                        [
                        
                        48.68896313671706,6.176869869232177
                        ],
                        [
                        
                        48.6903088131528, 6.17556095123291
                        ],
                        [
                        
                        48.691116201752365,6.174981594085693
                        ],
                        [
                        
                        48.69176776907712, 6.17556095123291
                        ],
                        [
                        
                        48.69274510425496,6.176290512084961
                        ],
                        [
                        
                        48.69356661769983, 6.176462173461914
                        ],
                        [
                        
                        48.69404818831477, 6.177771091461182
                        ],
                        [
                        
                        48.69503964272374,6.17506742477417
                        ],
                        [
                        
                        48.69655511387344, 6.17605447769165
                        ],
                        [
                        
                        48.69724909945107,6.174252033233643
                        ],
                        [
                        
                        48.69832546631806, 6.175603866577148
                        ],
                        [
                        
                        48.69883531627474, 6.176483631134033
                        ],
                        [
                        
                        48.69960008152723, 6.176333427429199
                        ],
                        [
                        
                        48.70047813100715, 6.176204681396484
                        ],
                        [
                        
                        48.700336511159286,6.178371906280517
                        ]
                        ],{color:'#fc0', opacity:0.5}
                        ).bindPopup('<b>Limites approximatives de la ville en 1766</b>').addTo(mymap);
                        
                        var religious = new L.LayerGroup().addTo(mymap);
                        var civil = new L.LayerGroup().addTo(mymap);
                        var military = new L.LayerGroup().addTo(mymap);
                        
                        <xsl:for-each select="//tei:org[descendant::tei:geo]">
                            <xsl:variable name="id" select="@xml:id"/>
                            <xsl:variable name="href">&lt;a href='listPlace.html<xsl:value-of select="concat('#',$id)"/>'&gt;<xsl:value-of select="normalize-space(tei:orgName)"/>&lt;/a&gt;</xsl:variable>
                            <xsl:choose>
                                <xsl:when test="@type='religious'">
                                    <xsl:text>L.marker([</xsl:text>                                
                                    <xsl:value-of select="normalize-space(.//tei:geo)"/>
                                    <xsl:text>], {icon:iconB})</xsl:text>
                                    <xsl:text>.bindPopup("</xsl:text><xsl:value-of select="$href"/>                            
                                    <xsl:choose>
                                        <xsl:when test="tei:desc">                                        
                                            <xsl:text>&lt;br /&gt;</xsl:text>                                      
                                            <xsl:value-of select="normalize-space(tei:desc)"/>                                    
                                            <xsl:text>").addTo(religious); </xsl:text>                                        
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>").addTo(religious); </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:when test="@type='military'">
                                    <xsl:text>L.marker([</xsl:text>                                
                                    <xsl:value-of select="normalize-space(.//tei:geo)"/>
                                    <xsl:text>], {icon:iconA})</xsl:text>
                                    <xsl:text>.bindPopup("</xsl:text><xsl:value-of select="$href"/>                            
                                    <xsl:choose>
                                        <xsl:when test="tei:desc">                                        
                                            <xsl:text>&lt;br /&gt;</xsl:text>                                      
                                            <xsl:value-of select="normalize-space(tei:desc)"/>                                    
                                            <xsl:text>").addTo(military); </xsl:text>                                        
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>").addTo(military); </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>L.marker([</xsl:text>                                
                                    <xsl:value-of select="normalize-space(.//tei:geo)"/>
                                    <xsl:text>])</xsl:text>
                                    <xsl:text>.bindPopup("</xsl:text><xsl:value-of select="$href"/>                            
                                    <xsl:choose>
                                        <xsl:when test="tei:desc">                                        
                                            <xsl:text>&lt;br /&gt;</xsl:text>                                      
                                            <xsl:value-of select="normalize-space(tei:desc)"/>                                    
                                            <xsl:text>").addTo(civil); </xsl:text>                                        
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>").addTo(civil); </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>                                                                        
                        </xsl:for-each>
                        
                        <!--var popup = L.popup();-->
                        <xsl:for-each select="//tei:place[descendant::tei:geo]">
                            <xsl:variable name="id" select="@xml:id"/>
                            <xsl:variable name="href">&lt;a href='listPlace.html<xsl:value-of select="concat('#',$id)"/>'&gt;<xsl:value-of select="normalize-space(tei:placeName[2][not(@type='today')])"/>&lt;/a&gt;</xsl:variable>
                            <xsl:choose>
                                <xsl:when test="@type='religious'">
                                    <xsl:text>L.marker([</xsl:text>                                
                                    <xsl:value-of select="normalize-space(.//tei:geo)"/>
                                    <xsl:text>], {icon:iconB})</xsl:text>
                                    <xsl:text>.bindPopup("</xsl:text><xsl:value-of select="$href"/>                            
                                    <xsl:choose>
                                        <xsl:when test="tei:desc">                                        
                                            <xsl:text>&lt;br /&gt;</xsl:text>                                      
                                            <xsl:value-of select="normalize-space(tei:desc)"/>                                    
                                            <xsl:text>").addTo(religious); </xsl:text>                                        
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>").addTo(religious); </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:when test="@type='military'">
                                    <xsl:text>L.marker([</xsl:text>                                
                                    <xsl:value-of select="normalize-space(.//tei:geo)"/>
                                    <xsl:text>], {icon:iconA})</xsl:text>
                                    <xsl:text>.bindPopup("</xsl:text><xsl:value-of select="$href"/>                            
                                    <xsl:choose>
                                        <xsl:when test="tei:desc">                                        
                                            <xsl:text>&lt;br /&gt;</xsl:text>                                      
                                            <xsl:value-of select="normalize-space(tei:desc)"/>                                    
                                            <xsl:text>").addTo(military); </xsl:text>                                        
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>").addTo(military); </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>L.marker([</xsl:text>                                
                                    <xsl:value-of select="normalize-space(.//tei:geo)"/>
                                    <xsl:text>])</xsl:text>
                                    <xsl:text>.bindPopup("</xsl:text><xsl:value-of select="$href"/>                            
                                    <xsl:choose>
                                        <xsl:when test="tei:desc">                                        
                                            <xsl:text>&lt;br /&gt;</xsl:text>                                      
                                            <xsl:value-of select="normalize-space(tei:desc)"/>                                    
                                            <xsl:text>").addTo(civil); </xsl:text>                                        
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>").addTo(civil); </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>                                                                        
                        </xsl:for-each>
                        
                        var baseLayers = null;
                        /*var baseLayers = {
                            'Fond de carte contemporain': base1,
                            'Carte ancienne': base2
                        };*/                                                
                        
                        var overlayMaps = {
                        "Établissements religieux": religious,
                        "Établissements civils": civil,
                        "Établissements militaires": military,
                        "Limites de la ville en 1766": polygon
                        };
                        
                                                                                                                                                
                        L.control.layers(baseLayers, overlayMaps).addTo(mymap);
                        
                        // function onMapClick(e) {
                        //    popup
                        //       .setLatLng(e.latlng)
                        //       .setContent("You clicked the map at " + e.latlng.toString())
                        //       .openOn(mymap);
                        // }
                        
                        
                        // mymap.on('click', onMapClick);
                    </xsl:result-document>
                    <script src="../js/vendor/jquery.js"></script>
                    <script src="../js/foundation.min.js"></script>                    
                    <script src="../js/vendor/modernizr.js"></script>
                    <script src="../js/modernisation/modernisation.js"></script>                    
                    <script>$(document).foundation();</script>
                </body>                
            </html>
        </xsl:result-document>
        
        <!-- Hosting24 Analytics Code -->
        <script type="text/javascript" src="http://stats.hosting24.com/count.php"></script>
        <!-- End Of Analytics Code -->                
    </xsl:template>
    
    <!-- *********** BIO ********** -->
    
    <xsl:template match="//tei:front/tei:div[@type='bio']" mode="bio">
        <xsl:for-each select="tei:div">
            <xsl:variable name="url" select="substring-before(@xml:id,'Bio')"/>
            <xsl:result-document format="html" encoding="UTF-8" href="html/{$url}.html">
                <html>
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                        <title>Édition du journal de Nicolas Durival ß</title>
                        <meta charset="utf-8" />
                        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                        <link rel="stylesheet" href="../css/app.css" />
                        <link rel="stylesheet" href="../css/foundation.css" />                                                                   
                        <link href="../css/lightbox/lightbox.css" rel="stylesheet" />
                        <link rel="stylesheet" href="../css/timeliner/timeliner.css" type="text/css" media="screen"/>
                        <link rel="stylesheet" href="../js/timeliner/vendor/venobox/venobox.css" type="text/css" media="screen"/>
                        
                        <!-- Font -->
                        <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,900,700' rel='stylesheet' type='text/css'/>                     
                        <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'/>
                        <script>
                            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                            })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                            
                            ga('create', 'UA-78667211-1', 'auto');
                            ga('send', 'pageview');                            
                        </script>
                    </head>
                    <body>
                        <xsl:copy-of select="$header"/>
                        <div class="row content">
                            <div class="large-12">            
                                <div class="container">
                                    <h1><xsl:value-of select="./tei:head[@n=1]"/></h1>
                                    <xsl:if test="./tei:p">
                                        <xsl:for-each select="./tei:p">
                                            <p class="lead">
                                                <xsl:apply-templates select="."/>
                                            </p>
                                        </xsl:for-each>
                                    </xsl:if>
                                    <div id="timeline" class="timeline-container">
                                        <button class="timeline-toggle">+ expand all</button>
                                        <br class="clear" />
                                        <xsl:for-each select="tei:div">
                                            <div class="timeline-wrapper">
                                                <h2 class="timeline-time"><span><xsl:value-of select="tei:head[@n='2']"/></span></h2>
                                                <dl class="timeline-series">
                                                    <xsl:for-each select="tei:div">
                                                        <xsl:variable name="id" select="tei:head[@n='3']/@xml:id"/>
                                                        <span class="tick tick-before" />
                                                        <dt class="timeline-event" id="{$id}"><a><xsl:value-of select="tei:head[@n='3']"/></a></dt>
                                                        <span class="tick tick-after" />
                                                        <dd class="timeline-event-content" id="{$id}EX">
                                                            <xsl:if test=".//tei:graphic">
                                                                <div class="media">
                                                                    <a class="focus" href="../images/{.//tei:graphic/@url}.jpg" data-lightbox="bio">
                                                                        <img src="../images/{.//tei:graphic/@url}.jpg" alt="Placard"/>
                                                                    </a>
                                                                    <!--<a class="focus" href="../images/{.//tei:graphic/@url}.jpg" data-lightbox="#"><img src="../images/{.//tei:graphic/@url}.jpg" alt="Placard"/></a>-->                                                                    
                                                                </div><!-- /.media -->
                                                            </xsl:if>
                                                            <xsl:for-each select="tei:p">
                                                                <p>
                                                                    <xsl:apply-templates select="."/>
                                                                </p>
                                                            </xsl:for-each>
                                                            <br class="clear" />
                                                        </dd>
                                                    </xsl:for-each>                                                     
                                                </dl> 
                                            </div> 
                                        </xsl:for-each>
                                    </div>
                                </div>                           
                            </div>
                        </div>
                        <xsl:copy-of select="$footer"/>                        
                        <script src="../js/vendor/jquery.js">/*Pour transformation xslt*/</script>
                        <script src="../js/vendor/modernizr.js">/*Pour transformation xslt*/</script>
                        <script src="../js/foundation.min.js">/*Pour transformation xslt*/</script>
                        <script src="../js/lightbox/lightbox.js"></script>
                        <script type="text/javascript" src="../js/timeliner/timeliner.min.js"></script>
                        <script type="text/javascript" src="../js/timeliner/vendor/venobox/venobox.min.js"></script>
                        <script>$(document).foundation();</script>
                        <script>
                            $(document).ready(function() {
                            $.timeliner({});
                            });
                        </script>                    
                    </body>
                </html> 
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
<!-- ******************History************************ -->
    
    <xsl:template match="//tei:front/tei:div[@type='history']/tei:div[@xml:id='bibliothequeHisto']" mode="history">
        <xsl:result-document format="html" encoding="UTF-8" href="html/bibliotheque.html">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    <title>Édition du journal de Nicolas Durival ß</title>
                    <meta charset="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                    <link rel="stylesheet" href="../css/app.css" />
                    <link rel="stylesheet" href="../css/foundation.css" />                                                                   
                    <link href="../css/lightbox/lightbox.css" rel="stylesheet" />
                    <link rel="stylesheet" href="../css/timeliner/timeliner.css" type="text/css" media="screen"/>
                    <link rel="stylesheet" href="../js/timeliner/vendor/venobox/venobox.css" type="text/css" media="screen"/>
                    
                    <!-- Font -->
                    <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,900,700' rel='stylesheet' type='text/css'/>                     
                    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'/>
                    <script>
                        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                        
                        ga('create', 'UA-78667211-1', 'auto');
                        ga('send', 'pageview');                            
                    </script>
                </head>
                <body>
                    <xsl:copy-of select="$header"/>
                    <div class="row content">
                        <div class="large-12">            
                            <div class="container">
                                <h1><xsl:value-of select="./tei:head[@n=1]"/></h1>
                                <xsl:if test="./tei:p">
                                    <xsl:for-each select="./tei:p">
                                        <p class="lead">
                                            <xsl:apply-templates select="."/>
                                        </p>
                                    </xsl:for-each>
                                </xsl:if>
                                <div id="timeline" class="timeline-container">
                                    <button class="timeline-toggle">+ expand all</button>
                                    <br class="clear" />
                                    <xsl:for-each select="tei:div">
                                        <div class="timeline-wrapper">
                                            <h2 class="timeline-time"><span><xsl:value-of select="tei:head[@n='2']"/></span></h2>
                                            <dl class="timeline-series">
                                                <xsl:for-each select="tei:div">
                                                    <xsl:variable name="id" select="tei:head[@n='3']/@xml:id"/>
                                                    <span class="tick tick-before" />
                                                    <dt class="timeline-event" id="{$id}"><a><xsl:value-of select="tei:head[@n='3']"/></a></dt>
                                                    <span class="tick tick-after" />
                                                    <dd class="timeline-event-content" id="{$id}EX">
                                                        <xsl:if test=".//tei:graphic">
                                                            <div class="media">
                                                                <a class="focus" href="../images/{.//tei:graphic/@url}.jpg" data-lightbox="bio">
                                                                    <img src="../images/{.//tei:graphic/@url}.jpg" alt="Placard"/>
                                                                </a>
                                                                <!--<a class="focus" href="../images/{.//tei:graphic/@url}.jpg" data-lightbox="#"><img src="../images/{.//tei:graphic/@url}.jpg" alt="Placard"/></a>-->                                                                    
                                                            </div><!-- /.media -->
                                                        </xsl:if>
                                                        <xsl:for-each select="tei:p">
                                                            <p>
                                                                <xsl:apply-templates select="."/>
                                                            </p>
                                                        </xsl:for-each>
                                                        <br class="clear" />
                                                    </dd>
                                                </xsl:for-each>                                                     
                                            </dl> 
                                        </div> 
                                    </xsl:for-each>
                                </div>
                            </div>                           
                        </div>
                    </div>
                    <xsl:copy-of select="$footer"/>                        
                    <script src="../js/vendor/jquery.js">/*Pour transformation xslt*/</script>
                    <script src="../js/vendor/modernizr.js">/*Pour transformation xslt*/</script>
                    <script src="../js/foundation.min.js">/*Pour transformation xslt*/</script>
                    <script src="../js/lightbox/lightbox.js"></script>
                    <script type="text/javascript" src="../js/timeliner/timeliner.min.js"></script>
                    <script type="text/javascript" src="../js/timeliner/vendor/venobox/venobox.min.js"></script>
                    <script>$(document).foundation();</script>
                    <script>
                        $(document).ready(function() {
                        $.timeliner({});
                        });
                    </script>                    
                </body>
            </html> 
        </xsl:result-document>
    </xsl:template>
    
    <!-- *********** Autres pages Web ***********-->


    <xsl:template match="/" mode="focus">
        <xsl:result-document format="html" encoding="UTF-8" href="html/focus.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <title>Édition du journal de Nicolas Durival ß</title>
                    <meta charset="utf-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                    <link rel="stylesheet" href="../css/app.css"/>
                    <link rel="stylesheet" href="../css/foundation.css"/>
                    <link rel="stylesheet" href="../css/timeliner/timeliner.css" type="text/css"
                        media="screen"/>
                    <link rel="stylesheet" href="../js/timeliner/vendor/venobox/venobox.css"
                        type="text/css" media="screen"/>
                    <link
                        href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,900,700"
                        rel="stylesheet" type="text/css"/>
                    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900,300"
                        rel="stylesheet" type="text/css"/>
                    <script>
                        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                        
                        ga('create', 'UA-78667211-1', 'auto');
                        ga('send', 'pageview');                            
                    </script>
                </head>
                <body>
                    <xsl:copy-of select="$header"/>
                    <div class="row content">
                        <div class="large-12">
                            <h2 class="text-center edito2">Focus</h2>
                            <br/>
                            <div class="media-object">
                                <div class="media-object-section">
                                    <div class="thumbnail">
                                        <a href="durival.html">
                                            <img
                                                src="../images/vignettes/vignetteM0514_39-22-2_b_MBo.png"
                                                width="200"/>
                                        </a>
                                    </div>
                                </div>
                                <div class="media-object-section">
                                    <h2 class="edito">Nicolas Durival (1713-1795)</h2>
                                    <p class="edito">Fils d'un valet de garde-robe du duc Léopold,
                                        Jacques Luton, Nicolas Durival met sa carrière au service du
                                        nouveau souverain, Stanislas Leszczynski, roi de Pologne,
                                        dès l'arrivée de celui-ci dans le duché de Lorraine. Homme
                                        de confiance du duc, il exerce différentes fonctions au plus
                                        près de la cour de Lunéville avant de devenir lieutenant
                                        général de police de la ville de Nancy. Il mène
                                        parallèlement une activité de statisticien et d'historien,
                                        son Mémoire sur la Lorraine et le Barrois étant unanimement
                                        salué dès sa parution.</p>
                                </div>
                            </div>
                            <br/>
                            <div class="media-object">
                                <div class="media-object-section">
                                    <div class="thumbnail">
                                        <a href="bibliotheque.html">
                                            <img
                                                src="../images/vignettes/vignetteStanislas_portrait.png"
                                                width="200"/>
                                        </a>
                                    </div>
                                </div>
                                <div class="media-object-section">
                                    <h2 class="edito">Histoire de la Bibliothèque de sa création à
                                        1799</h2>
                                    <p class="edito">Fondée par un édit de Stanislas du 28 décembre
                                        1750, la Bibliothèque entend favoriser la diffusion des
                                        idées nouvelles, le progrès des sciences et des arts. En un
                                        demi-siècle, elle connaîtra trois déménagements et une
                                        révolution.</p>
                                </div>
                            </div>
                            <div class="media-object">
                                <div class="media-object-section">
                                    <div class="thumbnail">
                                        <a href="stanislas.html">
                                            <img
                                                src="../images/vignettes/VignetteD-95-395_PM .png"
                                                width="200"/>
                                        </a>
                                    </div>
                                </div>
                                <div class="media-object-section">
                                    <h2 class="edito">Stanislas Leszczynski (1677-1766)</h2>
                                    <p class="edito"> Les deux dernières années de Stanislas. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- FOOTER -->
                    <xsl:copy-of select="$footer"/>
                    <script src="../js/vendor/jquery.js">/*Pour transformation xslt*/</script>
                    <script src="../js/vendor/modernizr.js">/*Pour transformation xslt*/</script>
                    <script src="../js/foundation.min.js">/*Pour transformation xslt*/</script>
                    <script type="text/javascript" src="../js/timeliner/timeliner.min.js"/>
                    <script type="text/javascript" src="../js/timeliner/vendor/venobox/venobox.min.js"/>
                    <script>$(document).foundation();</script>
                    <script>
                        $(document).ready(function() {
                        $.timeliner({});
                        });
                    </script>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <!--  ************************** bibliographie générale *****************************  -->
    
    <xsl:template match="tei:div[@type='bibl']//tei:author" mode="bibl">
        <xsl:choose>
            <xsl:when test="tei:forename and tei:surname">
                <span class="smallCaps"><xsl:apply-templates select="tei:surname"/></span><xsl:text> (</xsl:text><xsl:apply-templates select="tei:forename"/><xsl:text>)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <span class="smallCaps"><xsl:apply-templates select="tei:surname"/></span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
=======
    <xsl:include href="include/focus.xsl"/>
>>>>>>> ProjetDurival/master
    
    <!--********** bibliographie générale **********-->
    
    <xsl:include href="include/bibliographie.xsl"/>
    
    <!--********** galerie **********-->
    
    <xsl:include href="include/galerie.xsl"/>
    
    <!--********** a propos **********-->
    
    <xsl:include href="include/projecDesc.xsl"/>
    
</xsl:stylesheet>