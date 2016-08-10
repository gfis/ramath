/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -l 6 -f test/PG33.data.tmp pident
    Do   N O T   edit this file, but ProgramGenerator.java instead!
*/
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
int reslines = 0;
printf("#---> start of results ----\n");
/* simplified and grouped: 
    [0]  + 3*m	( - A12*A13*A13 - A22*A23*A23 - A32*A33*A33 + A42*A43*A43)	8{A12,A13,A22,A23,A32,A33,A42,A43}
    [1]  + 3*m^2	( - A12*A12*A13 - A11*A13*A13 - A22*A22*A23 - A21*A23*A23 - A32*A32*A33 - A31*A33*A33 + A42*A42*A43 + A41*A43*A43)	12{A11,A12,A13,A21,A22,A23,A31,A32,A33,A41,A42,A43}
    [2]  + m^3	( - A12*A12*A12 - 6*A11*A12*A13 - A22*A22*A22 - 6*A21*A22*A23 - A32*A32*A32 - 6*A31*A32*A33 + A42*A42*A42 + 6*A41*A42*A43)	12{A11,A12,A13,A21,A22,A23,A31,A32,A33,A41,A42,A43}
    [3]  + 3*m^4	( - A11*A12*A12 - A11*A11*A13 - A21*A22*A22 - A21*A21*A23 - A31*A32*A32 - A31*A31*A33 + A41*A42*A42 + A41*A41*A43)	12{A11,A12,A13,A21,A22,A23,A31,A32,A33,A41,A42,A43}
    [4]  + 3*m^5	( - A11*A11*A12 - A21*A21*A22 - A31*A31*A32 + A41*A41*A42)	8{A11,A12,A21,A22,A31,A32,A41,A42}
    [5]  + m^6	( - A11*A11*A11 - A21*A21*A21 - A31*A31*A31 + A41*A41*A41)	4{A11,A21,A31,A41}
    [6]  + 1	( - A13*A13*A13 - A23*A23*A23 - A33*A33*A33 + A43*A43*A43)	4{A13,A23,A33,A43}
    minSize=4, maxSize=12
#---> nrows=4
#---> ncols=3
#---> isolated=a,b,c,d
#---> parameter=m
#---> rset0= - A13 + a - A12*m - A11*m^2;  - A23 + b - A22*m - A21*m^2;  - A33 + c - A32*m - A31*m^2;  - A43 + d - A42*m - A41*m^2; a^3 + b^3 + c^3 - d^3
#---> poly1= - A13^3 - A23^3 - A33^3 + A43^3 - 3*A12*A13^2*m - 3*A22*A23^2*m - 3*A32*A33^2*m + 3*A42*A43^2*m - 3*A12^2*A13*m^2 - 3*A11*A13^2*m^2 - 3*A22^2*A23*m^2 - 3*A21*A23^2*m^2 - 3*A32^2*A33*m^2 - 3*A31*A33^2*m^2 + 3*A42^2*A43*m^2 + 3*A41*A43^2*m^2 - A12^3*m^3 - 6*A11*A12*A13*m^3 - A22^3*m^3 - 6*A21*A22*A23*m^3 - A32^3*m^3 - 6*A31*A32*A33*m^3 + A42^3*m^3 + 6*A41*A42*A43*m^3 - 3*A11*A12^2*m^4 - 3*A11^2*A13*m^4 - 3*A21*A22^2*m^4 - 3*A21^2*A23*m^4 - 3*A31*A32^2*m^4 - 3*A31^2*A33*m^4 + 3*A41*A42^2*m^4 + 3*A41^2*A43*m^4 - 3*A11^2*A12*m^5 - 3*A21^2*A22*m^5 - 3*A31^2*A32*m^5 + 3*A41^2*A42*m^5 - A11^3*m^6 - A21^3*m^6 - A31^3*m^6 + A41^3*m^6
#---> pmat=[[A11,A12,A13],[A21,A22,A23],[A31,A32,A33],[A41,A42,A43]]
*/
int A11,A12,A13,A21,A22,A23,A31,A32,A33,A41,A42,A43;
for (A11 = -6; A11 < 7; A11++)  {
for (A21 = -6; A21 < 7; A21++)  {
for (A31 = -6; A31 < 7; A31++)  {
for (A41 = -6; A41 < 7; A41++)  {
if ( - A11*A11*A11 - A21*A21*A21 - A31*A31*A31 + A41*A41*A41 == 0) /* [5], minSize = 4 */  {
for (A13 = -6; A13 < 7; A13++)  {
for (A23 = -6; A23 < 7; A23++)  {
for (A33 = -6; A33 < 7; A33++)  {
for (A43 = -6; A43 < 7; A43++)  {
if ( - A13*A13*A13 - A23*A23*A23 - A33*A33*A33 + A43*A43*A43 == 0) /* [6], minSize = 4 */  {
for (A12 = -6; A12 < 7; A12++)  {
for (A22 = -6; A22 < 7; A22++)  {
for (A32 = -6; A32 < 7; A32++)  {
for (A42 = -6; A42 < 7; A42++)  {
if ( - A12*A13*A13 - A22*A23*A23 - A32*A33*A33 + A42*A43*A43 == 0) /* [0], minSize = 8 */  {
if ( - A11*A11*A12 - A21*A21*A22 - A31*A31*A32 + A41*A41*A42 == 0) /* [4], minSize = 8 */  {
if ( - A12*A12*A13 - A11*A13*A13 - A22*A22*A23 - A21*A23*A23 - A32*A32*A33 - A31*A33*A33 + A42*A42*A43 + A41*A43*A43 == 0) /* [1], minSize = 12 */  {
if ( - A12*A12*A12 - 6*A11*A12*A13 - A22*A22*A22 - 6*A21*A22*A23 - A32*A32*A32 - 6*A31*A32*A33 + A42*A42*A42 + 6*A41*A42*A43 == 0) /* [2], minSize = 12 */  {
if ( - A11*A12*A12 - A11*A11*A13 - A21*A22*A22 - A21*A21*A23 - A31*A32*A32 - A31*A31*A33 + A41*A42*A42 + A41*A41*A43 == 0) /* [3], minSize = 12 */  {
if (A11 != 0 || A12 != 0 || A13 != 0) /* row 1 != 0 */  {
if (A11 != A21 || A12 != A22 || A13 != A23) /* row 1 != row 2 */  {
if (A11 != A31 || A12 != A32 || A13 != A33) /* row 1 != row 3 */  {
if (A11 != A41 || A12 != A42 || A13 != A43) /* row 1 != row 4 */  {
if (A21 != 0 || A22 != 0 || A23 != 0) /* row 2 != 0 */  {
if (A21 != A31 || A22 != A32 || A23 != A33) /* row 2 != row 3 */  {
if (A21 != A41 || A22 != A42 || A23 != A43) /* row 2 != row 4 */  {
if (A31 != 0 || A32 != 0 || A33 != 0) /* row 3 != 0 */  {
if (A31 != A41 || A32 != A42 || A33 != A43) /* row 3 != row 4 */  {
if (A41 != 0 || A42 != 0 || A43 != 0) /* row 4 != 0 */  {
printf("[");
printf("[%d,%d,%d]",A11,A12,A13);
printf(",");
printf("[%d,%d,%d]",A21,A22,A23);
printf(",");
printf("[%d,%d,%d]",A31,A32,A33);
printf(",");
printf("[%d,%d,%d]",A41,A42,A43);
printf("]");
reslines ++;
printf("\n");
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
[[-6,-6,-6],[3,3,3],[4,4,4],[-5,-5,-5]]
[[-6,0,-6],[3,0,3],[4,0,4],[-5,0,-5]]
[[-6,6,-6],[3,-3,3],[4,-4,4],[-5,5,-5]]
[[-6,-4,-4],[3,-5,-5],[4,4,6],[-5,-5,3]]
[[-6,4,-4],[3,5,-5],[4,-4,6],[-5,5,3]]
[[-6,-6,0],[3,3,0],[4,4,0],[-5,-5,0]]
[[-6,0,0],[3,0,0],[4,0,0],[-5,0,0]]
[[-6,6,0],[3,-3,0],[4,-4,0],[-5,5,0]]
[[-6,-6,6],[3,3,-3],[4,4,-4],[-5,-5,5]]
[[-6,0,6],[3,0,-3],[4,0,-4],[-5,0,5]]
[[-6,6,6],[3,-3,-3],[4,-4,-4],[-5,5,5]]
[[-6,-6,-6],[3,3,3],[5,5,5],[-4,-4,-4]]
[[-6,0,-6],[3,0,3],[5,0,5],[-4,0,-4]]
[[-6,6,-6],[3,-3,3],[5,-5,5],[-4,4,-4]]
[[-6,-4,-4],[3,-5,-5],[5,5,-3],[-4,-4,-6]]
[[-6,4,-4],[3,5,-5],[5,-5,-3],[-4,4,-6]]
[[-6,-6,0],[3,3,0],[5,5,0],[-4,-4,0]]
[[-6,0,0],[3,0,0],[5,0,0],[-4,0,0]]
[[-6,6,0],[3,-3,0],[5,-5,0],[-4,4,0]]
[[-6,-6,6],[3,3,-3],[5,5,-5],[-4,-4,4]]
[[-6,0,6],[3,0,-3],[5,0,-5],[-4,0,4]]
[[-6,6,6],[3,-3,-3],[5,-5,-5],[-4,4,4]]
[[-6,-6,-6],[4,4,4],[3,3,3],[-5,-5,-5]]
[[-6,0,-6],[4,0,4],[3,0,3],[-5,0,-5]]
[[-6,6,-6],[4,-4,4],[3,-3,3],[-5,5,-5]]
[[-6,-4,-4],[4,4,6],[3,-5,-5],[-5,-5,3]]
[[-6,4,-4],[4,-4,6],[3,5,-5],[-5,5,3]]
[[-6,-6,0],[4,4,0],[3,3,0],[-5,-5,0]]
[[-6,0,0],[4,0,0],[3,0,0],[-5,0,0]]
[[-6,6,0],[4,-4,0],[3,-3,0],[-5,5,0]]
[[-6,-6,6],[4,4,-4],[3,3,-3],[-5,-5,5]]
[[-6,0,6],[4,0,-4],[3,0,-3],[-5,0,5]]
[[-6,6,6],[4,-4,-4],[3,-3,-3],[-5,5,5]]
[[-6,-6,-6],[4,4,4],[5,5,5],[-3,-3,-3]]
[[-6,0,-6],[4,0,4],[5,0,5],[-3,0,-3]]
[[-6,6,-6],[4,-4,4],[5,-5,5],[-3,3,-3]]
[[-6,-4,-4],[4,4,6],[5,5,-3],[-3,5,5]]
[[-6,4,-4],[4,-4,6],[5,-5,-3],[-3,-5,5]]
[[-6,-6,0],[4,4,0],[5,5,0],[-3,-3,0]]
[[-6,0,0],[4,0,0],[5,0,0],[-3,0,0]]
[[-6,6,0],[4,-4,0],[5,-5,0],[-3,3,0]]
[[-6,-6,6],[4,4,-4],[5,5,-5],[-3,-3,3]]
[[-6,0,6],[4,0,-4],[5,0,-5],[-3,0,3]]
[[-6,6,6],[4,-4,-4],[5,-5,-5],[-3,3,3]]
[[-6,-6,-6],[5,5,5],[3,3,3],[-4,-4,-4]]
[[-6,0,-6],[5,0,5],[3,0,3],[-4,0,-4]]
[[-6,6,-6],[5,-5,5],[3,-3,3],[-4,4,-4]]
[[-6,-4,-4],[5,5,-3],[3,-5,-5],[-4,-4,-6]]
[[-6,4,-4],[5,-5,-3],[3,5,-5],[-4,4,-6]]
[[-6,-6,0],[5,5,0],[3,3,0],[-4,-4,0]]
[[-6,0,0],[5,0,0],[3,0,0],[-4,0,0]]
[[-6,6,0],[5,-5,0],[3,-3,0],[-4,4,0]]
[[-6,-6,6],[5,5,-5],[3,3,-3],[-4,-4,4]]
[[-6,0,6],[5,0,-5],[3,0,-3],[-4,0,4]]
[[-6,6,6],[5,-5,-5],[3,-3,-3],[-4,4,4]]
[[-6,-6,-6],[5,5,5],[4,4,4],[-3,-3,-3]]
[[-6,0,-6],[5,0,5],[4,0,4],[-3,0,-3]]
[[-6,6,-6],[5,-5,5],[4,-4,4],[-3,3,-3]]
[[-6,-4,-4],[5,5,-3],[4,4,6],[-3,5,5]]
[[-6,4,-4],[5,-5,-3],[4,-4,6],[-3,-5,5]]
[[-6,-6,0],[5,5,0],[4,4,0],[-3,-3,0]]
[[-6,0,0],[5,0,0],[4,0,0],[-3,0,0]]
[[-6,6,0],[5,-5,0],[4,-4,0],[-3,3,0]]
[[-6,-6,6],[5,5,-5],[4,4,-4],[-3,-3,3]]
[[-6,0,6],[5,0,-5],[4,0,-4],[-3,0,3]]
[[-6,6,6],[5,-5,-5],[4,-4,-4],[-3,3,3]]
[[-5,-5,-5],[-4,-4,-4],[-3,-3,-3],[-6,-6,-6]]
[[-5,0,-5],[-4,0,-4],[-3,0,-3],[-6,0,-6]]
[[-5,5,-5],[-4,4,-4],[-3,3,-3],[-6,6,-6]]
[[-5,-5,0],[-4,-4,0],[-3,-3,0],[-6,-6,0]]
[[-5,0,0],[-4,0,0],[-3,0,0],[-6,0,0]]
[[-5,5,0],[-4,4,0],[-3,3,0],[-6,6,0]]
[[-5,-5,3],[-4,-4,-6],[-3,5,5],[-6,-4,-4]]
[[-5,5,3],[-4,4,-6],[-3,-5,5],[-6,4,-4]]
[[-5,-5,5],[-4,-4,4],[-3,-3,3],[-6,-6,6]]
[[-5,0,5],[-4,0,4],[-3,0,3],[-6,0,6]]
[[-5,5,5],[-4,4,4],[-3,3,3],[-6,6,6]]
[[-5,-5,-5],[-4,-4,-4],[6,6,6],[3,3,3]]
[[-5,0,-5],[-4,0,-4],[6,0,6],[3,0,3]]
[[-5,5,-5],[-4,4,-4],[6,-6,6],[3,-3,3]]
[[-5,-5,0],[-4,-4,0],[6,6,0],[3,3,0]]
[[-5,0,0],[-4,0,0],[6,0,0],[3,0,0]]
[[-5,5,0],[-4,4,0],[6,-6,0],[3,-3,0]]
[[-5,-5,3],[-4,-4,-6],[6,4,4],[3,-5,-5]]
[[-5,5,3],[-4,4,-6],[6,-4,4],[3,5,-5]]
[[-5,-5,5],[-4,-4,4],[6,6,-6],[3,3,-3]]
[[-5,0,5],[-4,0,4],[6,0,-6],[3,0,-3]]
[[-5,5,5],[-4,4,4],[6,-6,-6],[3,-3,-3]]
[[-5,-5,-5],[-3,-3,-3],[-4,-4,-4],[-6,-6,-6]]
[[-5,0,-5],[-3,0,-3],[-4,0,-4],[-6,0,-6]]
[[-5,5,-5],[-3,3,-3],[-4,4,-4],[-6,6,-6]]
[[-5,-5,0],[-3,-3,0],[-4,-4,0],[-6,-6,0]]
[[-5,0,0],[-3,0,0],[-4,0,0],[-6,0,0]]
[[-5,5,0],[-3,3,0],[-4,4,0],[-6,6,0]]
[[-5,-5,3],[-3,5,5],[-4,-4,-6],[-6,-4,-4]]
[[-5,5,3],[-3,-5,5],[-4,4,-6],[-6,4,-4]]
[[-5,-5,5],[-3,-3,3],[-4,-4,4],[-6,-6,6]]
[[-5,0,5],[-3,0,3],[-4,0,4],[-6,0,6]]
[[-5,5,5],[-3,3,3],[-4,4,4],[-6,6,6]]
[[-5,-5,-5],[-3,-3,-3],[6,6,6],[4,4,4]]
[[-5,0,-5],[-3,0,-3],[6,0,6],[4,0,4]]
[[-5,5,-5],[-3,3,-3],[6,-6,6],[4,-4,4]]
[[-5,-5,0],[-3,-3,0],[6,6,0],[4,4,0]]
[[-5,0,0],[-3,0,0],[6,0,0],[4,0,0]]
[[-5,5,0],[-3,3,0],[6,-6,0],[4,-4,0]]
[[-5,-5,3],[-3,5,5],[6,4,4],[4,4,6]]
[[-5,5,3],[-3,-5,5],[6,-4,4],[4,-4,6]]
[[-5,-5,5],[-3,-3,3],[6,6,-6],[4,4,-4]]
[[-5,0,5],[-3,0,3],[6,0,-6],[4,0,-4]]
[[-5,5,5],[-3,3,3],[6,-6,-6],[4,-4,-4]]
[[-5,-5,-5],[6,6,6],[-4,-4,-4],[3,3,3]]
[[-5,0,-5],[6,0,6],[-4,0,-4],[3,0,3]]
[[-5,5,-5],[6,-6,6],[-4,4,-4],[3,-3,3]]
[[-5,-5,0],[6,6,0],[-4,-4,0],[3,3,0]]
[[-5,0,0],[6,0,0],[-4,0,0],[3,0,0]]
[[-5,5,0],[6,-6,0],[-4,4,0],[3,-3,0]]
[[-5,-5,3],[6,4,4],[-4,-4,-6],[3,-5,-5]]
[[-5,5,3],[6,-4,4],[-4,4,-6],[3,5,-5]]
[[-5,-5,5],[6,6,-6],[-4,-4,4],[3,3,-3]]
[[-5,0,5],[6,0,-6],[-4,0,4],[3,0,-3]]
[[-5,5,5],[6,-6,-6],[-4,4,4],[3,-3,-3]]
[[-5,-5,-5],[6,6,6],[-3,-3,-3],[4,4,4]]
[[-5,0,-5],[6,0,6],[-3,0,-3],[4,0,4]]
[[-5,5,-5],[6,-6,6],[-3,3,-3],[4,-4,4]]
[[-5,-5,0],[6,6,0],[-3,-3,0],[4,4,0]]
[[-5,0,0],[6,0,0],[-3,0,0],[4,0,0]]
[[-5,5,0],[6,-6,0],[-3,3,0],[4,-4,0]]
[[-5,-5,3],[6,4,4],[-3,5,5],[4,4,6]]
[[-5,5,3],[6,-4,4],[-3,-5,5],[4,-4,6]]
[[-5,-5,5],[6,6,-6],[-3,-3,3],[4,4,-4]]
[[-5,0,5],[6,0,-6],[-3,0,3],[4,0,-4]]
[[-5,5,5],[6,-6,-6],[-3,3,3],[4,-4,-4]]
[[-4,-4,-6],[-5,-5,3],[-3,5,5],[-6,-4,-4]]
[[-4,4,-6],[-5,5,3],[-3,-5,5],[-6,4,-4]]
[[-4,-4,-4],[-5,-5,-5],[-3,-3,-3],[-6,-6,-6]]
[[-4,0,-4],[-5,0,-5],[-3,0,-3],[-6,0,-6]]
[[-4,4,-4],[-5,5,-5],[-3,3,-3],[-6,6,-6]]
[[-4,-4,0],[-5,-5,0],[-3,-3,0],[-6,-6,0]]
[[-4,0,0],[-5,0,0],[-3,0,0],[-6,0,0]]
[[-4,4,0],[-5,5,0],[-3,3,0],[-6,6,0]]
[[-4,-4,4],[-5,-5,5],[-3,-3,3],[-6,-6,6]]
[[-4,0,4],[-5,0,5],[-3,0,3],[-6,0,6]]
[[-4,4,4],[-5,5,5],[-3,3,3],[-6,6,6]]
[[-4,-4,-6],[-5,-5,3],[6,4,4],[3,-5,-5]]
[[-4,4,-6],[-5,5,3],[6,-4,4],[3,5,-5]]
[[-4,-4,-4],[-5,-5,-5],[6,6,6],[3,3,3]]
[[-4,0,-4],[-5,0,-5],[6,0,6],[3,0,3]]
[[-4,4,-4],[-5,5,-5],[6,-6,6],[3,-3,3]]
[[-4,-4,0],[-5,-5,0],[6,6,0],[3,3,0]]
[[-4,0,0],[-5,0,0],[6,0,0],[3,0,0]]
[[-4,4,0],[-5,5,0],[6,-6,0],[3,-3,0]]
[[-4,-4,4],[-5,-5,5],[6,6,-6],[3,3,-3]]
[[-4,0,4],[-5,0,5],[6,0,-6],[3,0,-3]]
[[-4,4,4],[-5,5,5],[6,-6,-6],[3,-3,-3]]
[[-4,-4,-6],[-3,5,5],[-5,-5,3],[-6,-4,-4]]
[[-4,4,-6],[-3,-5,5],[-5,5,3],[-6,4,-4]]
[[-4,-4,-4],[-3,-3,-3],[-5,-5,-5],[-6,-6,-6]]
[[-4,0,-4],[-3,0,-3],[-5,0,-5],[-6,0,-6]]
[[-4,4,-4],[-3,3,-3],[-5,5,-5],[-6,6,-6]]
[[-4,-4,0],[-3,-3,0],[-5,-5,0],[-6,-6,0]]
[[-4,0,0],[-3,0,0],[-5,0,0],[-6,0,0]]
[[-4,4,0],[-3,3,0],[-5,5,0],[-6,6,0]]
[[-4,-4,4],[-3,-3,3],[-5,-5,5],[-6,-6,6]]
[[-4,0,4],[-3,0,3],[-5,0,5],[-6,0,6]]
[[-4,4,4],[-3,3,3],[-5,5,5],[-6,6,6]]
[[-4,-4,-6],[-3,5,5],[6,4,4],[5,5,-3]]
[[-4,4,-6],[-3,-5,5],[6,-4,4],[5,-5,-3]]
[[-4,-4,-4],[-3,-3,-3],[6,6,6],[5,5,5]]
[[-4,0,-4],[-3,0,-3],[6,0,6],[5,0,5]]
[[-4,4,-4],[-3,3,-3],[6,-6,6],[5,-5,5]]
[[-4,-4,0],[-3,-3,0],[6,6,0],[5,5,0]]
[[-4,0,0],[-3,0,0],[6,0,0],[5,0,0]]
[[-4,4,0],[-3,3,0],[6,-6,0],[5,-5,0]]
[[-4,-4,4],[-3,-3,3],[6,6,-6],[5,5,-5]]
[[-4,0,4],[-3,0,3],[6,0,-6],[5,0,-5]]
[[-4,4,4],[-3,3,3],[6,-6,-6],[5,-5,-5]]
[[-4,-4,-6],[6,4,4],[-5,-5,3],[3,-5,-5]]
[[-4,4,-6],[6,-4,4],[-5,5,3],[3,5,-5]]
[[-4,-4,-4],[6,6,6],[-5,-5,-5],[3,3,3]]
[[-4,0,-4],[6,0,6],[-5,0,-5],[3,0,3]]
[[-4,4,-4],[6,-6,6],[-5,5,-5],[3,-3,3]]
[[-4,-4,0],[6,6,0],[-5,-5,0],[3,3,0]]
[[-4,0,0],[6,0,0],[-5,0,0],[3,0,0]]
[[-4,4,0],[6,-6,0],[-5,5,0],[3,-3,0]]
[[-4,-4,4],[6,6,-6],[-5,-5,5],[3,3,-3]]
[[-4,0,4],[6,0,-6],[-5,0,5],[3,0,-3]]
[[-4,4,4],[6,-6,-6],[-5,5,5],[3,-3,-3]]
[[-4,-4,-6],[6,4,4],[-3,5,5],[5,5,-3]]
[[-4,4,-6],[6,-4,4],[-3,-5,5],[5,-5,-3]]
[[-4,-4,-4],[6,6,6],[-3,-3,-3],[5,5,5]]
[[-4,0,-4],[6,0,6],[-3,0,-3],[5,0,5]]
[[-4,4,-4],[6,-6,6],[-3,3,-3],[5,-5,5]]
[[-4,-4,0],[6,6,0],[-3,-3,0],[5,5,0]]
[[-4,0,0],[6,0,0],[-3,0,0],[5,0,0]]
[[-4,4,0],[6,-6,0],[-3,3,0],[5,-5,0]]
[[-4,-4,4],[6,6,-6],[-3,-3,3],[5,5,-5]]
[[-4,0,4],[6,0,-6],[-3,0,3],[5,0,-5]]
[[-4,4,4],[6,-6,-6],[-3,3,3],[5,-5,-5]]
[[-3,-3,-3],[-5,-5,-5],[-4,-4,-4],[-6,-6,-6]]
[[-3,0,-3],[-5,0,-5],[-4,0,-4],[-6,0,-6]]
[[-3,3,-3],[-5,5,-5],[-4,4,-4],[-6,6,-6]]
[[-3,-3,0],[-5,-5,0],[-4,-4,0],[-6,-6,0]]
[[-3,0,0],[-5,0,0],[-4,0,0],[-6,0,0]]
[[-3,3,0],[-5,5,0],[-4,4,0],[-6,6,0]]
[[-3,-3,3],[-5,-5,5],[-4,-4,4],[-6,-6,6]]
[[-3,0,3],[-5,0,5],[-4,0,4],[-6,0,6]]
[[-3,3,3],[-5,5,5],[-4,4,4],[-6,6,6]]
[[-3,-5,5],[-5,5,3],[-4,4,-6],[-6,4,-4]]
[[-3,5,5],[-5,-5,3],[-4,-4,-6],[-6,-4,-4]]
[[-3,-3,-3],[-5,-5,-5],[6,6,6],[4,4,4]]
[[-3,0,-3],[-5,0,-5],[6,0,6],[4,0,4]]
[[-3,3,-3],[-5,5,-5],[6,-6,6],[4,-4,4]]
[[-3,-3,0],[-5,-5,0],[6,6,0],[4,4,0]]
[[-3,0,0],[-5,0,0],[6,0,0],[4,0,0]]
[[-3,3,0],[-5,5,0],[6,-6,0],[4,-4,0]]
[[-3,-3,3],[-5,-5,5],[6,6,-6],[4,4,-4]]
[[-3,0,3],[-5,0,5],[6,0,-6],[4,0,-4]]
[[-3,3,3],[-5,5,5],[6,-6,-6],[4,-4,-4]]
[[-3,-5,5],[-5,5,3],[6,-4,4],[4,-4,6]]
[[-3,5,5],[-5,-5,3],[6,4,4],[4,4,6]]
[[-3,-3,-3],[-4,-4,-4],[-5,-5,-5],[-6,-6,-6]]
[[-3,0,-3],[-4,0,-4],[-5,0,-5],[-6,0,-6]]
[[-3,3,-3],[-4,4,-4],[-5,5,-5],[-6,6,-6]]
[[-3,-3,0],[-4,-4,0],[-5,-5,0],[-6,-6,0]]
[[-3,0,0],[-4,0,0],[-5,0,0],[-6,0,0]]
[[-3,3,0],[-4,4,0],[-5,5,0],[-6,6,0]]
[[-3,-3,3],[-4,-4,4],[-5,-5,5],[-6,-6,6]]
[[-3,0,3],[-4,0,4],[-5,0,5],[-6,0,6]]
[[-3,3,3],[-4,4,4],[-5,5,5],[-6,6,6]]
[[-3,-5,5],[-4,4,-6],[-5,5,3],[-6,4,-4]]
[[-3,5,5],[-4,-4,-6],[-5,-5,3],[-6,-4,-4]]
[[-3,-3,-3],[-4,-4,-4],[6,6,6],[5,5,5]]
[[-3,0,-3],[-4,0,-4],[6,0,6],[5,0,5]]
[[-3,3,-3],[-4,4,-4],[6,-6,6],[5,-5,5]]
[[-3,-3,0],[-4,-4,0],[6,6,0],[5,5,0]]
[[-3,0,0],[-4,0,0],[6,0,0],[5,0,0]]
[[-3,3,0],[-4,4,0],[6,-6,0],[5,-5,0]]
[[-3,-3,3],[-4,-4,4],[6,6,-6],[5,5,-5]]
[[-3,0,3],[-4,0,4],[6,0,-6],[5,0,-5]]
[[-3,3,3],[-4,4,4],[6,-6,-6],[5,-5,-5]]
[[-3,-5,5],[-4,4,-6],[6,-4,4],[5,-5,-3]]
[[-3,5,5],[-4,-4,-6],[6,4,4],[5,5,-3]]
[[-3,-3,-3],[6,6,6],[-5,-5,-5],[4,4,4]]
[[-3,0,-3],[6,0,6],[-5,0,-5],[4,0,4]]
[[-3,3,-3],[6,-6,6],[-5,5,-5],[4,-4,4]]
[[-3,-3,0],[6,6,0],[-5,-5,0],[4,4,0]]
[[-3,0,0],[6,0,0],[-5,0,0],[4,0,0]]
[[-3,3,0],[6,-6,0],[-5,5,0],[4,-4,0]]
[[-3,-3,3],[6,6,-6],[-5,-5,5],[4,4,-4]]
[[-3,0,3],[6,0,-6],[-5,0,5],[4,0,-4]]
[[-3,3,3],[6,-6,-6],[-5,5,5],[4,-4,-4]]
[[-3,-5,5],[6,-4,4],[-5,5,3],[4,-4,6]]
[[-3,5,5],[6,4,4],[-5,-5,3],[4,4,6]]
[[-3,-3,-3],[6,6,6],[-4,-4,-4],[5,5,5]]
[[-3,0,-3],[6,0,6],[-4,0,-4],[5,0,5]]
[[-3,3,-3],[6,-6,6],[-4,4,-4],[5,-5,5]]
[[-3,-3,0],[6,6,0],[-4,-4,0],[5,5,0]]
[[-3,0,0],[6,0,0],[-4,0,0],[5,0,0]]
[[-3,3,0],[6,-6,0],[-4,4,0],[5,-5,0]]
[[-3,-3,3],[6,6,-6],[-4,-4,4],[5,5,-5]]
[[-3,0,3],[6,0,-6],[-4,0,4],[5,0,-5]]
[[-3,3,3],[6,-6,-6],[-4,4,4],[5,-5,-5]]
[[-3,-5,5],[6,-4,4],[-4,4,-6],[5,-5,-3]]
[[-3,5,5],[6,4,4],[-4,-4,-6],[5,5,-3]]
[[0,-6,-6],[0,3,3],[0,4,4],[0,-5,-5]]
[[0,0,-6],[0,0,3],[0,0,4],[0,0,-5]]
[[0,6,-6],[0,-3,3],[0,-4,4],[0,5,-5]]
[[0,-6,-6],[0,3,3],[0,5,5],[0,-4,-4]]
[[0,0,-6],[0,0,3],[0,0,5],[0,0,-4]]
[[0,6,-6],[0,-3,3],[0,-5,5],[0,4,-4]]
[[0,-6,-6],[0,4,4],[0,3,3],[0,-5,-5]]
[[0,0,-6],[0,0,4],[0,0,3],[0,0,-5]]
[[0,6,-6],[0,-4,4],[0,-3,3],[0,5,-5]]
[[0,-6,-6],[0,4,4],[0,5,5],[0,-3,-3]]
[[0,0,-6],[0,0,4],[0,0,5],[0,0,-3]]
[[0,6,-6],[0,-4,4],[0,-5,5],[0,3,-3]]
[[0,-6,-6],[0,5,5],[0,3,3],[0,-4,-4]]
[[0,0,-6],[0,0,5],[0,0,3],[0,0,-4]]
[[0,6,-6],[0,-5,5],[0,-3,3],[0,4,-4]]
[[0,-6,-6],[0,5,5],[0,4,4],[0,-3,-3]]
[[0,0,-6],[0,0,5],[0,0,4],[0,0,-3]]
[[0,6,-6],[0,-5,5],[0,-4,4],[0,3,-3]]
[[0,-5,-5],[0,-4,-4],[0,-3,-3],[0,-6,-6]]
[[0,0,-5],[0,0,-4],[0,0,-3],[0,0,-6]]
[[0,5,-5],[0,4,-4],[0,3,-3],[0,6,-6]]
[[0,-5,-5],[0,-4,-4],[0,6,6],[0,3,3]]
[[0,0,-5],[0,0,-4],[0,0,6],[0,0,3]]
[[0,5,-5],[0,4,-4],[0,-6,6],[0,-3,3]]
[[0,-5,-5],[0,-3,-3],[0,-4,-4],[0,-6,-6]]
[[0,0,-5],[0,0,-3],[0,0,-4],[0,0,-6]]
[[0,5,-5],[0,3,-3],[0,4,-4],[0,6,-6]]
[[0,-5,-5],[0,-3,-3],[0,6,6],[0,4,4]]
[[0,0,-5],[0,0,-3],[0,0,6],[0,0,4]]
[[0,5,-5],[0,3,-3],[0,-6,6],[0,-4,4]]
[[0,-5,-5],[0,6,6],[0,-4,-4],[0,3,3]]
[[0,0,-5],[0,0,6],[0,0,-4],[0,0,3]]
[[0,5,-5],[0,-6,6],[0,4,-4],[0,-3,3]]
[[0,-5,-5],[0,6,6],[0,-3,-3],[0,4,4]]
[[0,0,-5],[0,0,6],[0,0,-3],[0,0,4]]
[[0,5,-5],[0,-6,6],[0,3,-3],[0,-4,4]]
[[0,-4,-4],[0,-5,-5],[0,-3,-3],[0,-6,-6]]
[[0,0,-4],[0,0,-5],[0,0,-3],[0,0,-6]]
[[0,4,-4],[0,5,-5],[0,3,-3],[0,6,-6]]
[[0,-4,-4],[0,-5,-5],[0,6,6],[0,3,3]]
[[0,0,-4],[0,0,-5],[0,0,6],[0,0,3]]
[[0,4,-4],[0,5,-5],[0,-6,6],[0,-3,3]]
[[0,-4,-4],[0,-3,-3],[0,-5,-5],[0,-6,-6]]
[[0,0,-4],[0,0,-3],[0,0,-5],[0,0,-6]]
[[0,4,-4],[0,3,-3],[0,5,-5],[0,6,-6]]
[[0,-4,-4],[0,-3,-3],[0,6,6],[0,5,5]]
[[0,0,-4],[0,0,-3],[0,0,6],[0,0,5]]
[[0,4,-4],[0,3,-3],[0,-6,6],[0,-5,5]]
[[0,-4,-4],[0,6,6],[0,-5,-5],[0,3,3]]
[[0,0,-4],[0,0,6],[0,0,-5],[0,0,3]]
[[0,4,-4],[0,-6,6],[0,5,-5],[0,-3,3]]
[[0,-4,-4],[0,6,6],[0,-3,-3],[0,5,5]]
[[0,0,-4],[0,0,6],[0,0,-3],[0,0,5]]
[[0,4,-4],[0,-6,6],[0,3,-3],[0,-5,5]]
[[0,-3,-3],[0,-5,-5],[0,-4,-4],[0,-6,-6]]
[[0,0,-3],[0,0,-5],[0,0,-4],[0,0,-6]]
[[0,3,-3],[0,5,-5],[0,4,-4],[0,6,-6]]
[[0,-3,-3],[0,-5,-5],[0,6,6],[0,4,4]]
[[0,0,-3],[0,0,-5],[0,0,6],[0,0,4]]
[[0,3,-3],[0,5,-5],[0,-6,6],[0,-4,4]]
[[0,-3,-3],[0,-4,-4],[0,-5,-5],[0,-6,-6]]
[[0,0,-3],[0,0,-4],[0,0,-5],[0,0,-6]]
[[0,3,-3],[0,4,-4],[0,5,-5],[0,6,-6]]
[[0,-3,-3],[0,-4,-4],[0,6,6],[0,5,5]]
[[0,0,-3],[0,0,-4],[0,0,6],[0,0,5]]
[[0,3,-3],[0,4,-4],[0,-6,6],[0,-5,5]]
[[0,-3,-3],[0,6,6],[0,-5,-5],[0,4,4]]
[[0,0,-3],[0,0,6],[0,0,-5],[0,0,4]]
[[0,3,-3],[0,-6,6],[0,5,-5],[0,-4,4]]
[[0,-3,-3],[0,6,6],[0,-4,-4],[0,5,5]]
[[0,0,-3],[0,0,6],[0,0,-4],[0,0,5]]
[[0,3,-3],[0,-6,6],[0,4,-4],[0,-5,5]]
[[0,-6,0],[0,3,0],[0,4,0],[0,-5,0]]
[[0,-6,0],[0,3,0],[0,5,0],[0,-4,0]]
[[0,-6,0],[0,4,0],[0,3,0],[0,-5,0]]
[[0,-6,0],[0,4,0],[0,5,0],[0,-3,0]]
[[0,-6,0],[0,5,0],[0,3,0],[0,-4,0]]
[[0,-6,0],[0,5,0],[0,4,0],[0,-3,0]]
[[0,-5,0],[0,-4,0],[0,-3,0],[0,-6,0]]
[[0,-5,0],[0,-4,0],[0,6,0],[0,3,0]]
[[0,-5,0],[0,-3,0],[0,-4,0],[0,-6,0]]
[[0,-5,0],[0,-3,0],[0,6,0],[0,4,0]]
[[0,-5,0],[0,6,0],[0,-4,0],[0,3,0]]
[[0,-5,0],[0,6,0],[0,-3,0],[0,4,0]]
[[0,-4,0],[0,-5,0],[0,-3,0],[0,-6,0]]
[[0,-4,0],[0,-5,0],[0,6,0],[0,3,0]]
[[0,-4,0],[0,-3,0],[0,-5,0],[0,-6,0]]
[[0,-4,0],[0,-3,0],[0,6,0],[0,5,0]]
[[0,-4,0],[0,6,0],[0,-5,0],[0,3,0]]
[[0,-4,0],[0,6,0],[0,-3,0],[0,5,0]]
[[0,-3,0],[0,-5,0],[0,-4,0],[0,-6,0]]
[[0,-3,0],[0,-5,0],[0,6,0],[0,4,0]]
[[0,-3,0],[0,-4,0],[0,-5,0],[0,-6,0]]
[[0,-3,0],[0,-4,0],[0,6,0],[0,5,0]]
[[0,-3,0],[0,6,0],[0,-5,0],[0,4,0]]
[[0,-3,0],[0,6,0],[0,-4,0],[0,5,0]]
[[0,3,0],[0,-6,0],[0,4,0],[0,-5,0]]
[[0,3,0],[0,-6,0],[0,5,0],[0,-4,0]]
[[0,3,0],[0,4,0],[0,-6,0],[0,-5,0]]
[[0,3,0],[0,4,0],[0,5,0],[0,6,0]]
[[0,3,0],[0,5,0],[0,-6,0],[0,-4,0]]
[[0,3,0],[0,5,0],[0,4,0],[0,6,0]]
[[0,4,0],[0,-6,0],[0,3,0],[0,-5,0]]
[[0,4,0],[0,-6,0],[0,5,0],[0,-3,0]]
[[0,4,0],[0,3,0],[0,-6,0],[0,-5,0]]
[[0,4,0],[0,3,0],[0,5,0],[0,6,0]]
[[0,4,0],[0,5,0],[0,-6,0],[0,-3,0]]
[[0,4,0],[0,5,0],[0,3,0],[0,6,0]]
[[0,5,0],[0,-6,0],[0,3,0],[0,-4,0]]
[[0,5,0],[0,-6,0],[0,4,0],[0,-3,0]]
[[0,5,0],[0,3,0],[0,-6,0],[0,-4,0]]
[[0,5,0],[0,3,0],[0,4,0],[0,6,0]]
[[0,5,0],[0,4,0],[0,-6,0],[0,-3,0]]
[[0,5,0],[0,4,0],[0,3,0],[0,6,0]]
[[0,6,0],[0,-5,0],[0,-4,0],[0,3,0]]
[[0,6,0],[0,-5,0],[0,-3,0],[0,4,0]]
[[0,6,0],[0,-4,0],[0,-5,0],[0,3,0]]
[[0,6,0],[0,-4,0],[0,-3,0],[0,5,0]]
[[0,6,0],[0,-3,0],[0,-5,0],[0,4,0]]
[[0,6,0],[0,-3,0],[0,-4,0],[0,5,0]]
[[0,-3,3],[0,6,-6],[0,-4,4],[0,5,-5]]
[[0,0,3],[0,0,-6],[0,0,4],[0,0,-5]]
[[0,3,3],[0,-6,-6],[0,4,4],[0,-5,-5]]
[[0,-3,3],[0,6,-6],[0,-5,5],[0,4,-4]]
[[0,0,3],[0,0,-6],[0,0,5],[0,0,-4]]
[[0,3,3],[0,-6,-6],[0,5,5],[0,-4,-4]]
[[0,-3,3],[0,-4,4],[0,6,-6],[0,5,-5]]
[[0,0,3],[0,0,4],[0,0,-6],[0,0,-5]]
[[0,3,3],[0,4,4],[0,-6,-6],[0,-5,-5]]
[[0,-3,3],[0,-4,4],[0,-5,5],[0,-6,6]]
[[0,0,3],[0,0,4],[0,0,5],[0,0,6]]
[[0,3,3],[0,4,4],[0,5,5],[0,6,6]]
[[0,-3,3],[0,-5,5],[0,6,-6],[0,4,-4]]
[[0,0,3],[0,0,5],[0,0,-6],[0,0,-4]]
[[0,3,3],[0,5,5],[0,-6,-6],[0,-4,-4]]
[[0,-3,3],[0,-5,5],[0,-4,4],[0,-6,6]]
[[0,0,3],[0,0,5],[0,0,4],[0,0,6]]
[[0,3,3],[0,5,5],[0,4,4],[0,6,6]]
[[0,-4,4],[0,6,-6],[0,-3,3],[0,5,-5]]
[[0,0,4],[0,0,-6],[0,0,3],[0,0,-5]]
[[0,4,4],[0,-6,-6],[0,3,3],[0,-5,-5]]
[[0,-4,4],[0,6,-6],[0,-5,5],[0,3,-3]]
[[0,0,4],[0,0,-6],[0,0,5],[0,0,-3]]
[[0,4,4],[0,-6,-6],[0,5,5],[0,-3,-3]]
[[0,-4,4],[0,-3,3],[0,6,-6],[0,5,-5]]
[[0,0,4],[0,0,3],[0,0,-6],[0,0,-5]]
[[0,4,4],[0,3,3],[0,-6,-6],[0,-5,-5]]
[[0,-4,4],[0,-3,3],[0,-5,5],[0,-6,6]]
[[0,0,4],[0,0,3],[0,0,5],[0,0,6]]
[[0,4,4],[0,3,3],[0,5,5],[0,6,6]]
[[0,-4,4],[0,-5,5],[0,6,-6],[0,3,-3]]
[[0,0,4],[0,0,5],[0,0,-6],[0,0,-3]]
[[0,4,4],[0,5,5],[0,-6,-6],[0,-3,-3]]
[[0,-4,4],[0,-5,5],[0,-3,3],[0,-6,6]]
[[0,0,4],[0,0,5],[0,0,3],[0,0,6]]
[[0,4,4],[0,5,5],[0,3,3],[0,6,6]]
[[0,-5,5],[0,6,-6],[0,-3,3],[0,4,-4]]
[[0,0,5],[0,0,-6],[0,0,3],[0,0,-4]]
[[0,5,5],[0,-6,-6],[0,3,3],[0,-4,-4]]
[[0,-5,5],[0,6,-6],[0,-4,4],[0,3,-3]]
[[0,0,5],[0,0,-6],[0,0,4],[0,0,-3]]
[[0,5,5],[0,-6,-6],[0,4,4],[0,-3,-3]]
[[0,-5,5],[0,-3,3],[0,6,-6],[0,4,-4]]
[[0,0,5],[0,0,3],[0,0,-6],[0,0,-4]]
[[0,5,5],[0,3,3],[0,-6,-6],[0,-4,-4]]
[[0,-5,5],[0,-3,3],[0,-4,4],[0,-6,6]]
[[0,0,5],[0,0,3],[0,0,4],[0,0,6]]
[[0,5,5],[0,3,3],[0,4,4],[0,6,6]]
[[0,-5,5],[0,-4,4],[0,6,-6],[0,3,-3]]
[[0,0,5],[0,0,4],[0,0,-6],[0,0,-3]]
[[0,5,5],[0,4,4],[0,-6,-6],[0,-3,-3]]
[[0,-5,5],[0,-4,4],[0,-3,3],[0,-6,6]]
[[0,0,5],[0,0,4],[0,0,3],[0,0,6]]
[[0,5,5],[0,4,4],[0,3,3],[0,6,6]]
[[0,-6,6],[0,5,-5],[0,4,-4],[0,-3,3]]
[[0,0,6],[0,0,-5],[0,0,-4],[0,0,3]]
[[0,6,6],[0,-5,-5],[0,-4,-4],[0,3,3]]
[[0,-6,6],[0,5,-5],[0,3,-3],[0,-4,4]]
[[0,0,6],[0,0,-5],[0,0,-3],[0,0,4]]
[[0,6,6],[0,-5,-5],[0,-3,-3],[0,4,4]]
[[0,-6,6],[0,4,-4],[0,5,-5],[0,-3,3]]
[[0,0,6],[0,0,-4],[0,0,-5],[0,0,3]]
[[0,6,6],[0,-4,-4],[0,-5,-5],[0,3,3]]
[[0,-6,6],[0,4,-4],[0,3,-3],[0,-5,5]]
[[0,0,6],[0,0,-4],[0,0,-3],[0,0,5]]
[[0,6,6],[0,-4,-4],[0,-3,-3],[0,5,5]]
[[0,-6,6],[0,3,-3],[0,5,-5],[0,-4,4]]
[[0,0,6],[0,0,-3],[0,0,-5],[0,0,4]]
[[0,6,6],[0,-3,-3],[0,-5,-5],[0,4,4]]
[[0,-6,6],[0,3,-3],[0,4,-4],[0,-5,5]]
[[0,0,6],[0,0,-3],[0,0,-4],[0,0,5]]
[[0,6,6],[0,-3,-3],[0,-4,-4],[0,5,5]]
[[3,-5,-5],[-6,-4,-4],[4,4,6],[-5,-5,3]]
[[3,5,-5],[-6,4,-4],[4,-4,6],[-5,5,3]]
[[3,-3,-3],[-6,6,6],[4,-4,-4],[-5,5,5]]
[[3,0,-3],[-6,0,6],[4,0,-4],[-5,0,5]]
[[3,3,-3],[-6,-6,6],[4,4,-4],[-5,-5,5]]
[[3,-3,0],[-6,6,0],[4,-4,0],[-5,5,0]]
[[3,0,0],[-6,0,0],[4,0,0],[-5,0,0]]
[[3,3,0],[-6,-6,0],[4,4,0],[-5,-5,0]]
[[3,-3,3],[-6,6,-6],[4,-4,4],[-5,5,-5]]
[[3,0,3],[-6,0,-6],[4,0,4],[-5,0,-5]]
[[3,3,3],[-6,-6,-6],[4,4,4],[-5,-5,-5]]
[[3,-5,-5],[-6,-4,-4],[5,5,-3],[-4,-4,-6]]
[[3,5,-5],[-6,4,-4],[5,-5,-3],[-4,4,-6]]
[[3,-3,-3],[-6,6,6],[5,-5,-5],[-4,4,4]]
[[3,0,-3],[-6,0,6],[5,0,-5],[-4,0,4]]
[[3,3,-3],[-6,-6,6],[5,5,-5],[-4,-4,4]]
[[3,-3,0],[-6,6,0],[5,-5,0],[-4,4,0]]
[[3,0,0],[-6,0,0],[5,0,0],[-4,0,0]]
[[3,3,0],[-6,-6,0],[5,5,0],[-4,-4,0]]
[[3,-3,3],[-6,6,-6],[5,-5,5],[-4,4,-4]]
[[3,0,3],[-6,0,-6],[5,0,5],[-4,0,-4]]
[[3,3,3],[-6,-6,-6],[5,5,5],[-4,-4,-4]]
[[3,-5,-5],[4,4,6],[-6,-4,-4],[-5,-5,3]]
[[3,5,-5],[4,-4,6],[-6,4,-4],[-5,5,3]]
[[3,-3,-3],[4,-4,-4],[-6,6,6],[-5,5,5]]
[[3,0,-3],[4,0,-4],[-6,0,6],[-5,0,5]]
[[3,3,-3],[4,4,-4],[-6,-6,6],[-5,-5,5]]
[[3,-3,0],[4,-4,0],[-6,6,0],[-5,5,0]]
[[3,0,0],[4,0,0],[-6,0,0],[-5,0,0]]
[[3,3,0],[4,4,0],[-6,-6,0],[-5,-5,0]]
[[3,-3,3],[4,-4,4],[-6,6,-6],[-5,5,-5]]
[[3,0,3],[4,0,4],[-6,0,-6],[-5,0,-5]]
[[3,3,3],[4,4,4],[-6,-6,-6],[-5,-5,-5]]
[[3,-5,-5],[4,4,6],[5,5,-3],[6,4,4]]
[[3,5,-5],[4,-4,6],[5,-5,-3],[6,-4,4]]
[[3,-3,-3],[4,-4,-4],[5,-5,-5],[6,-6,-6]]
[[3,0,-3],[4,0,-4],[5,0,-5],[6,0,-6]]
[[3,3,-3],[4,4,-4],[5,5,-5],[6,6,-6]]
[[3,-3,0],[4,-4,0],[5,-5,0],[6,-6,0]]
[[3,0,0],[4,0,0],[5,0,0],[6,0,0]]
[[3,3,0],[4,4,0],[5,5,0],[6,6,0]]
[[3,-3,3],[4,-4,4],[5,-5,5],[6,-6,6]]
[[3,0,3],[4,0,4],[5,0,5],[6,0,6]]
[[3,3,3],[4,4,4],[5,5,5],[6,6,6]]
[[3,-5,-5],[5,5,-3],[-6,-4,-4],[-4,-4,-6]]
[[3,5,-5],[5,-5,-3],[-6,4,-4],[-4,4,-6]]
[[3,-3,-3],[5,-5,-5],[-6,6,6],[-4,4,4]]
[[3,0,-3],[5,0,-5],[-6,0,6],[-4,0,4]]
[[3,3,-3],[5,5,-5],[-6,-6,6],[-4,-4,4]]
[[3,-3,0],[5,-5,0],[-6,6,0],[-4,4,0]]
[[3,0,0],[5,0,0],[-6,0,0],[-4,0,0]]
[[3,3,0],[5,5,0],[-6,-6,0],[-4,-4,0]]
[[3,-3,3],[5,-5,5],[-6,6,-6],[-4,4,-4]]
[[3,0,3],[5,0,5],[-6,0,-6],[-4,0,-4]]
[[3,3,3],[5,5,5],[-6,-6,-6],[-4,-4,-4]]
[[3,-5,-5],[5,5,-3],[4,4,6],[6,4,4]]
[[3,5,-5],[5,-5,-3],[4,-4,6],[6,-4,4]]
[[3,-3,-3],[5,-5,-5],[4,-4,-4],[6,-6,-6]]
[[3,0,-3],[5,0,-5],[4,0,-4],[6,0,-6]]
[[3,3,-3],[5,5,-5],[4,4,-4],[6,6,-6]]
[[3,-3,0],[5,-5,0],[4,-4,0],[6,-6,0]]
[[3,0,0],[5,0,0],[4,0,0],[6,0,0]]
[[3,3,0],[5,5,0],[4,4,0],[6,6,0]]
[[3,-3,3],[5,-5,5],[4,-4,4],[6,-6,6]]
[[3,0,3],[5,0,5],[4,0,4],[6,0,6]]
[[3,3,3],[5,5,5],[4,4,4],[6,6,6]]
[[4,-4,-4],[-6,6,6],[3,-3,-3],[-5,5,5]]
[[4,0,-4],[-6,0,6],[3,0,-3],[-5,0,5]]
[[4,4,-4],[-6,-6,6],[3,3,-3],[-5,-5,5]]
[[4,-4,0],[-6,6,0],[3,-3,0],[-5,5,0]]
[[4,0,0],[-6,0,0],[3,0,0],[-5,0,0]]
[[4,4,0],[-6,-6,0],[3,3,0],[-5,-5,0]]
[[4,-4,4],[-6,6,-6],[3,-3,3],[-5,5,-5]]
[[4,0,4],[-6,0,-6],[3,0,3],[-5,0,-5]]
[[4,4,4],[-6,-6,-6],[3,3,3],[-5,-5,-5]]
[[4,-4,6],[-6,4,-4],[3,5,-5],[-5,5,3]]
[[4,4,6],[-6,-4,-4],[3,-5,-5],[-5,-5,3]]
[[4,-4,-4],[-6,6,6],[5,-5,-5],[-3,3,3]]
[[4,0,-4],[-6,0,6],[5,0,-5],[-3,0,3]]
[[4,4,-4],[-6,-6,6],[5,5,-5],[-3,-3,3]]
[[4,-4,0],[-6,6,0],[5,-5,0],[-3,3,0]]
[[4,0,0],[-6,0,0],[5,0,0],[-3,0,0]]
[[4,4,0],[-6,-6,0],[5,5,0],[-3,-3,0]]
[[4,-4,4],[-6,6,-6],[5,-5,5],[-3,3,-3]]
[[4,0,4],[-6,0,-6],[5,0,5],[-3,0,-3]]
[[4,4,4],[-6,-6,-6],[5,5,5],[-3,-3,-3]]
[[4,-4,6],[-6,4,-4],[5,-5,-3],[-3,-5,5]]
[[4,4,6],[-6,-4,-4],[5,5,-3],[-3,5,5]]
[[4,-4,-4],[3,-3,-3],[-6,6,6],[-5,5,5]]
[[4,0,-4],[3,0,-3],[-6,0,6],[-5,0,5]]
[[4,4,-4],[3,3,-3],[-6,-6,6],[-5,-5,5]]
[[4,-4,0],[3,-3,0],[-6,6,0],[-5,5,0]]
[[4,0,0],[3,0,0],[-6,0,0],[-5,0,0]]
[[4,4,0],[3,3,0],[-6,-6,0],[-5,-5,0]]
[[4,-4,4],[3,-3,3],[-6,6,-6],[-5,5,-5]]
[[4,0,4],[3,0,3],[-6,0,-6],[-5,0,-5]]
[[4,4,4],[3,3,3],[-6,-6,-6],[-5,-5,-5]]
[[4,-4,6],[3,5,-5],[-6,4,-4],[-5,5,3]]
[[4,4,6],[3,-5,-5],[-6,-4,-4],[-5,-5,3]]
[[4,-4,-4],[3,-3,-3],[5,-5,-5],[6,-6,-6]]
[[4,0,-4],[3,0,-3],[5,0,-5],[6,0,-6]]
[[4,4,-4],[3,3,-3],[5,5,-5],[6,6,-6]]
[[4,-4,0],[3,-3,0],[5,-5,0],[6,-6,0]]
[[4,0,0],[3,0,0],[5,0,0],[6,0,0]]
[[4,4,0],[3,3,0],[5,5,0],[6,6,0]]
[[4,-4,4],[3,-3,3],[5,-5,5],[6,-6,6]]
[[4,0,4],[3,0,3],[5,0,5],[6,0,6]]
[[4,4,4],[3,3,3],[5,5,5],[6,6,6]]
[[4,-4,6],[3,5,-5],[5,-5,-3],[6,-4,4]]
[[4,4,6],[3,-5,-5],[5,5,-3],[6,4,4]]
[[4,-4,-4],[5,-5,-5],[-6,6,6],[-3,3,3]]
[[4,0,-4],[5,0,-5],[-6,0,6],[-3,0,3]]
[[4,4,-4],[5,5,-5],[-6,-6,6],[-3,-3,3]]
[[4,-4,0],[5,-5,0],[-6,6,0],[-3,3,0]]
[[4,0,0],[5,0,0],[-6,0,0],[-3,0,0]]
[[4,4,0],[5,5,0],[-6,-6,0],[-3,-3,0]]
[[4,-4,4],[5,-5,5],[-6,6,-6],[-3,3,-3]]
[[4,0,4],[5,0,5],[-6,0,-6],[-3,0,-3]]
[[4,4,4],[5,5,5],[-6,-6,-6],[-3,-3,-3]]
[[4,-4,6],[5,-5,-3],[-6,4,-4],[-3,-5,5]]
[[4,4,6],[5,5,-3],[-6,-4,-4],[-3,5,5]]
[[4,-4,-4],[5,-5,-5],[3,-3,-3],[6,-6,-6]]
[[4,0,-4],[5,0,-5],[3,0,-3],[6,0,-6]]
[[4,4,-4],[5,5,-5],[3,3,-3],[6,6,-6]]
[[4,-4,0],[5,-5,0],[3,-3,0],[6,-6,0]]
[[4,0,0],[5,0,0],[3,0,0],[6,0,0]]
[[4,4,0],[5,5,0],[3,3,0],[6,6,0]]
[[4,-4,4],[5,-5,5],[3,-3,3],[6,-6,6]]
[[4,0,4],[5,0,5],[3,0,3],[6,0,6]]
[[4,4,4],[5,5,5],[3,3,3],[6,6,6]]
[[4,-4,6],[5,-5,-3],[3,5,-5],[6,-4,4]]
[[4,4,6],[5,5,-3],[3,-5,-5],[6,4,4]]
[[5,-5,-5],[-6,6,6],[3,-3,-3],[-4,4,4]]
[[5,0,-5],[-6,0,6],[3,0,-3],[-4,0,4]]
[[5,5,-5],[-6,-6,6],[3,3,-3],[-4,-4,4]]
[[5,-5,-3],[-6,4,-4],[3,5,-5],[-4,4,-6]]
[[5,5,-3],[-6,-4,-4],[3,-5,-5],[-4,-4,-6]]
[[5,-5,0],[-6,6,0],[3,-3,0],[-4,4,0]]
[[5,0,0],[-6,0,0],[3,0,0],[-4,0,0]]
[[5,5,0],[-6,-6,0],[3,3,0],[-4,-4,0]]
[[5,-5,5],[-6,6,-6],[3,-3,3],[-4,4,-4]]
[[5,0,5],[-6,0,-6],[3,0,3],[-4,0,-4]]
[[5,5,5],[-6,-6,-6],[3,3,3],[-4,-4,-4]]
[[5,-5,-5],[-6,6,6],[4,-4,-4],[-3,3,3]]
[[5,0,-5],[-6,0,6],[4,0,-4],[-3,0,3]]
[[5,5,-5],[-6,-6,6],[4,4,-4],[-3,-3,3]]
[[5,-5,-3],[-6,4,-4],[4,-4,6],[-3,-5,5]]
[[5,5,-3],[-6,-4,-4],[4,4,6],[-3,5,5]]
[[5,-5,0],[-6,6,0],[4,-4,0],[-3,3,0]]
[[5,0,0],[-6,0,0],[4,0,0],[-3,0,0]]
[[5,5,0],[-6,-6,0],[4,4,0],[-3,-3,0]]
[[5,-5,5],[-6,6,-6],[4,-4,4],[-3,3,-3]]
[[5,0,5],[-6,0,-6],[4,0,4],[-3,0,-3]]
[[5,5,5],[-6,-6,-6],[4,4,4],[-3,-3,-3]]
[[5,-5,-5],[3,-3,-3],[-6,6,6],[-4,4,4]]
[[5,0,-5],[3,0,-3],[-6,0,6],[-4,0,4]]
[[5,5,-5],[3,3,-3],[-6,-6,6],[-4,-4,4]]
[[5,-5,-3],[3,5,-5],[-6,4,-4],[-4,4,-6]]
[[5,5,-3],[3,-5,-5],[-6,-4,-4],[-4,-4,-6]]
[[5,-5,0],[3,-3,0],[-6,6,0],[-4,4,0]]
[[5,0,0],[3,0,0],[-6,0,0],[-4,0,0]]
[[5,5,0],[3,3,0],[-6,-6,0],[-4,-4,0]]
[[5,-5,5],[3,-3,3],[-6,6,-6],[-4,4,-4]]
[[5,0,5],[3,0,3],[-6,0,-6],[-4,0,-4]]
[[5,5,5],[3,3,3],[-6,-6,-6],[-4,-4,-4]]
[[5,-5,-5],[3,-3,-3],[4,-4,-4],[6,-6,-6]]
[[5,0,-5],[3,0,-3],[4,0,-4],[6,0,-6]]
[[5,5,-5],[3,3,-3],[4,4,-4],[6,6,-6]]
[[5,-5,-3],[3,5,-5],[4,-4,6],[6,-4,4]]
[[5,5,-3],[3,-5,-5],[4,4,6],[6,4,4]]
[[5,-5,0],[3,-3,0],[4,-4,0],[6,-6,0]]
[[5,0,0],[3,0,0],[4,0,0],[6,0,0]]
[[5,5,0],[3,3,0],[4,4,0],[6,6,0]]
[[5,-5,5],[3,-3,3],[4,-4,4],[6,-6,6]]
[[5,0,5],[3,0,3],[4,0,4],[6,0,6]]
[[5,5,5],[3,3,3],[4,4,4],[6,6,6]]
[[5,-5,-5],[4,-4,-4],[-6,6,6],[-3,3,3]]
[[5,0,-5],[4,0,-4],[-6,0,6],[-3,0,3]]
[[5,5,-5],[4,4,-4],[-6,-6,6],[-3,-3,3]]
[[5,-5,-3],[4,-4,6],[-6,4,-4],[-3,-5,5]]
[[5,5,-3],[4,4,6],[-6,-4,-4],[-3,5,5]]
[[5,-5,0],[4,-4,0],[-6,6,0],[-3,3,0]]
[[5,0,0],[4,0,0],[-6,0,0],[-3,0,0]]
[[5,5,0],[4,4,0],[-6,-6,0],[-3,-3,0]]
[[5,-5,5],[4,-4,4],[-6,6,-6],[-3,3,-3]]
[[5,0,5],[4,0,4],[-6,0,-6],[-3,0,-3]]
[[5,5,5],[4,4,4],[-6,-6,-6],[-3,-3,-3]]
[[5,-5,-5],[4,-4,-4],[3,-3,-3],[6,-6,-6]]
[[5,0,-5],[4,0,-4],[3,0,-3],[6,0,-6]]
[[5,5,-5],[4,4,-4],[3,3,-3],[6,6,-6]]
[[5,-5,-3],[4,-4,6],[3,5,-5],[6,-4,4]]
[[5,5,-3],[4,4,6],[3,-5,-5],[6,4,4]]
[[5,-5,0],[4,-4,0],[3,-3,0],[6,-6,0]]
[[5,0,0],[4,0,0],[3,0,0],[6,0,0]]
[[5,5,0],[4,4,0],[3,3,0],[6,6,0]]
[[5,-5,5],[4,-4,4],[3,-3,3],[6,-6,6]]
[[5,0,5],[4,0,4],[3,0,3],[6,0,6]]
[[5,5,5],[4,4,4],[3,3,3],[6,6,6]]
[[6,-6,-6],[-5,5,5],[-4,4,4],[3,-3,-3]]
[[6,0,-6],[-5,0,5],[-4,0,4],[3,0,-3]]
[[6,6,-6],[-5,-5,5],[-4,-4,4],[3,3,-3]]
[[6,-6,0],[-5,5,0],[-4,4,0],[3,-3,0]]
[[6,0,0],[-5,0,0],[-4,0,0],[3,0,0]]
[[6,6,0],[-5,-5,0],[-4,-4,0],[3,3,0]]
[[6,-4,4],[-5,5,3],[-4,4,-6],[3,5,-5]]
[[6,4,4],[-5,-5,3],[-4,-4,-6],[3,-5,-5]]
[[6,-6,6],[-5,5,-5],[-4,4,-4],[3,-3,3]]
[[6,0,6],[-5,0,-5],[-4,0,-4],[3,0,3]]
[[6,6,6],[-5,-5,-5],[-4,-4,-4],[3,3,3]]
[[6,-6,-6],[-5,5,5],[-3,3,3],[4,-4,-4]]
[[6,0,-6],[-5,0,5],[-3,0,3],[4,0,-4]]
[[6,6,-6],[-5,-5,5],[-3,-3,3],[4,4,-4]]
[[6,-6,0],[-5,5,0],[-3,3,0],[4,-4,0]]
[[6,0,0],[-5,0,0],[-3,0,0],[4,0,0]]
[[6,6,0],[-5,-5,0],[-3,-3,0],[4,4,0]]
[[6,-4,4],[-5,5,3],[-3,-5,5],[4,-4,6]]
[[6,4,4],[-5,-5,3],[-3,5,5],[4,4,6]]
[[6,-6,6],[-5,5,-5],[-3,3,-3],[4,-4,4]]
[[6,0,6],[-5,0,-5],[-3,0,-3],[4,0,4]]
[[6,6,6],[-5,-5,-5],[-3,-3,-3],[4,4,4]]
[[6,-6,-6],[-4,4,4],[-5,5,5],[3,-3,-3]]
[[6,0,-6],[-4,0,4],[-5,0,5],[3,0,-3]]
[[6,6,-6],[-4,-4,4],[-5,-5,5],[3,3,-3]]
[[6,-6,0],[-4,4,0],[-5,5,0],[3,-3,0]]
[[6,0,0],[-4,0,0],[-5,0,0],[3,0,0]]
[[6,6,0],[-4,-4,0],[-5,-5,0],[3,3,0]]
[[6,-4,4],[-4,4,-6],[-5,5,3],[3,5,-5]]
[[6,4,4],[-4,-4,-6],[-5,-5,3],[3,-5,-5]]
[[6,-6,6],[-4,4,-4],[-5,5,-5],[3,-3,3]]
[[6,0,6],[-4,0,-4],[-5,0,-5],[3,0,3]]
[[6,6,6],[-4,-4,-4],[-5,-5,-5],[3,3,3]]
[[6,-6,-6],[-4,4,4],[-3,3,3],[5,-5,-5]]
[[6,0,-6],[-4,0,4],[-3,0,3],[5,0,-5]]
[[6,6,-6],[-4,-4,4],[-3,-3,3],[5,5,-5]]
[[6,-6,0],[-4,4,0],[-3,3,0],[5,-5,0]]
[[6,0,0],[-4,0,0],[-3,0,0],[5,0,0]]
[[6,6,0],[-4,-4,0],[-3,-3,0],[5,5,0]]
[[6,-4,4],[-4,4,-6],[-3,-5,5],[5,-5,-3]]
[[6,4,4],[-4,-4,-6],[-3,5,5],[5,5,-3]]
[[6,-6,6],[-4,4,-4],[-3,3,-3],[5,-5,5]]
[[6,0,6],[-4,0,-4],[-3,0,-3],[5,0,5]]
[[6,6,6],[-4,-4,-4],[-3,-3,-3],[5,5,5]]
[[6,-6,-6],[-3,3,3],[-5,5,5],[4,-4,-4]]
[[6,0,-6],[-3,0,3],[-5,0,5],[4,0,-4]]
[[6,6,-6],[-3,-3,3],[-5,-5,5],[4,4,-4]]
[[6,-6,0],[-3,3,0],[-5,5,0],[4,-4,0]]
[[6,0,0],[-3,0,0],[-5,0,0],[4,0,0]]
[[6,6,0],[-3,-3,0],[-5,-5,0],[4,4,0]]
[[6,-4,4],[-3,-5,5],[-5,5,3],[4,-4,6]]
[[6,4,4],[-3,5,5],[-5,-5,3],[4,4,6]]
[[6,-6,6],[-3,3,-3],[-5,5,-5],[4,-4,4]]
[[6,0,6],[-3,0,-3],[-5,0,-5],[4,0,4]]
[[6,6,6],[-3,-3,-3],[-5,-5,-5],[4,4,4]]
[[6,-6,-6],[-3,3,3],[-4,4,4],[5,-5,-5]]
[[6,0,-6],[-3,0,3],[-4,0,4],[5,0,-5]]
[[6,6,-6],[-3,-3,3],[-4,-4,4],[5,5,-5]]
[[6,-6,0],[-3,3,0],[-4,4,0],[5,-5,0]]
[[6,0,0],[-3,0,0],[-4,0,0],[5,0,0]]
[[6,6,0],[-3,-3,0],[-4,-4,0],[5,5,0]]
[[6,-4,4],[-3,-5,5],[-4,4,-6],[5,-5,-3]]
[[6,4,4],[-3,5,5],[-4,-4,-6],[5,5,-3]]
[[6,-6,6],[-3,3,-3],[-4,4,-4],[5,-5,5]]
[[6,0,6],[-3,0,-3],[-4,0,-4],[5,0,5]]
[[6,6,6],[-3,-3,-3],[-4,-4,-4],[5,5,5]]
#---> reslines=720
