%% Create the data
x = linspace(-2, 2, 25);
y = linspace(-2, 2, 25);

%%
[X, Y] = meshgrid(x, y); % Notice that X and Y is matrix, not vector
Z = X.*exp(-X.^2-Y.^2);

%% Using mesh, surffunction to plot

subplot(1, 2, 1);
mesh(X, Y, Z);
title("mesh");
xlabel("X");
ylabel("Y");

subplot(1, 2, 2);
surf(X, Y, Z);
title("surf");
xlabel("X");
ylabel("Y");

%% Another two figure
Z = 3*(1-X).^2.*exp(-(X.^2) - (Y+1).^2) - 10*(X/5 - X.^3 - Y.^5).*exp(-X.^2-Y.^2) - 1/3*exp(-(X+1).^2 - Y.^2)
