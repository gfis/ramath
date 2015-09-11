SameReason.consider(
	"a^2+b^2-c^2-d^2; -a+w^2; -b+x^2; -c+y^2; -d+z^2", 
	"a^2+b^2-c^2-d^2; -a+4w^2; -b+4x^2; -c+4y^2; -d+4z^2") = 
	maxBasePowers={a=0, b=0, c=0, d=0, w=1, x=1, y=1, z=1}, remap={w=>w/2,x=>x/2,y=>y/2,z=>z/2}
rset1^-1 =a^2 + b^2 - c^2 - d^2;  - a + w^2;  - b + x^2;  - c + y^2;  - d + z^2
rset2s^-1=a^2 + b^2 - c^2 - d^2;  - a + w^2;  - b + x^2;  - c + y^2;  - d + z^2, result=same a^2+b^2-c^2-d^2; -a+4w^2; -b+4x^2; -c+4y^2; -d+4z^2 map {w=>w/2,x=>x/2,y=>y/2,z=>z/2} -> [0] a^2+b^2-c^2-d^2; -a+w^2; -b+x^2; -c+y^2; -d+z^2
same a^2+b^2-c^2-d^2; -a+4w^2; -b+4x^2; -c+4y^2; -d+4z^2 map {w=>w/2,x=>x/2,y=>y/2,z=>z/2} -> [0] a^2+b^2-c^2-d^2; -a+w^2; -b+x^2; -c+y^2; -d+z^2
