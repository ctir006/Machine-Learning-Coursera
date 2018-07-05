function [X_norm,mu,sigma]=featureNormalize(X)

X_norm=X;
mu=mean(X);
sigma=std(X);

X_norm(:,1)=X(:,1)-mu(1)./sigma(1);
X_norm(:,2)=X(:,2)-mu(2)./sigma(2);


end