U=400;
S=[15000 8100 21000 29000 ];
L=[65 70 70 75 ];
K2=[0.8 0.73 0.8 0.73 ];
K1=1;
K3=0.87;
K=K1*K2*K3;
Ib=S/(sqrt(3)*U);
Rcu = 0.0181;
Ral = 0.0308;

for n=1:4
    if Ib(n)>20;
        Iz(n)=Ib(n);
    else
        Ib(n)<20;
        Iz(n)=1.21*Ib(n);
    end
end
Iz
Izprim=Iz./K
Scu =[ 4 , 2.5 , 6 , 16 ]
section_alum= [ 6 , 4 , 10 , 25 ]
DUcu = ((Rcu * L)/Scu)* Iz
DUal = ((Ral * L)/ section_alum)* Iz

