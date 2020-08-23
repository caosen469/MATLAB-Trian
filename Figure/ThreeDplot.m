% Create the dataset
t = [0:pi/50:10*pi];
x = sin(t);
y = cos(t);

% Create the 3D plot
plot3(sin(t), cos(t), t);
grid on
axis square
title('Parametric Curve');
xlabel('x');
ylabel('y');
zlabel('t');

figure;
% x = [1 2 3 4];
% y = [3 4 5];
% [X, Y] = meshgrid(x, y);

%%-------------------Surface Plot------------------
% Create the data
x = -5:.2: 5;
y = -5:.2: 5;
[X, Y] = meshgrid(x, y);
Z = sin(X) .* cos(Y);

subplot(2, 2, 1);
surf(X, Y, Z);
title('Surface Plot using surf');
xlabel('x');
ylabel('y');
zlabel('z');

subplot(2, 2, 2);
contour(X, Y, Z);
title('Surface Plot using contour');
xlabel('x');
ylabel('y');
zlabel('z');

% subplot(2, 2, 3);
% isosurface(X, Y, Z);
% title('Surface Plot using Bar');
% xlabel('x');
% ylabel('y');
% zlabel('z');
