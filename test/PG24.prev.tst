/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -l 2 -f test/PG24.data.tmp pident
    Do   N O T   edit this file, but ProgramGenerator.java instead!
*/
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
int reslines = 0;
printf("#---> start of results ----\n");
/* simplified and grouped: 
    [0]  + 2*m	(A13*A14 + A23*A24 - A33*A34)	6{A13,A14,A23,A24,A33,A34}
    [1]  + m^2	(A13*A13 + 2*A12*A14 + A23*A23 + 2*A22*A24 - A33*A33 - 2*A32*A34)	9{A12,A13,A14,A22,A23,A24,A32,A33,A34}
    [2]  + 2*m^3	(A12*A13 + A11*A14 + A22*A23 + A21*A24 - A32*A33 - A31*A34)	12{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34}
    [3]  + m^4	(A12*A12 + 2*A11*A13 + A22*A22 + 2*A21*A23 - A32*A32 - 2*A31*A33)	9{A11,A12,A13,A21,A22,A23,A31,A32,A33}
    [4]  + 2*m^5	(A11*A12 + A21*A22 - A31*A32)	6{A11,A12,A21,A22,A31,A32}
    [5]  + m^6	(A11*A11 + A21*A21 - A31*A31)	3{A11,A21,A31}
    [6]  + 1	(A14*A14 + A24*A24 - A34*A34)	3{A14,A24,A34}
    minSize=3, maxSize=12
#---> nrows=3
#---> ncols=4
#---> isolated=a,b,c
#---> parameter=m
#---> rset0= - A14 + a - A13*m - A12*m^2 - A11*m^3;  - A24 + b - A23*m - A22*m^2 - A21*m^3;  - A34 + c - A33*m - A32*m^2 - A31*m^3; a^2 + b^2 - c^2
#---> poly1=A14^2 + A24^2 - A34^2 + 2*A13*A14*m + 2*A23*A24*m - 2*A33*A34*m + A13^2*m^2 + 2*A12*A14*m^2 + A23^2*m^2 + 2*A22*A24*m^2 - A33^2*m^2 - 2*A32*A34*m^2 + 2*A12*A13*m^3 + 2*A11*A14*m^3 + 2*A22*A23*m^3 + 2*A21*A24*m^3 - 2*A32*A33*m^3 - 2*A31*A34*m^3 + A12^2*m^4 + 2*A11*A13*m^4 + A22^2*m^4 + 2*A21*A23*m^4 - A32^2*m^4 - 2*A31*A33*m^4 + 2*A11*A12*m^5 + 2*A21*A22*m^5 - 2*A31*A32*m^5 + A11^2*m^6 + A21^2*m^6 - A31^2*m^6
#---> powerSum=a^2 + b^2 - c^2
#---> exponent=2
#---> pmat=[[A11,A12,A13,A14],[A21,A22,A23,A24],[A31,A32,A33,A34]]
*/
int A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34;
int sum0 = 0;
for (A11 = -2; A11 < 3; A11++)  {
for (A21 = -2; A21 < 3; A21++)  {
for (A31 = -2; A31 < 3; A31++)  {
if (A11*A11 + A21*A21 - A31*A31 == 0) /* [5], minSize = 3 */  {
for (A14 = -2; A14 < 3; A14++)  {
for (A24 = -2; A24 < 3; A24++)  {
for (A34 = -2; A34 < 3; A34++)  {
if (A14*A14 + A24*A24 - A34*A34 == 0) /* [6], minSize = 3 */  {
for (A13 = -2; A13 < 3; A13++)  {
for (A23 = -2; A23 < 3; A23++)  {
for (A33 = -2; A33 < 3; A33++)  {
if (A13*A14 + A23*A24 - A33*A34 == 0) /* [0], minSize = 6 */  {
for (A12 = -2; A12 < 3; A12++)  {
for (A22 = -2; A22 < 3; A22++)  {
for (A32 = -2; A32 < 3; A32++)  {
if (A11*A12 + A21*A22 - A31*A32 == 0) /* [4], minSize = 6 */  {
if (A13*A13 + 2*A12*A14 + A23*A23 + 2*A22*A24 - A33*A33 - 2*A32*A34 == 0) /* [1], minSize = 9 */  {
if (A12*A12 + 2*A11*A13 + A22*A22 + 2*A21*A23 - A32*A32 - 2*A31*A33 == 0) /* [3], minSize = 9 */  {
if (A12*A13 + A11*A14 + A22*A23 + A21*A24 - A32*A33 - A31*A34 == 0) /* [2], minSize = 12 */  {
if (A11 != 0 || A12 != 0 || A13 != 0 || A14 != 0) /* row 1 != 0 */  {
if (A21 != 0 || A22 != 0 || A23 != 0 || A24 != 0) /* row 2 != 0 */  {
if (A31 != 0 || A32 != 0 || A33 != 0 || A34 != 0) /* row 3 != 0 */  {
printf("[");
printf("[%d,%d,%d,%d]",A11,A12,A13,A14);
printf(",");
printf("[%d,%d,%d,%d]",A21,A22,A23,A24);
printf(",");
printf("[%d,%d,%d,%d]",A31,A32,A33,A34);
printf("]");
reslines ++;
printf("\n");
}}}}}}}}}}}}}}}}}}}}}}
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
[[-2,0,2,0],[0,2,1,-1],[-2,0,1,-1]]
[[-2,0,2,0],[0,2,-1,-1],[-2,0,1,1]]
[[-2,-2,0,0],[0,-2,-1,0],[-2,-2,-1,0]]
[[-2,2,0,0],[0,2,-1,0],[-2,2,-1,0]]
[[-2,-2,0,0],[0,2,1,0],[-2,-2,-1,0]]
[[-2,2,0,0],[0,-2,1,0],[-2,2,-1,0]]
[[-2,0,2,0],[0,-2,-1,1],[-2,0,1,-1]]
[[-2,0,2,0],[0,-2,1,1],[-2,0,1,1]]
[[-2,0,2,0],[0,2,-1,-1],[2,0,-1,-1]]
[[-2,0,2,0],[0,2,1,-1],[2,0,-1,1]]
[[-2,-2,0,0],[0,-2,-1,0],[2,2,1,0]]
[[-2,2,0,0],[0,2,-1,0],[2,-2,1,0]]
[[-2,-2,0,0],[0,2,1,0],[2,2,1,0]]
[[-2,2,0,0],[0,-2,1,0],[2,-2,1,0]]
[[-2,0,2,0],[0,-2,1,1],[2,0,-1,-1]]
[[-2,0,2,0],[0,-2,-1,1],[2,0,-1,1]]
[[-1,1,1,-1],[0,2,-2,0],[-1,1,-1,1]]
[[-1,1,1,-1],[0,-2,2,0],[-1,1,-1,1]]
[[-1,1,2,0],[0,2,0,-2],[-1,1,0,-2]]
[[-1,-1,2,0],[0,2,0,-2],[-1,-1,0,2]]
[[-1,-2,0,0],[0,-2,-2,0],[-1,-2,-2,0]]
[[-1,2,0,0],[0,2,-2,0],[-1,2,-2,0]]
[[-1,-2,0,0],[0,2,2,0],[-1,-2,-2,0]]
[[-1,2,0,0],[0,-2,2,0],[-1,2,-2,0]]
[[-1,0,1,0],[0,-2,0,0],[-1,0,-1,0]]
[[-1,0,1,0],[0,2,0,0],[-1,0,-1,0]]
[[-1,1,2,0],[0,-2,0,2],[-1,1,0,-2]]
[[-1,-1,2,0],[0,-2,0,2],[-1,-1,0,2]]
[[-1,-1,1,1],[0,-2,-2,0],[-1,-1,-1,-1]]
[[-1,-1,1,1],[0,2,2,0],[-1,-1,-1,-1]]
[[-1,1,1,-1],[0,2,-2,0],[1,-1,1,-1]]
[[-1,1,1,-1],[0,-2,2,0],[1,-1,1,-1]]
[[-1,-1,2,0],[0,2,0,-2],[1,1,0,-2]]
[[-1,1,2,0],[0,2,0,-2],[1,-1,0,2]]
[[-1,-2,0,0],[0,-2,-2,0],[1,2,2,0]]
[[-1,2,0,0],[0,2,-2,0],[1,-2,2,0]]
[[-1,-2,0,0],[0,2,2,0],[1,2,2,0]]
[[-1,2,0,0],[0,-2,2,0],[1,-2,2,0]]
[[-1,0,1,0],[0,-2,0,0],[1,0,1,0]]
[[-1,0,1,0],[0,2,0,0],[1,0,1,0]]
[[-1,-1,2,0],[0,-2,0,2],[1,1,0,-2]]
[[-1,1,2,0],[0,-2,0,2],[1,-1,0,2]]
[[-1,-1,1,1],[0,-2,-2,0],[1,1,1,1]]
[[-1,-1,1,1],[0,2,2,0],[1,1,1,1]]
[[0,2,1,-1],[-2,0,2,0],[-2,0,1,-1]]
[[0,2,-1,-1],[-2,0,2,0],[-2,0,1,1]]
[[0,-2,-1,0],[-2,-2,0,0],[-2,-2,-1,0]]
[[0,2,-1,0],[-2,2,0,0],[-2,2,-1,0]]
[[0,-2,1,0],[-2,2,0,0],[-2,2,-1,0]]
[[0,2,1,0],[-2,-2,0,0],[-2,-2,-1,0]]
[[0,-2,-1,1],[-2,0,2,0],[-2,0,1,-1]]
[[0,-2,1,1],[-2,0,2,0],[-2,0,1,1]]
[[0,2,-1,-1],[-2,0,2,0],[2,0,-1,-1]]
[[0,2,1,-1],[-2,0,2,0],[2,0,-1,1]]
[[0,-2,-1,0],[-2,-2,0,0],[2,2,1,0]]
[[0,2,-1,0],[-2,2,0,0],[2,-2,1,0]]
[[0,-2,1,0],[-2,2,0,0],[2,-2,1,0]]
[[0,2,1,0],[-2,-2,0,0],[2,2,1,0]]
[[0,-2,1,1],[-2,0,2,0],[2,0,-1,-1]]
[[0,-2,-1,1],[-2,0,2,0],[2,0,-1,1]]
[[0,2,0,-2],[-1,1,2,0],[-1,1,0,-2]]
[[0,2,0,-2],[-1,-1,2,0],[-1,-1,0,2]]
[[0,2,-2,0],[-1,1,1,-1],[-1,1,-1,1]]
[[0,-2,2,0],[-1,1,1,-1],[-1,1,-1,1]]
[[0,-2,-2,0],[-1,-2,0,0],[-1,-2,-2,0]]
[[0,2,-2,0],[-1,2,0,0],[-1,2,-2,0]]
[[0,-2,0,0],[-1,0,1,0],[-1,0,-1,0]]
[[0,2,0,0],[-1,0,1,0],[-1,0,-1,0]]
[[0,-2,2,0],[-1,2,0,0],[-1,2,-2,0]]
[[0,2,2,0],[-1,-2,0,0],[-1,-2,-2,0]]
[[0,-2,-2,0],[-1,-1,1,1],[-1,-1,-1,-1]]
[[0,2,2,0],[-1,-1,1,1],[-1,-1,-1,-1]]
[[0,-2,0,2],[-1,1,2,0],[-1,1,0,-2]]
[[0,-2,0,2],[-1,-1,2,0],[-1,-1,0,2]]
[[0,2,0,-2],[-1,-1,2,0],[1,1,0,-2]]
[[0,2,0,-2],[-1,1,2,0],[1,-1,0,2]]
[[0,2,-2,0],[-1,1,1,-1],[1,-1,1,-1]]
[[0,-2,2,0],[-1,1,1,-1],[1,-1,1,-1]]
[[0,-2,-2,0],[-1,-2,0,0],[1,2,2,0]]
[[0,2,-2,0],[-1,2,0,0],[1,-2,2,0]]
[[0,-2,0,0],[-1,0,1,0],[1,0,1,0]]
[[0,2,0,0],[-1,0,1,0],[1,0,1,0]]
[[0,-2,2,0],[-1,2,0,0],[1,-2,2,0]]
[[0,2,2,0],[-1,-2,0,0],[1,2,2,0]]
[[0,-2,-2,0],[-1,-1,1,1],[1,1,1,1]]
[[0,2,2,0],[-1,-1,1,1],[1,1,1,1]]
[[0,-2,0,2],[-1,-1,2,0],[1,1,0,-2]]
[[0,-2,0,2],[-1,1,2,0],[1,-1,0,2]]
[[0,0,-2,-2],[0,-1,-2,0],[0,-1,-2,-2]]
[[0,0,-2,-2],[0,1,2,0],[0,-1,-2,-2]]
[[0,0,2,-2],[0,1,-2,0],[0,-1,2,-2]]
[[0,0,2,-2],[0,-1,2,0],[0,-1,2,-2]]
[[0,0,-2,-2],[0,-1,-2,0],[0,1,2,2]]
[[0,0,-2,-2],[0,1,2,0],[0,1,2,2]]
[[0,0,2,-2],[0,1,-2,0],[0,1,-2,2]]
[[0,0,2,-2],[0,-1,2,0],[0,1,-2,2]]
[[0,0,-2,-1],[0,-2,-2,0],[0,-2,-2,-1]]
[[0,0,-2,-1],[0,2,2,0],[0,-2,-2,-1]]
[[0,1,0,-1],[0,0,-2,0],[0,-1,0,-1]]
[[0,1,0,-1],[0,0,2,0],[0,-1,0,-1]]
[[0,0,2,-1],[0,2,-2,0],[0,-2,2,-1]]
[[0,0,2,-1],[0,-2,2,0],[0,-2,2,-1]]
[[0,0,-2,-1],[0,-2,-2,0],[0,2,2,1]]
[[0,0,-2,-1],[0,2,2,0],[0,2,2,1]]
[[0,1,0,-1],[0,0,-2,0],[0,1,0,1]]
[[0,1,0,-1],[0,0,2,0],[0,1,0,1]]
[[0,0,2,-1],[0,2,-2,0],[0,2,-2,1]]
[[0,0,2,-1],[0,-2,2,0],[0,2,-2,1]]
[[0,-1,-2,0],[0,0,-2,-2],[0,-1,-2,-2]]
[[0,1,-2,0],[0,0,2,-2],[0,-1,2,-2]]
[[0,1,2,0],[0,0,-2,-2],[0,-1,-2,-2]]
[[0,-1,2,0],[0,0,2,-2],[0,-1,2,-2]]
[[0,-1,-2,0],[0,0,-2,-2],[0,1,2,2]]
[[0,1,-2,0],[0,0,2,-2],[0,1,-2,2]]
[[0,1,2,0],[0,0,-2,-2],[0,1,2,2]]
[[0,-1,2,0],[0,0,2,-2],[0,1,-2,2]]
[[0,-2,-2,0],[0,0,-2,-1],[0,-2,-2,-1]]
[[0,0,-2,0],[0,1,0,-1],[0,-1,0,-1]]
[[0,2,-2,0],[0,0,2,-1],[0,-2,2,-1]]
[[0,2,2,0],[0,0,-2,-1],[0,-2,-2,-1]]
[[0,0,2,0],[0,1,0,-1],[0,-1,0,-1]]
[[0,-2,2,0],[0,0,2,-1],[0,-2,2,-1]]
[[0,-2,-2,0],[0,0,-2,-1],[0,2,2,1]]
[[0,0,-2,0],[0,1,0,-1],[0,1,0,1]]
[[0,2,-2,0],[0,0,2,-1],[0,2,-2,1]]
[[0,2,2,0],[0,0,-2,-1],[0,2,2,1]]
[[0,0,2,0],[0,1,0,-1],[0,1,0,1]]
[[0,-2,2,0],[0,0,2,-1],[0,2,-2,1]]
[[0,2,-2,0],[0,0,-2,1],[0,-2,2,-1]]
[[0,0,-2,0],[0,-1,0,1],[0,-1,0,-1]]
[[0,-2,-2,0],[0,0,2,1],[0,-2,-2,-1]]
[[0,-2,2,0],[0,0,-2,1],[0,-2,2,-1]]
[[0,0,2,0],[0,-1,0,1],[0,-1,0,-1]]
[[0,2,2,0],[0,0,2,1],[0,-2,-2,-1]]
[[0,2,-2,0],[0,0,-2,1],[0,2,-2,1]]
[[0,0,-2,0],[0,-1,0,1],[0,1,0,1]]
[[0,-2,-2,0],[0,0,2,1],[0,2,2,1]]
[[0,-2,2,0],[0,0,-2,1],[0,2,-2,1]]
[[0,0,2,0],[0,-1,0,1],[0,1,0,1]]
[[0,2,2,0],[0,0,2,1],[0,2,2,1]]
[[0,1,-2,0],[0,0,-2,2],[0,-1,2,-2]]
[[0,-1,-2,0],[0,0,2,2],[0,-1,-2,-2]]
[[0,-1,2,0],[0,0,-2,2],[0,-1,2,-2]]
[[0,1,2,0],[0,0,2,2],[0,-1,-2,-2]]
[[0,1,-2,0],[0,0,-2,2],[0,1,-2,2]]
[[0,-1,-2,0],[0,0,2,2],[0,1,2,2]]
[[0,-1,2,0],[0,0,-2,2],[0,1,-2,2]]
[[0,1,2,0],[0,0,2,2],[0,1,2,2]]
[[0,0,-2,1],[0,2,-2,0],[0,-2,2,-1]]
[[0,0,-2,1],[0,-2,2,0],[0,-2,2,-1]]
[[0,-1,0,1],[0,0,-2,0],[0,-1,0,-1]]
[[0,-1,0,1],[0,0,2,0],[0,-1,0,-1]]
[[0,0,2,1],[0,-2,-2,0],[0,-2,-2,-1]]
[[0,0,2,1],[0,2,2,0],[0,-2,-2,-1]]
[[0,0,-2,1],[0,2,-2,0],[0,2,-2,1]]
[[0,0,-2,1],[0,-2,2,0],[0,2,-2,1]]
[[0,-1,0,1],[0,0,-2,0],[0,1,0,1]]
[[0,-1,0,1],[0,0,2,0],[0,1,0,1]]
[[0,0,2,1],[0,-2,-2,0],[0,2,2,1]]
[[0,0,2,1],[0,2,2,0],[0,2,2,1]]
[[0,0,-2,2],[0,1,-2,0],[0,-1,2,-2]]
[[0,0,-2,2],[0,-1,2,0],[0,-1,2,-2]]
[[0,0,2,2],[0,-1,-2,0],[0,-1,-2,-2]]
[[0,0,2,2],[0,1,2,0],[0,-1,-2,-2]]
[[0,0,-2,2],[0,1,-2,0],[0,1,-2,2]]
[[0,0,-2,2],[0,-1,2,0],[0,1,-2,2]]
[[0,0,2,2],[0,-1,-2,0],[0,1,2,2]]
[[0,0,2,2],[0,1,2,0],[0,1,2,2]]
[[0,2,0,-2],[1,-1,-2,0],[-1,1,0,-2]]
[[0,2,0,-2],[1,1,-2,0],[-1,-1,0,2]]
[[0,-2,-2,0],[1,1,-1,-1],[-1,-1,-1,-1]]
[[0,2,2,0],[1,1,-1,-1],[-1,-1,-1,-1]]
[[0,-2,-2,0],[1,2,0,0],[-1,-2,-2,0]]
[[0,2,-2,0],[1,-2,0,0],[-1,2,-2,0]]
[[0,-2,0,0],[1,0,-1,0],[-1,0,-1,0]]
[[0,2,0,0],[1,0,-1,0],[-1,0,-1,0]]
[[0,-2,2,0],[1,-2,0,0],[-1,2,-2,0]]
[[0,2,2,0],[1,2,0,0],[-1,-2,-2,0]]
[[0,2,-2,0],[1,-1,-1,1],[-1,1,-1,1]]
[[0,-2,2,0],[1,-1,-1,1],[-1,1,-1,1]]
[[0,-2,0,2],[1,-1,-2,0],[-1,1,0,-2]]
[[0,-2,0,2],[1,1,-2,0],[-1,-1,0,2]]
[[0,2,0,-2],[1,1,-2,0],[1,1,0,-2]]
[[0,2,0,-2],[1,-1,-2,0],[1,-1,0,2]]
[[0,-2,-2,0],[1,1,-1,-1],[1,1,1,1]]
[[0,2,2,0],[1,1,-1,-1],[1,1,1,1]]
[[0,-2,-2,0],[1,2,0,0],[1,2,2,0]]
[[0,2,-2,0],[1,-2,0,0],[1,-2,2,0]]
[[0,-2,0,0],[1,0,-1,0],[1,0,1,0]]
[[0,2,0,0],[1,0,-1,0],[1,0,1,0]]
[[0,-2,2,0],[1,-2,0,0],[1,-2,2,0]]
[[0,2,2,0],[1,2,0,0],[1,2,2,0]]
[[0,2,-2,0],[1,-1,-1,1],[1,-1,1,-1]]
[[0,-2,2,0],[1,-1,-1,1],[1,-1,1,-1]]
[[0,-2,0,2],[1,1,-2,0],[1,1,0,-2]]
[[0,-2,0,2],[1,-1,-2,0],[1,-1,0,2]]
[[0,2,1,-1],[2,0,-2,0],[-2,0,1,-1]]
[[0,2,-1,-1],[2,0,-2,0],[-2,0,1,1]]
[[0,-2,-1,0],[2,2,0,0],[-2,-2,-1,0]]
[[0,2,-1,0],[2,-2,0,0],[-2,2,-1,0]]
[[0,-2,1,0],[2,-2,0,0],[-2,2,-1,0]]
[[0,2,1,0],[2,2,0,0],[-2,-2,-1,0]]
[[0,-2,-1,1],[2,0,-2,0],[-2,0,1,-1]]
[[0,-2,1,1],[2,0,-2,0],[-2,0,1,1]]
[[0,2,-1,-1],[2,0,-2,0],[2,0,-1,-1]]
[[0,2,1,-1],[2,0,-2,0],[2,0,-1,1]]
[[0,-2,-1,0],[2,2,0,0],[2,2,1,0]]
[[0,2,-1,0],[2,-2,0,0],[2,-2,1,0]]
[[0,-2,1,0],[2,-2,0,0],[2,-2,1,0]]
[[0,2,1,0],[2,2,0,0],[2,2,1,0]]
[[0,-2,1,1],[2,0,-2,0],[2,0,-1,-1]]
[[0,-2,-1,1],[2,0,-2,0],[2,0,-1,1]]
[[1,1,-1,-1],[0,-2,-2,0],[-1,-1,-1,-1]]
[[1,1,-1,-1],[0,2,2,0],[-1,-1,-1,-1]]
[[1,-1,-2,0],[0,2,0,-2],[-1,1,0,-2]]
[[1,1,-2,0],[0,2,0,-2],[-1,-1,0,2]]
[[1,0,-1,0],[0,-2,0,0],[-1,0,-1,0]]
[[1,0,-1,0],[0,2,0,0],[-1,0,-1,0]]
[[1,-2,0,0],[0,2,-2,0],[-1,2,-2,0]]
[[1,2,0,0],[0,-2,-2,0],[-1,-2,-2,0]]
[[1,-2,0,0],[0,-2,2,0],[-1,2,-2,0]]
[[1,2,0,0],[0,2,2,0],[-1,-2,-2,0]]
[[1,-1,-2,0],[0,-2,0,2],[-1,1,0,-2]]
[[1,1,-2,0],[0,-2,0,2],[-1,-1,0,2]]
[[1,-1,-1,1],[0,2,-2,0],[-1,1,-1,1]]
[[1,-1,-1,1],[0,-2,2,0],[-1,1,-1,1]]
[[1,1,-1,-1],[0,-2,-2,0],[1,1,1,1]]
[[1,1,-1,-1],[0,2,2,0],[1,1,1,1]]
[[1,1,-2,0],[0,2,0,-2],[1,1,0,-2]]
[[1,-1,-2,0],[0,2,0,-2],[1,-1,0,2]]
[[1,0,-1,0],[0,-2,0,0],[1,0,1,0]]
[[1,0,-1,0],[0,2,0,0],[1,0,1,0]]
[[1,-2,0,0],[0,2,-2,0],[1,-2,2,0]]
[[1,2,0,0],[0,-2,-2,0],[1,2,2,0]]
[[1,-2,0,0],[0,-2,2,0],[1,-2,2,0]]
[[1,2,0,0],[0,2,2,0],[1,2,2,0]]
[[1,1,-2,0],[0,-2,0,2],[1,1,0,-2]]
[[1,-1,-2,0],[0,-2,0,2],[1,-1,0,2]]
[[1,-1,-1,1],[0,2,-2,0],[1,-1,1,-1]]
[[1,-1,-1,1],[0,-2,2,0],[1,-1,1,-1]]
[[2,0,-2,0],[0,2,1,-1],[-2,0,1,-1]]
[[2,0,-2,0],[0,2,-1,-1],[-2,0,1,1]]
[[2,-2,0,0],[0,2,-1,0],[-2,2,-1,0]]
[[2,2,0,0],[0,-2,-1,0],[-2,-2,-1,0]]
[[2,-2,0,0],[0,-2,1,0],[-2,2,-1,0]]
[[2,2,0,0],[0,2,1,0],[-2,-2,-1,0]]
[[2,0,-2,0],[0,-2,-1,1],[-2,0,1,-1]]
[[2,0,-2,0],[0,-2,1,1],[-2,0,1,1]]
[[2,0,-2,0],[0,2,-1,-1],[2,0,-1,-1]]
[[2,0,-2,0],[0,2,1,-1],[2,0,-1,1]]
[[2,-2,0,0],[0,2,-1,0],[2,-2,1,0]]
[[2,2,0,0],[0,-2,-1,0],[2,2,1,0]]
[[2,-2,0,0],[0,-2,1,0],[2,-2,1,0]]
[[2,2,0,0],[0,2,1,0],[2,2,1,0]]
[[2,0,-2,0],[0,-2,1,1],[2,0,-1,-1]]
[[2,0,-2,0],[0,-2,-1,1],[2,0,-1,1]]
#---> reslines=256
