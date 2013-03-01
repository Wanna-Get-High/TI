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

translation = Translation(1,1,-5);
rotation = RotationX(90);

rotation = rotation * RotationY(45);

rotation = RotationZ(45);
position = translation * rotation;

c = position  * c;

tiAfficheObjet2D(1,[5,5],c,sc);
// le test pour etre sur.


// faire le liens avec rotation.
// Avant de faire la rotation on la camera regarde dans la direction de laxe Z
// Donc les axes X et Y sont horizontaux par rapport a la camera.
// Afin davoir laxe Y a la verticale il suffit de faire une rotation de laxeX de
// 90 deg.

//matExtr = translation * rotation;

//c2=matExtr*c;
//project = projection(1,c2);
//matIntrinsec = chgtRepere(0.5,0.5,0,0,project);
//tiAfficheObjet2D(1,[5,5],matIntrinsec,sc);

//------------------------------------------------------------------------
// Axe optique selon la diagonale principale du repère, regardant 
// le centre du repère. Centre optique situé à une distance de 5 mètres 
// du centre du repère. Verticale de la caméra dans un plan contenant z.
//------------------------------------------------------------------------

//rotx = RotationX(45);
//roty = RotationY(135);
//translation = trans(2,0,-5);

position1 = Translation(0,0,5)*RotationY(135)*RotationX(45);

c2=position1*c;

matIntrinsec = Intrinsec(20,8.8/800,6.6/600,400,300,c2);
tiAfficheObjet2D(1,[5,5],matIntrinsec,sc);

//matIntrinsec(1,:) = matIntrinsec(1,:) ./ matIntrinsec(3,:)
//matIntrinsec(2,:) = matIntrinsec(2,:) ./ matIntrinsec(3,:)
//matIntrinsec(3,:) = matIntrinsec(3,:) ./ matIntrinsec(3,:)

//matIntrinsec(2,:)
//matIntrinsec(3,:)

//matIntrinsec * matIntrinsec(3,:)
//matIntrinsec * matIntrinsec(3,:)
//matIntrinsec

//tiAfficheObjet2D(1,[5,5],matIntrinsec,sc);



// calculer la matrice intrinsèque d'une caméra dont 

///// MATRICE EXTRINSEC ///// 
// le centre de l'image est situé en haut à gauche du capteur, 
// l'axe des x étant orienté vers la droite et l'axe des y vers le bas.

matExtrin = RotationX(90) ;

///// MATRICE INTRINSEC /////
// le capteur rectangulaire comporte 600 lignes de 800 pixels ; 
// ses pixels sont carrés ; 
// le capteur d'image est un rectangle de côtés 6.6 et 8.8 millimètres ; 
// l'objectif a une distance focale de 20 millimètres (0.02 m) ;

matExtrin = matExtrin * c;


projec = projection(20, c);
matIntrinsec = chgtRepere(6.6/600,8.8/800,300,400,projec);

//tiAfficheObjet2D(1,[800,800],matIntrinsec,sc);

// Affichages


// appliquer au cube
//c2=matExtr*c;
//project = projection(10,c2);
//matIntrinsec = chgtRepere(0.5,0.5,1,1,project);

// affichage du cube





