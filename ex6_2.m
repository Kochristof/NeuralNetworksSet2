p = -2 + (2-(-2)).*rand(100,1); #range of p

min = -0.5; #used for rand function
max = 0.5; #used for rand function
W1 = min + (max-min).*rand(100,1); #initial weights sigmoid layer
B1 = min + (max-min).*rand(100,1); #initial biases sigmoid layer

W2 = min + (max-min).*rand(100,1); #initial weights linear layer
B2 = min + (max-min).*rand(100,1); #initial biases linear layer

n1 = (W1.*p + B1);

S1 = 15;
a = 0.01;
#c = 0; #used for sigmoid function
#b = 1; #used for sigmoid function

g(p)=1+sin(p*(pi/2));

while(true) {

  logsig(n1) = 1 / (1 + exp(-n1));
  
  n2 = (W2.*logsig + B2);
  
  linear = n2
  
  convergence = linear - g
  
  if(abs(convergence) < 10^(-6)) {
    break;
  }
  
  W1 = W1 - a*S1*logsig;
  B1 = B1 - a*S1;
}



