//un cube de côté 1 m dont le barycentre est l'origine du repère monde, 
// et dont les côtés sont parallèles aux axes de ce repère.

// TODO create a cude with numLign and numCol

exec ("functions.sci", -1);

// le cube
c = cube();

//axe = [1:2];
//plot3d (axe, axe, c);

// la grille
g = grille();

// segments de la grille
s = segment();

// centre optique (0, 0, -5 m), axe optique orienté selon z, 
// verticale de la caméra selon y.  ''
y = [0,1,0];
centreOpt = translation(0,0,-5);
axeOpt = RotationZ(90);

matriceExtrinsec = centreOpt*y;
//matriceExtrinsec = axeOpt*y;
