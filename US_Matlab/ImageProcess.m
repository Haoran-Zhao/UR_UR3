function ImageProcess(img,pxl2mm,level)
    if nargin<3
        level = 0.3;
    end
    gray_img = mat2gray(img);
    B_img = im2bw(gray_img,level);
    % 'imcomplement' to inverse white and black in binary image
    % 'imfill' fill image region and holes
    
    se = strel('rectangle', [1,3]);
    filled_img = imclose(B_img,se);
    imshowpair(gray_img,filled_img,'Montage')
    
    Iregion = regionprops(filled_img, 'centroid');
    [labeled, numObjects] = bwlabel(filled_img, 4);
    stats = regionprops(labeled,'Eccentricity','Area', 'BoundingBox');
    areas = [stats.Area];
    eccentricities = [stats.Eccentricity];
    idxOfObj = find(eccentricities);
    statsDetects = stats(idxOfObj);
    
    figure, imshow(gray_img);
    hold on;
    center = [];
    for idx = 1 : length(idxOfObj)
        h = rectangle('Position', statsDetects(idx).BoundingBox);
        disp(statsDetects(idx).BoundingBox)
        center = [center; statsDetects(idx).BoundingBox(1)+0.5*statsDetects(idx).BoundingBox(3),statsDetects(idx).BoundingBox(2)+0.5*statsDetects(idx).BoundingBox(4)];
        string = sprintf('(%0.2f,%0.2f)', center(idx,1)*pxl2mm,center(idx,2)*pxl2mm); 
        text(statsDetects(idx).BoundingBox(1)-16,statsDetects(idx).BoundingBox(2)+statsDetects(idx).BoundingBox(4)-10,string,'Color','white','FontSize',5);
        set(h, 'EdgeColor', [0.75 0 0],'LineWidth', 1.5);
        hold on;
    end
end