function [] = displayColors(colors)
figure;
hold on
for i = length(colors) : -1 : 1
    if iscell(colors)
        color = colors{i};
    else
        color = colors(i,:);
    end
    rectangle('Position',[0 0 i 1],'FaceColor',color,'LineStyle','none');
end
title('Color gradient');
axis tight;
end