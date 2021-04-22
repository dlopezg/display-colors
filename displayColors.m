function [] = displayColors(colors)
figure;
colornames = fields(colors);
ncolors = length(colornames);
for i = 1 : ncolors
    
    subplot(ncolors,1,i)
    colormap = colors.(colornames{i});
    for j = length(colormap) : -1 : 1
        if iscell(colormap)
            color = colormap{j};
        else
            color = colormap(j,:);
        end
        rectangle('Position',[0 0 j 1],'FaceColor',color,'LineStyle','none');
        set(gca,'XTick',[])
        set(gca,'YTick',[])
    end
    axis tight;
    box off;
    set(gca,'XColor', 'none','YColor','none');
end
end