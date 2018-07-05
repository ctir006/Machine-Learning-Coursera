function []=GradientDescent()

data=load('ex1data1.txt');
X=data(:,1);
y=data(:,2);
X=[ones(length(X),1),X];
theta=zeros(2,1);
J=ComputeCost(X,y,theta);
disp(J);

m=length(y);
J_history=zeros(1500,1);
alpha=0.01;

for iter=1:1500,
	x=X(:,2);
	h=theta(1)+(theta(2)*x);
	theta(1)=theta(1)-alpha/m * sum(h-y);
	theta(2)=theta(2)-alpha/m * sum((h-y).*x);
	theta=[theta(1);theta(2)];
	J_history(iter)=ComputeCost(X,y,theta);
end
plot(X(:,2),y,'ro');
hold on;
plot(X(:,2), X*theta, '-');
disp(theta);
predict1 = [1,3.5] * theta;
predict2 = [1,7] * theta;
disp(predict1);
disp(predict2);

end