clear
close all

r = 70; %[mm]
theta = 0:pi/60:2*pi;
X = zeros(121,1);
Y = zeros(121,1);
Z = zeros(121,1);
pitch = pi/6;
R_y = [cos(pitch) 0 sin(pitch); 0 1 0; -sin(pitch) 0 cos(pitch)];


Traj = zeros(121,3);

for i=1:121
    Y(i) = r*cos(theta(i));
    Z(i) = r*sin(theta(i));
end

Traj(:,1) = X(:);
Traj(:,2) = Y(:);
Traj(:,3) = Z(:);

Traj = (R_y*Traj')';

figure(1)
plot3(Traj(:,1),Traj(:,2),Traj(:,3))
xlabel('x')
ylabel('y')
zlabel('z')
grid on
axis([-100 100 -100 100 -100 100])
hold on 

h1 = scatter3(NaN,NaN,NaN,'o');
t = 1;
while (1)
    set(h1, 'XData', Traj(t,1), 'YData', Traj(t,2), 'ZData', Traj(t,3));
    drawnow
    t = max(1,mod(t + 1,122));
    pause(1)
end
