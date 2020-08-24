clc
clear
close all

%% assign parameters
N = 1000;

%% assing x and y parameters
x = linspace(0, 6*pi, 100);
y = sin(x);

% aviobj = avifile("test");
v = VideoWriter('test.avi');
open(v);

for i = 1:N
    % Create figure
    clf
    hold on
    plot(x, y);
    plot(x(i), y(i), 'ro');
    grid on
    axis tight
    
    title(sprintf('Sin Wave at (%f, %f)', x(i), y(i)));
    xlabel('x');
    ylabel('sin(x)');
    drawnow
    
    %fig = figure;
    frame = getframe(gcf);
    writeVideo(v, frame);
end

close(v);