
expanding [0]*1: -p^2+5*q^2
0 0: {p=0,q=0}*2 similiar to [0], same  -p^2+5*q^2
1 0: {p=1,q=0}*2 failure constant=-1, vgcd=4 -1-2*2*p-2*2*p^2+10*2*q^2
0 1: {p=0,q=1}*2 failure constant=5, vgcd=4 5-2*2*p^2+10*2*q+10*2*q^2
1 1: {p=1,q=1}*2 unknown -> [1] 1-p-p^2+5*q+5*q^2

expanding [1]*2: 1-p-p^2+5*q+5*q^2
0 0: {p=1,q=1}*4 failure constant=1, vgcd=2 1-2*p-1*4*p^2+10*q+5*4*q^2
1 0: {p=3,q=1}*4 failure constant=-1, vgcd=2 -1-6*p-1*4*p^2+10*q+5*4*q^2
0 1: {p=1,q=3}*4 failure constant=11, vgcd=2 11-2*p-1*4*p^2+30*q+5*4*q^2
1 1: {p=3,q=3}*4 failure constant=9, vgcd=2 9-6*p-1*4*p^2+30*q+5*4*q^2
Proof: queue exhausted
