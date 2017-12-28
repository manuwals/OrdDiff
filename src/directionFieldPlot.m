%% define the differential equation
fnc = @( t , x ) (x - ones(size(x))) .* (x + 2*ones(size(x)));

%% Draw the phase 
lm = 3;
t = -lm : 0.3 : lm ; %% choose the time values
x = -lm : 0.3 : lm ; %% choose the x-values

%% create the matrices for the vector field
nt = length(t); 
nx = length(x);
V1 = ones (nx, nt); 
V2 = zeros (nx, nt);
%% compute the vector field
for j = 1:nx
V2(j, :) = fnc (0, x(j));
end

%% display the vector field
figure (1) ;
quiver (t, x, V1, V2, 'AutoScale', 'on') ;
hold on
plot(t, ones(size(x)), 'LineWidth', 1, 'Color', 'green');
plot(t, -2*ones(size(x)), 'LineWidth', 1, 'Color', 'red');
axis ([-lm, lm, -lm, lm]) ;
xlabel ('time/t') ; 
ylabel ('x(t)');
hold off;
grid on

figure ( 2 ) ;
plot(x, fnc(t,x));
hold on
plot(1, 0, '*', 'MarkerSize', 20, 'LineWidth', 10, 'Color', 'green');
plot(-2, 0, '*', 'MarkerSize', 20, 'LineWidth', 10, 'Color', 'red');
axis ( [ -lm , lm , -lm , lm ] ) ;
xlabel ('x') ; 
ylabel ('dx/dt')
hold off
grid on