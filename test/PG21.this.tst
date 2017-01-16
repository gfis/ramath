/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -l 2 -f test/PG21.data.tmp pident
    Do   N O T   edit this file, but ProgramGenerator.java instead!
*/
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
int reslines = 0;
printf("#---> start of results ----\n");
/* simplified and grouped: 
    [0]  + m^4	(A11*A11 + A21*A21 - A31*A31)	3{A11,A21,A31}
    [1]  + 2*m^3*n	(A11*A12 + A21*A22 - A31*A32)	6{A11,A12,A21,A22,A31,A32}
    [2]  + m^2*n^2	(A12*A12 + 2*A11*A13 + A22*A22 + 2*A21*A23 - A32*A32 - 2*A31*A33)	9{A11,A12,A13,A21,A22,A23,A31,A32,A33}
    [3]  + 2*m*n^3	(A12*A13 + A22*A23 - A32*A33)	6{A12,A13,A22,A23,A32,A33}
    [4]  + n^4	(A13*A13 + A23*A23 - A33*A33)	3{A13,A23,A33}
    minSize=3, maxSize=9
#---> nrows=3
#---> ncols=3
#---> isolated=a,b,c
#---> parameter=m,n
#---> rset0=a - A11*m^2 - A12*m*n - A13*n^2; b - A21*m^2 - A22*m*n - A23*n^2; c - A31*m^2 - A32*m*n - A33*n^2; a^2 + b^2 - c^2
#---> poly1=A11^2*m^4 + A21^2*m^4 - A31^2*m^4 + 2*A11*A12*m^3*n + 2*A21*A22*m^3*n - 2*A31*A32*m^3*n + A12^2*m^2*n^2 + 2*A11*A13*m^2*n^2 + A22^2*m^2*n^2 + 2*A21*A23*m^2*n^2 - A32^2*m^2*n^2 - 2*A31*A33*m^2*n^2 + 2*A12*A13*m*n^3 + 2*A22*A23*m*n^3 - 2*A32*A33*m*n^3 + A13^2*n^4 + A23^2*n^4 - A33^2*n^4
#---> powerSum=a^2 + b^2 - c^2
#---> exponent=2
#---> pmat=[[A11,A12,A13],[A21,A22,A23],[A31,A32,A33]]
*/
int A11,A12,A13,A21,A22,A23,A31,A32,A33;
for (A11 = -2; A11 < 3; A11++)  {
for (A21 = -2; A21 < 3; A21++)  {
for (A31 = -2; A31 < 3; A31++)  {
if (A11*A11 + A21*A21 - A31*A31 == 0) /* [0], minSize = 3 */  {
for (A13 = -2; A13 < 3; A13++)  {
for (A23 = -2; A23 < 3; A23++)  {
for (A33 = -2; A33 < 3; A33++)  {
if (A13*A13 + A23*A23 - A33*A33 == 0) /* [4], minSize = 3 */  {
for (A12 = -2; A12 < 3; A12++)  {
for (A22 = -2; A22 < 3; A22++)  {
for (A32 = -2; A32 < 3; A32++)  {
int sum1 = A11+A12+A13; 
int sum2 = A21+A22+A23; if (sum1 <= sum2) {
int sum3 = A31+A32+A33; if (sum2 <= sum3) {
if (A11*A12 + A21*A22 - A31*A32 == 0) /* [1], minSize = 6 */  {
if (A12*A13 + A22*A23 - A32*A33 == 0) /* [3], minSize = 6 */  {
if (A12*A12 + 2*A11*A13 + A22*A22 + 2*A21*A23 - A32*A32 - 2*A31*A33 == 0) /* [2], minSize = 9 */  {
if (A11 != 0 || A12 != 0 || A13 != 0) /* row 1 != 0 */  {
if (A11 != A21 || A12 != A22 || A13 != A23) /* row 1 != row 2 */  {
if (A11 != A31 || A12 != A32 || A13 != A33) /* row 1 != row 3 */  {
if (A21 != 0 || A22 != 0 || A23 != 0) /* row 2 != 0 */  {
if (A21 != A31 || A22 != A32 || A23 != A33) /* row 2 != row 3 */  {
if (A31 != 0 || A32 != 0 || A33 != 0) /* row 3 != 0 */  {
printf("[");
printf("[%d,%d,%d]",A11,A12,A13);
printf(",");
printf("[%d,%d,%d]",A21,A22,A23);
printf(",");
printf("[%d,%d,%d]",A31,A32,A33);
printf("]");
reslines ++;
printf("\n");
}}}}}}}}}}}}}}}}}}}}}}
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
[[-2,-2,0],[0,-2,-1],[2,2,1]]
[[-2,2,0],[0,2,-1],[2,-2,1]]
[[-2,-2,0],[0,2,1],[2,2,1]]
[[-1,-2,0],[0,2,2],[1,2,2]]
[[-1,0,1],[0,2,0],[1,0,1]]
[[0,-2,1],[-2,2,0],[2,-2,1]]
[[0,-2,-2],[-1,-2,0],[1,2,2]]
[[0,2,-2],[-1,2,0],[1,-2,2]]
[[0,-2,0],[-1,0,1],[1,0,1]]
[[0,-2,2],[-1,2,0],[1,-2,2]]
[[0,-2,-2],[1,2,0],[1,2,2]]
[[0,-2,0],[1,0,-1],[1,0,1]]
[[0,-2,-1],[2,2,0],[2,2,1]]
[[0,-2,1],[2,-2,0],[2,-2,1]]
[[0,2,1],[2,2,0],[2,2,1]]
[[1,0,-1],[0,2,0],[1,0,1]]
[[1,-2,0],[0,2,-2],[1,-2,2]]
[[1,-2,0],[0,-2,2],[1,-2,2]]
[[1,2,0],[0,2,2],[1,2,2]]
[[2,-2,0],[0,2,-1],[2,-2,1]]
#---> reslines=20
