/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -w 3 -l 3 m2euclid
    Do   N O T   edit this file, but ProgramGenerator.java instead!
*/
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
int reslines = 0;
printf("#---> start of results ----\n");
int m11,m12,m13
,m21,m22,m23
,m31,m32,m33
;
m12 = 77; m22 = 77; m32 = 77;
for (m11 = -3; m11 < 4; m11++) /* col 1 */  {
for (m21 = -3; m21 < 4; m21++) /* col 1 */  {
for (m31 = -3; m31 < 4; m31++) /* col 1 */  {
if (0 + m11*m11 + m21*m21 - m31*m31 == 0) {
for (m13 = -3; m13 < 4; m13++) /* col 3 */  {
for (m23 = -3; m23 < 4; m23++) /* col 3 */  {
for (m33 = -3; m33 < 4; m33++) /* col 3 */  {
if (0 + m13*m13 + m23*m23 - m33*m33 == 0) {
for (m12 = -3; m12 < 4; m12++) /* col 2 */  {
for (m22 = -3; m22 < 4; m22++) /* col 2 */  {
for (m32 = -3; m32 < 4; m32++) /* col 2 */  {
if (m11 > 0 || m12 > 0 || m13 > 0) /* row 1 != 0 */  {
if (m21 > 0 || m22 > 0 || m23 > 0) /* row 2 != 0 */  {
if (m31 > 0 || m32 > 0 || m33 > 0) /* row 3 != 0 */  {
if (m11 != m21 || m12 != m22 || m13 != m23) /* row 1 != row 2 */  {
if (m11 != m31 || m12 != m32 || m13 != m33) /* row 1 != row 3 */  {
if (m21 != m31 || m22 != m32 || m23 != m33) /* row 2 != row 3 */  {
if (0 + m11*m12 + m21*m22 - m31*m32 == 0) {
if (0 + m12*m13 + m22*m23 - m32*m33 == 0) {
if (0 + m11*m13*2 + m12*m12 + m21*m23*2 + m22*m22 - m31*m33*2 - m32*m32 == 0) {
int m, n, cr1, cr2, cr3;
n = 1; m = 2;
printf("[");
printf("[%d,%d,%d]",m11,m12,m13);
printf(",");
printf("[%d,%d,%d]",m21,m22,m23);
printf(",");
printf("[%d,%d,%d]",m31,m32,m33);
printf("]");
reslines ++;
printf("\t");
int countneg = 0;
for (m = 1; m <= 8 && countneg < 7; m ++) {
    cr1 = m*m; cr2 = m*n; cr3 = n*n;
    int va1 = m11*cr1 + m12*cr2 + m13*cr3;
    printf(" [%d", va1);
    if (m >= 1 && va1 < 0) { countneg ++; }
    int va2 = m21*cr1 + m22*cr2 + m23*cr3;
    printf(",%d", va2);
    if (m >= 1 && va2 < 0) { countneg ++; }
    int va3 = m31*cr1 + m32*cr2 + m33*cr3;
    printf(",%d", va3);
    if (m >= 1 && va3 < 0) { countneg ++; }
    printf("]");
} /* for m */
printf(countneg > 0 ? " ????" : " !!!!");
printf("\n");
}}}}}}}}}}}}}}}}}}}}
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
[[-2,2,0],[0,2,-1],[-2,2,-1]]	 [0,1,-1] [-4,3,-5] [-12,5,-13] [-24,7,-25] ????
[[-2,2,0],[0,-2,1],[-2,2,-1]]	 [0,-1,-1] [-4,-3,-5] [-12,-5,-13] ????
[[-2,2,0],[0,2,-1],[2,-2,1]]	 [0,1,1] [-4,3,5] [-12,5,13] [-24,7,25] [-40,9,41] [-60,11,61] [-84,13,85] [-112,15,113] ????
[[-2,2,0],[0,-2,1],[2,-2,1]]	 [0,-1,1] [-4,-3,5] [-12,-5,13] [-24,-7,25] ????
[[-1,2,0],[0,2,-2],[-1,2,-2]]	 [1,0,-1] [0,2,-2] [-3,4,-5] [-8,6,-10] [-15,8,-17] ????
[[-1,2,0],[0,-2,2],[-1,2,-2]]	 [1,0,-1] [0,-2,-2] [-3,-4,-5] [-8,-6,-10] ????
[[-1,2,0],[0,2,-2],[1,-2,2]]	 [1,0,1] [0,2,2] [-3,4,5] [-8,6,10] [-15,8,17] [-24,10,26] [-35,12,37] [-48,14,50] ????
[[-1,2,0],[0,-2,2],[1,-2,2]]	 [1,0,1] [0,-2,2] [-3,-4,5] [-8,-6,10] [-15,-8,17] ????
[[-1,0,1],[0,2,0],[1,0,1]]	 [0,2,2] [-3,4,5] [-8,6,10] [-15,8,17] [-24,10,26] [-35,12,37] [-48,14,50] [-63,16,65] ????
[[0,2,-1],[-2,2,0],[-2,2,-1]]	 [1,0,-1] [3,-4,-5] [5,-12,-13] [7,-24,-25] ????
[[0,-2,1],[-2,2,0],[-2,2,-1]]	 [-1,0,-1] [-3,-4,-5] [-5,-12,-13] ????
[[0,2,-1],[-2,2,0],[2,-2,1]]	 [1,0,1] [3,-4,5] [5,-12,13] [7,-24,25] [9,-40,41] [11,-60,61] [13,-84,85] [15,-112,113] ????
[[0,-2,1],[-2,2,0],[2,-2,1]]	 [-1,0,1] [-3,-4,5] [-5,-12,13] [-7,-24,25] ????
[[0,2,-2],[-1,2,0],[-1,2,-2]]	 [0,1,-1] [2,0,-2] [4,-3,-5] [6,-8,-10] [8,-15,-17] ????
[[0,-2,2],[-1,2,0],[-1,2,-2]]	 [0,1,-1] [-2,0,-2] [-4,-3,-5] [-6,-8,-10] ????
[[0,2,-2],[-1,2,0],[1,-2,2]]	 [0,1,1] [2,0,2] [4,-3,5] [6,-8,10] [8,-15,17] [10,-24,26] [12,-35,37] [14,-48,50] ????
[[0,2,0],[-1,0,1],[1,0,1]]	 [2,0,2] [4,-3,5] [6,-8,10] [8,-15,17] [10,-24,26] [12,-35,37] [14,-48,50] [16,-63,65] ????
[[0,-2,2],[-1,2,0],[1,-2,2]]	 [0,1,1] [-2,0,2] [-4,-3,5] [-6,-8,10] [-8,-15,17] ????
[[0,2,-2],[1,-2,0],[-1,2,-2]]	 [0,-1,-1] [2,0,-2] [4,3,-5] [6,8,-10] [8,15,-17] [10,24,-26] ????
[[0,-2,2],[1,-2,0],[-1,2,-2]]	 [0,-1,-1] [-2,0,-2] [-4,3,-5] [-6,8,-10] ????
[[0,2,-2],[1,-2,0],[1,-2,2]]	 [0,-1,1] [2,0,2] [4,3,5] [6,8,10] [8,15,17] [10,24,26] [12,35,37] [14,48,50] ????
[[0,2,0],[1,0,-1],[1,0,1]]	 [2,0,2] [4,3,5] [6,8,10] [8,15,17] [10,24,26] [12,35,37] [14,48,50] [16,63,65] !!!!
[[0,-2,2],[1,-2,0],[1,-2,2]]	 [0,-1,1] [-2,0,2] [-4,3,5] [-6,8,10] [-8,15,17] [-10,24,26] [-12,35,37] ????
[[0,2,2],[1,2,0],[1,2,2]]	 [4,3,5] [6,8,10] [8,15,17] [10,24,26] [12,35,37] [14,48,50] [16,63,65] [18,80,82] !!!!
[[0,2,-1],[2,-2,0],[-2,2,-1]]	 [1,0,-1] [3,4,-5] [5,12,-13] [7,24,-25] [9,40,-41] [11,60,-61] [13,84,-85] ????
[[0,-2,1],[2,-2,0],[-2,2,-1]]	 [-1,0,-1] [-3,4,-5] [-5,12,-13] [-7,24,-25] ????
[[0,2,-1],[2,-2,0],[2,-2,1]]	 [1,0,1] [3,4,5] [5,12,13] [7,24,25] [9,40,41] [11,60,61] [13,84,85] [15,112,113] !!!!
[[0,-2,1],[2,-2,0],[2,-2,1]]	 [-1,0,1] [-3,4,5] [-5,12,13] [-7,24,25] [-9,40,41] [-11,60,61] [-13,84,85] ????
[[0,2,1],[2,2,0],[2,2,1]]	 [3,4,5] [5,12,13] [7,24,25] [9,40,41] [11,60,61] [13,84,85] [15,112,113] [17,144,145] !!!!
[[1,-2,0],[0,2,-2],[-1,2,-2]]	 [-1,0,-1] [0,2,-2] [3,4,-5] [8,6,-10] [15,8,-17] [24,10,-26] ????
[[1,-2,0],[0,-2,2],[-1,2,-2]]	 [-1,0,-1] [0,-2,-2] [3,-4,-5] [8,-6,-10] ????
[[1,0,-1],[0,2,0],[1,0,1]]	 [0,2,2] [3,4,5] [8,6,10] [15,8,17] [24,10,26] [35,12,37] [48,14,50] [63,16,65] !!!!
[[1,-2,0],[0,2,-2],[1,-2,2]]	 [-1,0,1] [0,2,2] [3,4,5] [8,6,10] [15,8,17] [24,10,26] [35,12,37] [48,14,50] ????
[[1,-2,0],[0,-2,2],[1,-2,2]]	 [-1,0,1] [0,-2,2] [3,-4,5] [8,-6,10] [15,-8,17] [24,-10,26] [35,-12,37] ????
[[1,2,0],[0,2,2],[1,2,2]]	 [3,4,5] [8,6,10] [15,8,17] [24,10,26] [35,12,37] [48,14,50] [63,16,65] [80,18,82] !!!!
[[2,-2,0],[0,2,-1],[-2,2,-1]]	 [0,1,-1] [4,3,-5] [12,5,-13] [24,7,-25] [40,9,-41] [60,11,-61] [84,13,-85] ????
[[2,-2,0],[0,-2,1],[-2,2,-1]]	 [0,-1,-1] [4,-3,-5] [12,-5,-13] [24,-7,-25] ????
[[2,-2,0],[0,2,-1],[2,-2,1]]	 [0,1,1] [4,3,5] [12,5,13] [24,7,25] [40,9,41] [60,11,61] [84,13,85] [112,15,113] !!!!
[[2,-2,0],[0,-2,1],[2,-2,1]]	 [0,-1,1] [4,-3,5] [12,-5,13] [24,-7,25] [40,-9,41] [60,-11,61] [84,-13,85] ????
[[2,2,0],[0,2,1],[2,2,1]]	 [4,3,5] [12,5,13] [24,7,25] [40,9,41] [60,11,61] [84,13,85] [112,15,113] [144,17,145] !!!!
#---> reslines=40
