/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -l 32 -f test/PG19.data.tmp pident
    Do   N O T   edit this file, but ProgramGenerator.java instead!
*/
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
int reslines = 0;
printf("#---> start of results ----\n");
/* simplified and grouped: 
    [0]  + 2*m	(A11*A12 + A21*A22 - A31*A32)	6{A11,A12,A21,A22,A31,A32}
    [1]  + m^2	(A11*A11 + A21*A21 - A31*A31)	3{A11,A21,A31}
    [2]  + 1	(A12*A12 + A22*A22 - A32*A32)	3{A12,A22,A32}
    minSize=3, maxSize=6
#---> nrows=3
#---> ncols=2
#---> isolated=a,b,c
#---> parameter=m
#---> rset0= - A12 + a - A11*m;  - A22 + b - A21*m;  - A32 + c - A31*m; a^2 + b^2 - c^2
#---> poly1=A12^2 + A22^2 - A32^2 + 2*A11*A12*m + 2*A21*A22*m - 2*A31*A32*m + A11^2*m^2 + A21^2*m^2 - A31^2*m^2
#---> powerSum=a^2 + b^2 - c^2
#---> exponent=2
#---> pmat=[[A11,A12],[A21,A22],[A31,A32]]
*/
int A11,A12,A21,A22,A31,A32;
int sum0 = 0;
for (A11 = -32; A11 < 33; A11++)  {
for (A21 = -32; A21 < 33; A21++)  {
for (A31 = -32; A31 < 33; A31++)  {
if (A11*A11 + A21*A21 - A31*A31 == 0) /* [1], minSize = 3 */  {
for (A12 = -32; A12 < 33; A12++)  {
/* check 1 */ int sum1 = ((A11)*8+A12); 
for (A22 = -32; A22 < 33; A22++)  {
/* check 2 */ int sum2 = ((A21)*8+A22); if (sum1 < sum2) {
for (A32 = -32; A32 < 33; A32++)  {
/* check 3 */ int sum3 = ((A31)*8+A32); if (sum2 < sum3) {
if (A12*A12 + A22*A22 - A32*A32 == 0) /* [2], minSize = 3 */  {
if (A11*A12 + A21*A22 - A31*A32 == 0) /* [0], minSize = 6 */  {
if (A11 != 0 || A12 != 0) /* row 1 != 0 */  {
if (A21 != 0 || A22 != 0) /* row 2 != 0 */  {
if (A31 != 0 || A32 != 0) /* row 3 != 0 */  {
printf("[");
printf("[%d,%d]",A11,A12);
printf(",");
printf("[%d,%d]",A21,A22);
printf(",");
printf("[%d,%d]",A31,A32);
printf("]");
reslines ++;
printf("\n");
}}}}}}}}}}}}}}
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
[[-24,-24],[-18,-18],[30,30]]
[[-24,-20],[-18,-15],[30,25]]
[[-24,-16],[-18,-12],[30,20]]
[[-24,-12],[-18,-9],[30,15]]
[[-24,-8],[-18,-6],[30,10]]
[[-24,-4],[-18,-3],[30,5]]
[[-24,0],[-18,0],[30,0]]
[[-24,4],[-18,3],[30,-5]]
[[-24,8],[-18,6],[30,-10]]
[[-24,12],[-18,9],[30,-15]]
[[-24,16],[-18,12],[30,-20]]
[[-24,20],[-18,15],[30,-25]]
[[-24,24],[-18,18],[30,-30]]
[[-24,-24],[-10,-10],[26,26]]
[[-24,-12],[-10,-5],[26,13]]
[[-24,0],[-10,0],[26,0]]
[[-24,12],[-10,5],[26,-13]]
[[-24,24],[-10,10],[26,-26]]
[[-24,-24],[-7,-7],[25,25]]
[[-24,0],[-7,0],[25,0]]
[[-24,24],[-7,7],[25,-25]]
[[-24,-24],[7,7],[25,25]]
[[-24,0],[7,0],[25,0]]
[[-24,24],[7,-7],[25,-25]]
[[-24,-24],[10,10],[26,26]]
[[-24,-12],[10,5],[26,13]]
[[-24,0],[10,0],[26,0]]
[[-24,12],[10,-5],[26,-13]]
[[-24,24],[10,-10],[26,-26]]
[[-24,-24],[18,18],[30,30]]
[[-24,-20],[18,15],[30,25]]
[[-24,-16],[18,12],[30,20]]
[[-24,-12],[18,9],[30,15]]
[[-24,-8],[18,6],[30,10]]
[[-24,-4],[18,3],[30,5]]
[[-24,0],[18,0],[30,0]]
[[-24,4],[18,-3],[30,-5]]
[[-24,8],[18,-6],[30,-10]]
[[-24,12],[18,-9],[30,-15]]
[[-24,16],[18,-12],[30,-20]]
[[-24,20],[18,-15],[30,-25]]
[[-24,24],[18,-18],[30,-30]]
[[-21,-21],[-20,-20],[29,29]]
[[-21,0],[-20,0],[29,0]]
[[-21,21],[-20,20],[29,-29]]
[[-21,-21],[20,20],[29,29]]
[[-21,0],[20,0],[29,0]]
[[-21,21],[20,-20],[29,-29]]
[[-20,-24],[-15,-18],[25,30]]
[[-20,-20],[-15,-15],[25,25]]
[[-20,-16],[-15,-12],[25,20]]
[[-20,-12],[-15,-9],[25,15]]
[[-20,-8],[-15,-6],[25,10]]
[[-20,-4],[-15,-3],[25,5]]
[[-20,0],[-15,0],[25,0]]
[[-20,4],[-15,3],[25,-5]]
[[-20,8],[-15,6],[25,-10]]
[[-20,12],[-15,9],[25,-15]]
[[-20,16],[-15,12],[25,-20]]
[[-20,20],[-15,15],[25,-25]]
[[-20,24],[-15,18],[25,-30]]
[[-20,-24],[15,18],[25,30]]
[[-20,-20],[15,15],[25,25]]
[[-20,-16],[15,12],[25,20]]
[[-20,-12],[15,9],[25,15]]
[[-20,-8],[15,6],[25,10]]
[[-20,-4],[15,3],[25,5]]
[[-20,0],[15,0],[25,0]]
[[-20,4],[15,-3],[25,-5]]
[[-20,8],[15,-6],[25,-10]]
[[-20,12],[15,-9],[25,-15]]
[[-20,16],[15,-12],[25,-20]]
[[-20,20],[15,-15],[25,-25]]
[[-20,24],[15,-18],[25,-30]]
[[-20,-20],[21,21],[29,29]]
[[-20,0],[21,0],[29,0]]
[[-20,20],[21,-21],[29,-29]]
[[-18,-18],[24,24],[30,30]]
[[-18,-15],[24,20],[30,25]]
[[-18,-12],[24,16],[30,20]]
[[-18,-9],[24,12],[30,15]]
[[-18,-6],[24,8],[30,10]]
[[-18,-3],[24,4],[30,5]]
[[-18,0],[24,0],[30,0]]
[[-18,3],[24,-4],[30,-5]]
[[-18,6],[24,-8],[30,-10]]
[[-18,9],[24,-12],[30,-15]]
[[-18,12],[24,-16],[30,-20]]
[[-18,15],[24,-20],[30,-25]]
[[-18,18],[24,-24],[30,-30]]
[[-16,-24],[-12,-18],[20,30]]
[[-16,-20],[-12,-15],[20,25]]
[[-16,-16],[-12,-12],[20,20]]
[[-16,-12],[-12,-9],[20,15]]
[[-16,-8],[-12,-6],[20,10]]
[[-16,-4],[-12,-3],[20,5]]
[[-16,0],[-12,0],[20,0]]
[[-16,4],[-12,3],[20,-5]]
[[-16,8],[-12,6],[20,-10]]
[[-16,12],[-12,9],[20,-15]]
[[-16,16],[-12,12],[20,-20]]
[[-16,20],[-12,15],[20,-25]]
[[-16,24],[-12,18],[20,-30]]
[[-16,-24],[12,18],[20,30]]
[[-16,-20],[12,15],[20,25]]
[[-16,-16],[12,12],[20,20]]
[[-16,-12],[12,9],[20,15]]
[[-16,-8],[12,6],[20,10]]
[[-16,-4],[12,3],[20,5]]
[[-16,0],[12,0],[20,0]]
[[-16,4],[12,-3],[20,-5]]
[[-16,8],[12,-6],[20,-10]]
[[-16,12],[12,-9],[20,-15]]
[[-16,16],[12,-12],[20,-20]]
[[-16,20],[12,-15],[20,-25]]
[[-16,24],[12,-18],[20,-30]]
[[-15,-15],[-8,-8],[17,17]]
[[-15,0],[-8,0],[17,0]]
[[-15,15],[-8,8],[17,-17]]
[[-15,-15],[8,8],[17,17]]
[[-15,0],[8,0],[17,0]]
[[-15,15],[8,-8],[17,-17]]
[[-15,-18],[20,24],[25,30]]
[[-15,-15],[20,20],[25,25]]
[[-15,-12],[20,16],[25,20]]
[[-15,-9],[20,12],[25,15]]
[[-15,-6],[20,8],[25,10]]
[[-15,-3],[20,4],[25,5]]
[[-15,0],[20,0],[25,0]]
[[-15,3],[20,-4],[25,-5]]
[[-15,6],[20,-8],[25,-10]]
[[-15,9],[20,-12],[25,-15]]
[[-15,12],[20,-16],[25,-20]]
[[-15,15],[20,-20],[25,-25]]
[[-15,18],[20,-24],[25,-30]]
[[-12,-24],[-9,-18],[15,30]]
[[-12,-20],[-9,-15],[15,25]]
[[-12,-16],[-9,-12],[15,20]]
[[-12,-12],[-9,-9],[15,15]]
[[-12,-8],[-9,-6],[15,10]]
[[-12,-4],[-9,-3],[15,5]]
[[-12,0],[-9,0],[15,0]]
[[-12,4],[-9,3],[15,-5]]
[[-12,8],[-9,6],[15,-10]]
[[-12,12],[-9,9],[15,-15]]
[[-12,16],[-9,12],[15,-20]]
[[-12,20],[-9,15],[15,-25]]
[[-12,24],[-9,18],[15,-30]]
[[-12,-24],[-5,-10],[13,26]]
[[-12,-12],[-5,-5],[13,13]]
[[-12,0],[-5,0],[13,0]]
[[-12,12],[-5,5],[13,-13]]
[[-12,24],[-5,10],[13,-26]]
[[-12,-24],[5,10],[13,26]]
[[-12,-12],[5,5],[13,13]]
[[-12,0],[5,0],[13,0]]
[[-12,12],[5,-5],[13,-13]]
[[-12,24],[5,-10],[13,-26]]
[[-12,-24],[9,18],[15,30]]
[[-12,-20],[9,15],[15,25]]
[[-12,-16],[9,12],[15,20]]
[[-12,-12],[9,9],[15,15]]
[[-12,-8],[9,6],[15,10]]
[[-12,-4],[9,3],[15,5]]
[[-12,0],[9,0],[15,0]]
[[-12,4],[9,-3],[15,-5]]
[[-12,8],[9,-6],[15,-10]]
[[-12,12],[9,-9],[15,-15]]
[[-12,16],[9,-12],[15,-20]]
[[-12,20],[9,-15],[15,-25]]
[[-12,24],[9,-18],[15,-30]]
[[-12,-18],[16,24],[20,30]]
[[-12,-15],[16,20],[20,25]]
[[-12,-12],[16,16],[20,20]]
[[-12,-9],[16,12],[20,15]]
[[-12,-6],[16,8],[20,10]]
[[-12,-3],[16,4],[20,5]]
[[-12,0],[16,0],[20,0]]
[[-12,3],[16,-4],[20,-5]]
[[-12,6],[16,-8],[20,-10]]
[[-12,9],[16,-12],[20,-15]]
[[-12,12],[16,-16],[20,-20]]
[[-12,15],[16,-20],[20,-25]]
[[-12,18],[16,-24],[20,-30]]
[[-10,-10],[24,24],[26,26]]
[[-10,-5],[24,12],[26,13]]
[[-10,0],[24,0],[26,0]]
[[-10,5],[24,-12],[26,-13]]
[[-10,10],[24,-24],[26,-26]]
[[-9,-18],[12,24],[15,30]]
[[-9,-15],[12,20],[15,25]]
[[-9,-12],[12,16],[15,20]]
[[-9,-9],[12,12],[15,15]]
[[-9,-6],[12,8],[15,10]]
[[-9,-3],[12,4],[15,5]]
[[-9,0],[12,0],[15,0]]
[[-9,3],[12,-4],[15,-5]]
[[-9,6],[12,-8],[15,-10]]
[[-9,9],[12,-12],[15,-15]]
[[-9,12],[12,-16],[15,-20]]
[[-9,15],[12,-20],[15,-25]]
[[-9,18],[12,-24],[15,-30]]
[[-8,-24],[-6,-18],[10,30]]
[[-8,-20],[-6,-15],[10,25]]
[[-8,-16],[-6,-12],[10,20]]
[[-8,-12],[-6,-9],[10,15]]
[[-8,-8],[-6,-6],[10,10]]
[[-8,-4],[-6,-3],[10,5]]
[[-8,0],[-6,0],[10,0]]
[[-8,4],[-6,3],[10,-5]]
[[-8,8],[-6,6],[10,-10]]
[[-8,12],[-6,9],[10,-15]]
[[-8,16],[-6,12],[10,-20]]
[[-8,20],[-6,15],[10,-25]]
[[-8,24],[-6,18],[10,-30]]
[[-8,-24],[6,18],[10,30]]
[[-8,-20],[6,15],[10,25]]
[[-8,-16],[6,12],[10,20]]
[[-8,-12],[6,9],[10,15]]
[[-8,-8],[6,6],[10,10]]
[[-8,-4],[6,3],[10,5]]
[[-8,0],[6,0],[10,0]]
[[-8,4],[6,-3],[10,-5]]
[[-8,8],[6,-6],[10,-10]]
[[-8,12],[6,-9],[10,-15]]
[[-8,16],[6,-12],[10,-20]]
[[-8,20],[6,-15],[10,-25]]
[[-8,24],[6,-18],[10,-30]]
[[-8,-8],[15,15],[17,17]]
[[-8,0],[15,0],[17,0]]
[[-8,8],[15,-15],[17,-17]]
[[-7,-7],[24,24],[25,25]]
[[-7,0],[24,0],[25,0]]
[[-7,7],[24,-24],[25,-25]]
[[-6,-18],[8,24],[10,30]]
[[-6,-15],[8,20],[10,25]]
[[-6,-12],[8,16],[10,20]]
[[-6,-9],[8,12],[10,15]]
[[-6,-6],[8,8],[10,10]]
[[-6,-3],[8,4],[10,5]]
[[-6,0],[8,0],[10,0]]
[[-6,3],[8,-4],[10,-5]]
[[-6,6],[8,-8],[10,-10]]
[[-6,9],[8,-12],[10,-15]]
[[-6,12],[8,-16],[10,-20]]
[[-6,15],[8,-20],[10,-25]]
[[-6,18],[8,-24],[10,-30]]
[[-5,-10],[12,24],[13,26]]
[[-5,-5],[12,12],[13,13]]
[[-5,0],[12,0],[13,0]]
[[-5,5],[12,-12],[13,-13]]
[[-5,10],[12,-24],[13,-26]]
[[-4,-24],[-3,-18],[5,30]]
[[-4,-20],[-3,-15],[5,25]]
[[-4,-16],[-3,-12],[5,20]]
[[-4,-12],[-3,-9],[5,15]]
[[-4,-8],[-3,-6],[5,10]]
[[-4,-4],[-3,-3],[5,5]]
[[-4,0],[-3,0],[5,0]]
[[-4,4],[-3,3],[5,-5]]
[[-4,8],[-3,6],[5,-10]]
[[-4,12],[-3,9],[5,-15]]
[[-4,16],[-3,12],[5,-20]]
[[-4,20],[-3,15],[5,-25]]
[[-4,24],[-3,18],[5,-30]]
[[-4,-24],[3,18],[5,30]]
[[-4,-20],[3,15],[5,25]]
[[-4,-16],[3,12],[5,20]]
[[-4,-12],[3,9],[5,15]]
[[-4,-8],[3,6],[5,10]]
[[-4,-4],[3,3],[5,5]]
[[-4,0],[3,0],[5,0]]
[[-4,4],[3,-3],[5,-5]]
[[-4,8],[3,-6],[5,-10]]
[[-4,12],[3,-9],[5,-15]]
[[-4,16],[3,-12],[5,-20]]
[[-4,20],[3,-15],[5,-25]]
[[-4,24],[3,-18],[5,-30]]
[[-3,-18],[4,24],[5,30]]
[[-3,-15],[4,20],[5,25]]
[[-3,-12],[4,16],[5,20]]
[[-3,-9],[4,12],[5,15]]
[[-3,-6],[4,8],[5,10]]
[[-3,-3],[4,4],[5,5]]
[[-3,0],[4,0],[5,0]]
[[-3,3],[4,-4],[5,-5]]
[[-3,6],[4,-8],[5,-10]]
[[-3,9],[4,-12],[5,-15]]
[[-3,12],[4,-16],[5,-20]]
[[-3,15],[4,-20],[5,-25]]
[[-3,18],[4,-24],[5,-30]]
[[0,-24],[0,-18],[0,30]]
[[0,-24],[0,-10],[0,26]]
[[0,-24],[0,-7],[0,25]]
[[0,-24],[0,7],[0,25]]
[[0,-24],[0,10],[0,26]]
[[0,-24],[0,18],[0,30]]
[[0,-21],[0,-20],[0,29]]
[[0,-21],[0,20],[0,29]]
[[0,-20],[0,-15],[0,25]]
[[0,-20],[0,15],[0,25]]
[[0,-20],[0,21],[0,29]]
[[0,-18],[0,24],[0,30]]
[[0,-16],[0,-12],[0,20]]
[[0,-16],[0,12],[0,20]]
[[0,-15],[0,-8],[0,17]]
[[0,-15],[0,8],[0,17]]
[[0,-15],[0,20],[0,25]]
[[0,-12],[0,-9],[0,15]]
[[0,-12],[0,-5],[0,13]]
[[0,-12],[0,5],[0,13]]
[[0,-12],[0,9],[0,15]]
[[0,-12],[0,16],[0,20]]
[[0,-10],[0,24],[0,26]]
[[0,-9],[0,12],[0,15]]
[[0,-8],[0,-6],[0,10]]
[[0,-8],[0,6],[0,10]]
[[0,-8],[0,15],[0,17]]
[[0,-7],[0,24],[0,25]]
[[0,-6],[0,8],[0,10]]
[[0,-5],[0,12],[0,13]]
[[0,-4],[0,-3],[0,5]]
[[0,-4],[0,3],[0,5]]
[[0,-3],[0,4],[0,5]]
[[0,3],[0,4],[0,5]]
[[0,5],[0,12],[0,13]]
[[0,6],[0,8],[0,10]]
[[0,7],[0,24],[0,25]]
[[0,8],[0,15],[0,17]]
[[0,9],[0,12],[0,15]]
[[0,10],[0,24],[0,26]]
[[0,12],[0,16],[0,20]]
[[0,15],[0,20],[0,25]]
[[0,18],[0,24],[0,30]]
[[0,20],[0,21],[0,29]]
[[3,-18],[4,-24],[5,-30]]
[[3,-15],[4,-20],[5,-25]]
[[3,-12],[4,-16],[5,-20]]
[[3,-9],[4,-12],[5,-15]]
[[3,-6],[4,-8],[5,-10]]
[[3,-3],[4,-4],[5,-5]]
[[3,0],[4,0],[5,0]]
[[3,3],[4,4],[5,5]]
[[3,6],[4,8],[5,10]]
[[3,9],[4,12],[5,15]]
[[3,12],[4,16],[5,20]]
[[3,15],[4,20],[5,25]]
[[3,18],[4,24],[5,30]]
[[5,-10],[12,-24],[13,-26]]
[[5,-5],[12,-12],[13,-13]]
[[5,0],[12,0],[13,0]]
[[5,5],[12,12],[13,13]]
[[5,10],[12,24],[13,26]]
[[6,-18],[8,-24],[10,-30]]
[[6,-15],[8,-20],[10,-25]]
[[6,-12],[8,-16],[10,-20]]
[[6,-9],[8,-12],[10,-15]]
[[6,-6],[8,-8],[10,-10]]
[[6,-3],[8,-4],[10,-5]]
[[6,0],[8,0],[10,0]]
[[6,3],[8,4],[10,5]]
[[6,6],[8,8],[10,10]]
[[6,9],[8,12],[10,15]]
[[6,12],[8,16],[10,20]]
[[6,15],[8,20],[10,25]]
[[6,18],[8,24],[10,30]]
[[7,-7],[24,-24],[25,-25]]
[[7,0],[24,0],[25,0]]
[[7,7],[24,24],[25,25]]
[[8,-8],[15,-15],[17,-17]]
[[8,0],[15,0],[17,0]]
[[8,8],[15,15],[17,17]]
[[9,-18],[12,-24],[15,-30]]
[[9,-15],[12,-20],[15,-25]]
[[9,-12],[12,-16],[15,-20]]
[[9,-9],[12,-12],[15,-15]]
[[9,-6],[12,-8],[15,-10]]
[[9,-3],[12,-4],[15,-5]]
[[9,0],[12,0],[15,0]]
[[9,3],[12,4],[15,5]]
[[9,6],[12,8],[15,10]]
[[9,9],[12,12],[15,15]]
[[9,12],[12,16],[15,20]]
[[9,15],[12,20],[15,25]]
[[9,18],[12,24],[15,30]]
[[10,-10],[24,-24],[26,-26]]
[[10,-5],[24,-12],[26,-13]]
[[10,0],[24,0],[26,0]]
[[10,5],[24,12],[26,13]]
[[10,10],[24,24],[26,26]]
[[12,-18],[16,-24],[20,-30]]
[[12,-15],[16,-20],[20,-25]]
[[12,-12],[16,-16],[20,-20]]
[[12,-9],[16,-12],[20,-15]]
[[12,-6],[16,-8],[20,-10]]
[[12,-3],[16,-4],[20,-5]]
[[12,0],[16,0],[20,0]]
[[12,3],[16,4],[20,5]]
[[12,6],[16,8],[20,10]]
[[12,9],[16,12],[20,15]]
[[12,12],[16,16],[20,20]]
[[12,15],[16,20],[20,25]]
[[12,18],[16,24],[20,30]]
[[15,-18],[20,-24],[25,-30]]
[[15,-15],[20,-20],[25,-25]]
[[15,-12],[20,-16],[25,-20]]
[[15,-9],[20,-12],[25,-15]]
[[15,-6],[20,-8],[25,-10]]
[[15,-3],[20,-4],[25,-5]]
[[15,0],[20,0],[25,0]]
[[15,3],[20,4],[25,5]]
[[15,6],[20,8],[25,10]]
[[15,9],[20,12],[25,15]]
[[15,12],[20,16],[25,20]]
[[15,15],[20,20],[25,25]]
[[15,18],[20,24],[25,30]]
[[18,-18],[24,-24],[30,-30]]
[[18,-15],[24,-20],[30,-25]]
[[18,-12],[24,-16],[30,-20]]
[[18,-9],[24,-12],[30,-15]]
[[18,-6],[24,-8],[30,-10]]
[[18,-3],[24,-4],[30,-5]]
[[18,0],[24,0],[30,0]]
[[18,3],[24,4],[30,5]]
[[18,6],[24,8],[30,10]]
[[18,9],[24,12],[30,15]]
[[18,12],[24,16],[30,20]]
[[18,15],[24,20],[30,25]]
[[18,18],[24,24],[30,30]]
[[20,-20],[21,-21],[29,-29]]
[[20,0],[21,0],[29,0]]
[[20,20],[21,21],[29,29]]
#---> reslines=432
