var x, polyv=x^2 - 4*x*y + 8*x*z, brFactors[0]=1, rsetv(before prepare)=0;  - 4*y + 8*z; 1
rsetv(after prepare)=0;  - 2*y + 4*z; 1, brFactors[0]=1, rootv=1, widev=1
complete x, polyc= - 2*y + 4*z, rest= - 2*y^2 + 16*y*z - 23*z^2
--> bracket for x: 1*(x - 2*y + 4*z)
var y, polyv= - 2*y^2 + 16*y*z, brFactors[1]=-2, rsetv(before prepare)=0;  - 8*z; 1
rsetv(after prepare)=0;  - 4*z; 1, brFactors[1]=-2, rootv=1, widev=1
complete y, polyc= - 4*z, rest=9*z^2
--> bracket for y: -2*(y - 4*z)
var z, polyv=9*z^2, brFactors[2]=9, rsetv(before prepare)=0; 0; 1
rsetv(after prepare)=0; 0; 1, brFactors[2]=9, rootv=1, widev=1
complete z, polyc=0, rest=0
--> bracket for z: 9*(z)
("x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").squareCompletion() = x^2 - 2*y^2 + 9*z^2
