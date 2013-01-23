// D�finition des �chantillons sur un axe
axe = [0:99] / 100 + 5e-3; //cr�er une matrice 1 dimention avec des valeurs (pour chaque element on a:  i = i / 100 + 5e-3 )
// D�finition des �l�ments de surface
x = ones (1:100)' * axe; // cr�er une matrice avec la matrice de 1 transposer * la matrice axe idem pour le calcule que axe
y = axe' * ones (1:100); // cr�er une matrice avec la matrice de axe transposer * la matrice 1 idem pour le calcule que axe
// Position de la source
xs = 0.5;
ys = 0.5;
// Calcul de la distance
// d = sqrt ((x - xs).^2 + (y - ys).^2);
// (x - xs).^2    ->  pour chaque valeur de la matrice x on lui soustrait xs(car un scalaire) et on l'eleve au carre
// si on voulais faire un produit matriciel on ferai juste ^2.
// on calcule la distance entre les valeurs de la matrice x et celle de y
 d = sqrt ((x - xs).^2 + (y - ys).^2);
// Trac� de la fonction distance
//plot3d (axe, axe, d);

// calculer, puis repr�senter sous forme d'image et de fonction 3D, 
// les valeurs d'�clairement re�ues par les �l�ments de la surface 
// plane �clair�e par la source ponctuelle isotrope. 

h = 0.5; // 50 cm
fluxEnerg = 100;
I = fluxEnerg / (2* %pi);
e0 = I / h^2;
eclairementISO = e0 * h^3 * ( h^2 + d.^2).^(-3/2);
//plot3d (axe, axe, eclairementISO);

// calculer, puis repr�senter sous forme d'image et de fonction 3D, 
// les valeurs d'�clairement re�ues par les �l�ments de la surface 
// plane �clair�e par une source ponctuelle lambertienne. 

eclairementLAM = e0 * h^4 * ( h^2 + d.^2).^(-2);
plot3d (axe, axe, eclairementLAM);




