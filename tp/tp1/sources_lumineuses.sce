img = imread("Z:\Mes documents\workspace\TI\tp1\ti-semaine-1-texte.png");
height = size(img, 1);
width = size(img, 2);
//imshow(img);
imgG = im2double(img);

line44 = imgG(44,:); // : means the rest of the line
//imshow(line44);
//noir = 0 blanc = 1
img100100 = imgG(1:100,1:100);
//data_bounds();
plot3d(1:100,1:100,img100100);
a = gca(); // get current axes of the current loaded axes
a.data_bounds = [0,0,0;100,100,1]; // x, y, z begin -> end
//a.color_map[];
