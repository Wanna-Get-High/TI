
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


function im = sousEch(img,n)

    img = img(:,:,1);
    img = im2double(img);
    
    c = size(img,1)/n
    l = size(img,2)/n
    
    new_img = zeros(c,l)
    
    for i = 1 : c
        for j = 1 : l
            
          for k = 1 : n
              for m = 1 : n
                  
                  x = (i*n)+(k-n)
                  y = (j*n)+(m-n)
                  
                  new_img(i,j) = new_img(i,j) + img(x,y);
                  
              end
          end
          
          new_img(i,j) = new_img(i,j) / (n*n);
          
        end
    end
    
    im =  new_img
endfunction



function im = surEch(img,n)
    
    img = img(:,:,1);
    img = im2double(img);

    c = size(img,1)
    l = size(img,2)
    
    new_img = zeros(c*n,l*n)
    
    for i = 1 : c
        for j = 1 : l
            
          for k = 1 : n
              for m = 1 : n
                  
               new_img((i*n)+(k-n),(j*n)+(m-n)) = img(i,j)
               
              end
          end
          
        end
    end
    
    im =  new_img
endfunction

function im = quantif(img,n)
    quantificateur = 2^n
    div = 256/quantificateur
    
    im = img ./ div
    
    round(im)

    im = im.* div
endfunction

