// Chargement des fonctions externes
exec ("image_discretes.sci", -1);

//img = imread("ti-semaine-3-mire.png");
//img = imread("ti-semaine-3-lena.png");
img = imread("ti-semaine-3-sinus.png");

// get the sizes of the matrix
//size = getDimensionsOf(img)

//------------------------------------------------------
// recupere les niveaux de gris pour la couleur rouge 
//imgRG = img(:,:,1);
// recupere les niveaux de gris pour la couleur bleu 
//imgGG = img(:,:,2);
// recupere les niveaux de gris pour la couleur vert 
//imgBG = img(:,:,3);
// affichage
//imshow([imgRG, imgGG, imgBG]);
//------------------------------------------------------


//------------------------------------------------------
// met les valeur pour le vert et le bleu a 0
//imgR = redColorsOf(img);

// met les valeur pour le rouge et le bleu a 0
//imgG = greenColorsOf(img);

// met les valeur pour le vert et le rouge a 0
//imgB = blueColorsOf(img);

// affichage
//imshow([imgR, imgG, imgB]);
//------------------------------------------------------


//------------------------------------------------------
// verification addition des 3 composante redonne image
//imgRes = img;
//imgRes(:,:,1) = img(:,:,1)*0;
//imgRes(:,:,2) = img(:,:,2)*0;
//imgRes(:,:,3) = img(:,:,3)*0;
//
//imgRes(:,:,1) = imgR(:,:,1);
//imgRes(:,:,2) = imgG(:,:,2);
//imgRes(:,:,3) = imgB(:,:,3);
//imshow(imgRes);
//------------------------------------------------------


//------------------------------------------------------
// sous echantillonnage
//ssEchImg = sousEch(img,1);
//imshow(ssEchImg);
//------------------------------------------------------


//------------------------------------------------------
// sur echantillonnage
//surEchImg = surEch(img,2);
//imshow(surEchImg);
//------------------------------------------------------


//------------------------------------------------------
// test sous echantillonage --> sur echantillonage
//ssEchImg = sousEch(img,2);
//surEchImg = surEch(ssEchImg,2);
//imshow(surEchImg);
//------------------------------------------------------


//------------------------------------------------------
// quantification
//img = im2double(img);
//img = img (:,:,2);
//img = quantif(img,1);
//imshow(img);

//img = im2double(img);
//imshow(img);

//// Composante rouge sous-échantillonnée d'un facteur 2 en horizontal 
//// et en vertical et quantifiée sur 5 bits
//img1 = img(:,:,1);
//img1 = sousEch(img1,2);
//img1 = quantif(img1,5);
//
//// Composante bleue sous-échantillonnée d'un facteur 4 en horizontal 
//// et en vertical et quantifiée sur 3 bits
//img2 = img (:,:,3);
//img2 = sousEch(img2,4);
//img2 = quantif(img2,3);
//
//// Sur-échantillonnage des composantes afin d avoir des matrices de même taille
//img1 = surEch(img1,2);
//img2 = surEch(img2,4);
//
//// On enregistre les resultats dans une nouvelle image
//newimg = zeros(size(img,1),size(img,2),3);
//newimg(:,:,1) = img1;
//newimg(:,:,2) = im2double(img(:,:,2));
//newimg(:,:,3) = img2;
//
//imshow(newimg);
//------------------------------------------------------


//------------------------------------------------------
// repliement de spectre

//img = sousEch(img,10);
//img = sousEch(img,20);
//img = sousEch(img,50);
img = sousEch(img,80);

//img = surEch(img,10);
//img = surEch(img,20);
//img = surEch(img,50);
img = surEch(img,80);


imshow(img);
//------------------------------------------------------







