TranspositionSet={[3,2,1,0,7,6,5,4],[2,3,1,0,6,7,5,4],[3,2,0,1,7,6,4,5],[2,3,0,1,6,7,4,5],[1,0,3,2,5,4,7,6],[0,1,3,2,4,5,7,6],[1,0,2,3,5,4,6,7]}
ExponentGCDs=[1,1,1,1,2,2,2,2]
maxBasePowers={a=0, b=0, c=0, d=0, w=1, x=1, y=1, z=1}, remap={w=>w/2,x=>x/2,y=>y/2,z=>z/2}
rset1=a^2 + b^2 - c^2 - d^2;  - a + w^2;  - b + x^2;  - c + y^2;  - d + z^2
rset2s=a^2 + b^2 - c^2 - d^2;  - a + w^2;  - b + x^2;  - c + y^2;  - d + z^2
SameReason.compare(
	"a^2+b^2-c^2-d^2; -a+w^2; -b+x^2; -c+y^2; -d+z^2", 
	"a^2+b^2-c^2-d^2; -a+4w^2; -b+4x^2; -c+4y^2; -d+4z^2") = 
	same with map {w=>w/2,x=>x/2,y=>y/2,z=>z/2}
