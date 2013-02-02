// return a matrix representation of a cube
function m = cube()
    p1 = [-0.5, -0.5, -0.5, 1];
    p2 = [0.5, -0.5, -0.5, 1];
    p3 = [0.5, 0.5, -0.5, 1];
    p4 = [-0.5, 0.5, -0.5, 1];
    p5 = [-0.5, -0.5, 0.5, 1];
    p6 = [0.5, -0.5, 0.5, 1];
    p7 = [0.5, 0.5, 0.5, 1];
    p8 = [0.5, -0.5, 0.5, 1];
    
    m = [p1',p2',p3',p4',p5',p6',p7',p8'];
endfunction


function m = grille()
    x = [1:6] - 3.5;
    y = [-1.5,-1.5,-1.5,-1.5,-1.5,-1.5];
    z = zeros(1,24);
    w = ones(1,24);

    m = [x, x, x, x; y, y+1,y+2, y+3; z; w]
endfunction

function seg = segment()
    liste  = [1:5];
    liste2 = [1:6];
    seg = [liste, liste+6, liste+12, liste+18, liste2, liste2+6, liste2+12;
           liste+1, liste+7, liste+13, liste+19, liste2+6, liste2+12, liste2+18];
endfunction

// Calcule la matrice homogène définissant 
// la rotation d'un angle theta autour de l'axe X
function m = RotationX(theta)
    m = [1,     0,      0;
         0,cos(theta),-sin(theta);   
         0,sin(theta),cos(theta)]
endfunction

// Calcule la matrice homogène définissant 
// la rotation d'un angle theta autour de l'axe Y
function m = RotationY(theta)
    m = [cos(theta),0,sin(theta);
         0,         0,      0;   
         -sin(theta),0,cos(theta)]
endfunction

// Calcule la matrice homogène définissant 
// la rotation d'un angle theta autour de l'axe Z
function m = RotationZ(theta)
    m = [cos(theta),-sin(theta),0;
         sin(theta),cos(theta),0;   
         0         ,0         ,1]
endfunction

// Calcule la matrice homogène définissant 
// la translation de vecteur (x,y,z).
function m = translation(x,y,z)
    m = [1,0,0,x;
         0,1,0,y;
         0,0,1,z;
         0,0,0,1]
endfunction
