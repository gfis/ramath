/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -w 3 -l 3 -n barning
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
int a=3; int b=4; int c=5;
for (m11 = -3; m11 < 4; m11++) /* row 1 */  {
if (m11 != 0) {
for (m12 = -3; m12 < 4; m12++) /* row 1 */  {
if (m12 != 0) {
for (m13 = -3; m13 < 4; m13++) /* row 1 */  {
if (m13 != 0) {

for (m21 = -3; m21 < 4; m21++) /* row 2 */  {
if (m21 != 0) {
for (m22 = -3; m22 < 4; m22++) /* row 2 */  {
if (m22 != 0) {
for (m23 = -3; m23 < 4; m23++) /* row 2 */  {
if (m23 != 0) {

if (m21 != m11 || m22 != m12 || m23 != m13) /* row 2 != row 1 */  {
for (m31 = -3; m31 < 4; m31++) /* row 3 */  {
if (m31 != 0) {
for (m32 = -3; m32 < 4; m32++) /* row 3 */  {
if (m32 != 0) {
for (m33 = -3; m33 < 4; m33++) /* row 3 */  {
if (m33 != 0) {

if (m31 != m21 || m32 != m22 || m33 != m23) /* row 3 != row 2 */  {
if (m31 != m11 || m32 != m12 || m33 != m13) /* row 3 != row 1 */  {
if (m11 != m12 || m21 != m22 || m31 != m32) /* col 1 != col 2 */  {
if (m11 != m13 || m21 != m23 || m31 != m33) /* col 1 != col 3 */  {
if (m12 != m13 || m22 != m23 || m32 != m33) /* col 2 != col 3 */  {
if (   m11^2 + 2*m11*m13 + m13^2 + m21^2 + 2*m21*m23 + m23^2 - m31^2 - 2*m31*m33 - m33^2 == 0) {
if ( - m11^2 + 2*m12^2 + m13^2 - m21^2 + 2*m22^2 + m23^2 + m31^2 - 2*m32^2 - m33^2       == 0) {
if (   m11*m12 + m12*m13 + m21*m22 + m22*m23 - m31*m32 - m32*m33                         == 0) {
if ( - m11*m12 + m12*m13 - m21*m22 + m22*m23 + m31*m32 - m32*m33                         == 0) {
int v1=m11*a+m12*b+m13*c; if (v1 > a           ) {
int v2=m21*a+m22*b+m23*c; if (v2 > b && v2 > v1) {
int v3=m31*a+m32*b+m33*c; if (v3 > c && v3 > v2) {
if (v1*v1 + v2*v2 - v3*v3 == 0) {
printf("[");
printf("[%d,%d,%d]",m11,m12,m13);
printf(",");
printf("[%d,%d,%d]",m21,m22,m23);
printf(",");
printf("[%d,%d,%d]",m31,m32,m33);
printf("]");
reslines ++;
printf("\t\tpreserves: [%d,%d,%d] -> [%d,%d,%d]\n",a,b,c, v1,v2,v3);
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
[[-3,1,2],[1,1,1],[-2,1,3]]		preserves: [3,4,5] -> [5,12,13]
[[-2,1,2],[-1,2,2],[-2,2,3]]		preserves: [3,4,5] -> [8,15,17]
[[-2,2,2],[1,2,1],[-1,2,3]]		preserves: [3,4,5] -> [12,16,20]
[[-1,1,1],[-2,1,2],[-3,1,3]]		preserves: [3,4,5] -> [6,8,10]
[[-1,2,1],[2,2,2],[1,2,3]]		preserves: [3,4,5] -> [10,24,26]
[[1,-2,2],[2,-1,2],[2,-2,3]]		preserves: [3,4,5] -> [5,12,13]
[[1,2,-1],[2,-2,2],[1,-2,3]]		preserves: [3,4,5] -> [6,8,10]
[[2,-2,2],[2,1,1],[2,-1,3]]		preserves: [3,4,5] -> [8,15,17]
[[2,-1,1],[2,2,2],[2,1,3]]		preserves: [3,4,5] -> [7,24,25]
[[2,1,-1],[-2,2,2],[-2,1,3]]		preserves: [3,4,5] -> [5,12,13]
[[2,1,2],[1,2,2],[2,2,3]]		preserves: [3,4,5] -> [20,21,29]
#---> reslines=11
