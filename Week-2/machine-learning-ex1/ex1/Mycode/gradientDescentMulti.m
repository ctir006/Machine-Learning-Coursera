function []=gradientDescentMulti()

data=load('ex1data2.txt');
X=data(:,1:2);
y=data(:,3);

disp([X(1:10,:) y(1:10,:)])

[X_norm, mu, sigma]=featureNormalize(X);
disp(mu);
%disp(sigma);
disp([X_norm(1:10,:) y(1:10,:)])

end