//un cube de côté 1 m dont le barycentre est l'origine du repère monde, 
// et dont les côtés sont parallèles aux axes de ce repère.

// TODO create a cude with numLign and numCol

exec ("functions.sci", -1);

// le cube
c = cube();
// segment du cube
sc = segmentCube();

// la grille
g = grille();
// segments de la grille
sg = segmentGrille();

// centre optique (0, 0, -5 m), axe optique orienté selon z, 
// verticale de la caméra selon y.  ''
// matrice extrinsec = repere monde -> repere camera

translation = translation(0,0,-5);
rotation = RotationX(90);
matExtr = translation*rotation;

// Avant de faire la rotation on la camera regarde dans la direction de laxe Z
// Donc les axes X et Y sont horizontaux par rapport a la camera.
// Afin davoir laxe Y a la verticale il suffit de faire une rotation de laxeX de
// 90 deg.

// Axe optique selon la diagonale principale du repère, regardant 
// le centre du repère. Centre optique situé à une distance de 5 mètres 
// du centre du repère. Verticale de la caméra dans un plan contenant z.

//rotation1 =  RotationY(135) * RotationX(-45);
//translation1 = translation(0,0,-5);

matExtr1 = rotation1*translation;

// calculer la matrice intrinsèque d'une caméra dont 

///// MATRICE EXTRINSEC ///// 
// le centre de l'image est situé en haut à gauche du capteur, 
// l'axe des x étant orienté vers la droite et l'axe des y vers le bas.
matExtrin = RotationX(-90)*RotationY(90);

///// MATRICE INTRINSEC ///// 
// le capteur rectangulaire comporte 600 lignes de 800 pixels ; 
// ses pixels sont carrés ; 
// le capteur d'image est un rectangle de côtés 6.6 et 8.8 millimètres ; 
// l'objectif a une distance focale de 20 millimètres (0.02 m) ;

projec = projection(0.02, matExtrin);
matIntrinsec = chgtRepere(800,600,0.0066,0.0088,projec);


// Affichages

// appliquer au cube
c2=matExtr1*c;

// affichage du cube
tiAfficheObjet2D(1,[2,2],c2,sc);









