aold=0.5; #arxikes synthikes
anew = 0;

zold=0.04; 
znew = 0;

xold=[-2 -1.5]';
xnew = 0;

g=0.1; #times parametrwn VLBP
h=1.5;
r=0.5;

#A = [3 1
#     1 3]; #gia xrhsh sthn F(x)
#B = [1 2];

Fold = 1 / (2 * ((xold'.*[3 1;1 3]).*xold)) + [1 2].*xold + 2;   
Fnew = 0;

a0 = x0;
i=0;

#Newtons Method for calculation
while(i<2) {
  
  #ypologizw gradF -> S -> L -> X ->repeat
  gradF = gradient(Fold,xold);
  sold = (-(gradF^2)^(-1)).*gradF;
  
  sold = -gradF/norm(gradF);
  L = 1; #logw tetragonikhs F

  xnew = xold + L*sold; #H ypologizw output vash propagation
  
  #ypologismos neas F
  Fnew = 1 / (2 * ((xnew'.*A).*xnew)) + B.*xnew + 2; 
  
  #allages
  while(true) {
      if(Fnew > (Fold + Fold*zold)) {
        anew = aold * r;
        g = 0;
        break;
      }
      if(Fnew < Fold) {
        anew = aold*h
        if(znew==0) {
          znew = zold;
          break;
        }
      if((Fnew > Fold) && (Fnew < Fold + Fold*z)) {
        anew = aold;
        if(znew==0) {
        znew = zold;
        }
      }
    }
  }
}

  
  
  
  