
function imgR = redColorsOf(img)
    imgR = img;
    imgR(:,:,2) = img(:,:,1)*0;
    imgR(:,:,3) = img(:,:,1)*0;
endfunction

function imgG = greenColorsOf(img)
    imgG = img;
    imgG(:,:,1) = img(:,:,1)*0;
    imgG(:,:,3) = img(:,:,1)*0;
endfunction

function imgB = blueColorsOf(img)
    imgB = img;
    imgB(:,:,1) = img(:,:,1)*0;
    imgB(:,:,2) = img(:,:,1)*0;
endfunction

function m = getDimensionsOf(mat)
    m(1) = size(mat,1);
    m(2) = size(mat,2);
    m(3) = size(mat,3);
endfunction
