%% Color scheme and gradient generator in Matlab:
% Some on these color schemes have been extracted from:
% https://colorbrewer2.org

clc;
clear;

%% Color gradient : Sun
grd.sun = [];
sch.sun = flipud({
    [255,255,255]/255;
    [255,247,236]/255;
    [254,232,200]/255;
    [253,212,158]/255;
    [253,187,132]/255;
    [252,141,89]/255;
    [239,101,72]/255;
    [215,48,31]/255;
    [179,0,0]/255;
    [127,0,0]/255;
    });

for i = 1 : length(sch.sun)-1
   grd.sun = [grd.sun;...
       generateGradient(sch.sun{i},sch.sun{i+1},57);];
end

%% Color gradient : Mercury
grd.mercury = [];
sch.mercury = flipud({
    [158,1,66]/255;
    [213,62,79]/255;
    [244,109,67]/255;
    [253,174,97]/255;
    [254,224,139]/255;
    [230,245,152]/255;
    [171,221,164]/255;
    [102,194,165]/255;
    [50,136,189]/255;
    [94,79,162]/255;
    });

for i = 1 : length(sch.mercury)-1
   grd.mercury = [grd.mercury;...
       generateGradient(sch.mercury{i},sch.mercury{i+1},57);];
end

%% Color gradient : Venus
grd.venus = [];
sch.venus = flipud({
    [103,0,31]/255;
    [178,24,43]/255;
    [214,96,77]/255;
    [244,165,130]/255;
    [253,219,199]/255;
    [209,229,240]/255;
    [146,197,222]/255;
    [67,147,195]/255;
    [33,102,172]/255;
    [5,48,97]/255;
    });

for i = 1 : length(sch.venus)-1
   grd.venus = [grd.venus;...
       generateGradient(sch.venus{i},sch.venus{i+1},57);];
end

%% Color gradient : Earth
grd.earth = [];
sch.earth = flipud({
    [84,48,5]/255;
    [140,81,10]/255;
    [191,129,45]/255;
    [223,194,125]/255;
    [246,232,195]/255;
    [199,234,229]/255;
    [128,205,193]/255;
    [53,151,143]/255;
    [1,102,94]/255;
    [0,60,48]/255;
    });

for i = 1 : length(sch.earth)-1
   grd.earth = [grd.earth;...
       generateGradient(sch.earth{i},sch.earth{i+1},57)];
end

%% Color gradient : Mars
grd.mars = [];
sch.mars = flipud({
    [103,0,31]/255;
    [178,24,43]/255;
    [214,96,77]/255;
    [244,165,130]/255;
    [253,219,199]/255;
    [224,224,224]/255;
    [186,186,186]/255;
    [135,135,135]/255;
    [77,77,77]/255;
    [26,26,26]/255;
    });

for i = 1 : length(sch.mars)-1
   grd.mars = [grd.mars;...
       generateGradient(sch.mars{i},sch.mars{i+1},57)];
end

%% Color gradient : Jupiter
grd.jupiter = [];
sch.jupiter = flipud({
    [255,255,255]/255;
    [255,247,243]/255;
    [253,224,221]/255;
    [252,197,192]/255;
    [250,159,181]/255;
    [247,104,161]/255;
    [221,52,151]/255;
    [174,1,126]/255;
    [122,1,119]/255;
    [73,0,106]/255;
    });

for i = 1 : length(sch.jupiter)-1
   grd.jupiter = [grd.jupiter;...
       generateGradient(sch.jupiter{i},sch.jupiter{i+1},57)];
end

%% Color gradient : Saturn
grd.saturn = [];
sch.saturn = flipud({
    [255,255,255]/255;
    [255,247,251]/255;
    [236,226,240]/255;
    [208,209,230]/255;
    [166,189,219]/255;
    [103,169,207]/255;
    [54,144,192]/255;
    [2,129,138]/255;
    [1,108,89]/255;
    [1,70,54]/255;
    });

for i = 1 : length(sch.saturn)-1
   grd.saturn = [grd.saturn; 
       generateGradient(sch.saturn{i},sch.saturn{i+1},57);];
end

%% Color gradient : Uranus
grd.uranus = [];
sch.uranus = flipud({
    [255,255,255]/255;
    [255,255,217]/255;
    [237,248,177]/255;
    [199,233,180]/255;
    [127,205,187]/255;
    [65,182,196]/255;
    [29,145,192]/255;
    [34,94,168]/255;
    [37,52,148]/255;
    [8,29,88]/255;
    });

for i = 1 : length(sch.jupiter)-1
   grd.uranus = [grd.uranus;...
       generateGradient(sch.uranus{i},sch.uranus{i+1},57);];
end

%% Color gradient : Neptune
grd.neptune = [];
sch.neptune = flipud({
    [255,255,255]/255;
    [255,255,255]/255;
    [240,240,240]/255;
    [217,217,217]/255;
    [189,189,189]/255;
    [150,150,150]/255;
    [115,115,115]/255;
    [82,82,82]/255;
    [37,37,37]/255;
    [0,0,0]/255;
    });

for i = 1 : length(sch.neptune)-1
   grd.neptune = [grd.neptune;...
       generateGradient(sch.neptune{i},sch.neptune{i+1},57)];
end

%% Color gradient : MVPALab2
grd.fusion = [];
sch.fusion = {
    [1,3,3]/255;
    [8,23,51]/255;
    [40,35,147]/255;
    [99,62,133]/255;
    [148,84,135]/255;
    [207,104,111]/255;
    [239,148,92]/255;
    [240,184,125]/255;
    [236,206,166]/255;
    [255,255,255]/255;
    };

for i = 1 : length(sch.fusion)-1
   grd.fusion = [grd.fusion;...
       generateGradient(sch.fusion{i},sch.fusion{i+1},57)];
end

%% Color gradient : MVPALab
grd.mvpalab = [];
sch.mvpalab = {
    [137,20,45]/255;
    [146,37,57]/255;
    [155,53,69]/255;
    [163,70,80]/255;
    [172,87,92]/255;
    [181,104,104]/255;
    [190,120,116]/255;
    [198,137,127]/255;
    [207,154,139]/255;
    [216,171,151]/255;
    [225,187,162]/255;
    [233,204,174]/255;
    [242,221,186]/255;
    };

grd.mvpalab = [
    generateGradient([1 1 1],sch.mvpalab{end},256);
    generateGradient(sch.mvpalab{end},sch.mvpalab{1},256)
    ];

%% Color gradient : Aguamarine
grd.aguamarine = [];
sch.aguamarine = {
    [15,80,100]/255;
    [46,103,121]/255;
    [67,119,135]/255;
    [87,134,149]/255;
    [105,147,160]/255;
    [125,163,175]/255;
    [146,178,189]/255;
    [167,194,204]/255;
    [187,209,218]/255;
    [205,222,230]/255;
    };

for i = 1 : length(sch.aguamarine)-1
   grd.aguamarine = [grd.aguamarine;...
       generateGradient(sch.aguamarine{i},sch.aguamarine{i+1},57)];
end

%% Display:
displayColors(grd);
displayColors(sch);

%% Save schemes:
save('color_schemes.mat','grd','sch');