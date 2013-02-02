// Chargement des fonctions externes
exec ("image_discretes.sci", -1);

img = imread("ti-semaine-3-mire.png");

// get the sizes of the matrix
//size = getDimensionsOf(img);

// recupere les niveaux de gris pour la couleur rouge 
//imgRG = img(:,:,1);
// recupere les niveaux de gris pour la couleur bleu 
//imgGG = img(:,:,2);
// recupere les niveaux de gris pour la couleur vert 
//imgBG = img(:,:,3);
// affichage
//imshow([imgRG, imgGG, imgBG]);

// met les valeur pour le vert et le bleu a 0
//imgR = redColorsOf(img);
// met les valeur pour le rouge et le bleu a 0
//imgG = greenColorsOf(img);
// met les valeur pour le vert et le rouge a 0
//imgB = blueColorsOf(img);
// affichage
//imshow([imgR, imgG, imgB]);

// verification addition des 3 composante redonne image
//imgRes = img;
//imgRes = img(:,:,1)*0;
//imgRes = img(:,:,2)*0;
//imgRes = img(:,:,3)*0;
//imgRes(:,:,1) = imgR(:,:,1);
//imgRes(:,:,2) = imgG(:,:,2);
//imgRes(:,:,3) = imgB(:,:,3);
//imshow(imgRes);





