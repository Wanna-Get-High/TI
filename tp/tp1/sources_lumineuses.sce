//Open the image
img = imread("ti-semaine-1-texte.png");

// Get width and height
height = size(img, 1);
width = size(img, 2);

// affiche limage
//imshow(img);

//on recupere lmage en niveau de gris
imgG = im2double(img);

// get the line 44
// : means the rest of the colums to reproduce the line
line44 = imgG(44,:);

//imshow(line44);

//noir = 0 blanc = 1

// Retrieve a square of 100x100 from the image
img100100 = imgG(1:100,1:100);

// Create a 3D representation of the image
plot3d(1:100,1:100,img100100);

// get current axes of the current loaded axes
//a = gca(); 

 // x, y, z begin -> end
//a.data_bounds = [0,0,0;100,100,1];

// ???
//a.color_map[];
