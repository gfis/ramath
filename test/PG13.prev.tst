/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -w 3 -l 5 -v "[a^2 + b^2, (a^3 - 3*a*b^2), (3*a^2*b - b^3)]" -v "[13,9,46]" -n -p "p^3 = q^2 + r^2" m2opts
    Do   N O T   edit this file, but ProgramGenerator.java instead!
*/
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
int gcd2(int a, int b) {                              
        int result = abs(a);                          
        if (result > 1) {                             
            int p = result; int q = abs(b);           
            while (q != 0) {                          
                int temp = q; q = p % q; p = temp;    
            } /* while */                             
            result = p;                               
        } /* > 1 */                                   
        if (result == 0) result = 1;                  
        return abs(result);                           
    } /* gcd2 */                                      
int gcd3(int a, int b, int c) {                       
        return gcd2(a, gcd2(b, c));                   
    } /* gcd3 */                                      
int gcd4(int a, int b, int c, int d) {                
        return gcd2(a, gcd3(b, c, d));                
    } /* gcd4 */                                      
int gcd5(int a, int b, int c, int d, int e) {         
        return gcd2(a, gcd4(b, c, d, e));             
    } /* gcd5 */                                      
int reslines = 0;
printf("#---- start of results ----\n");
int m11,m12,m13
,m21,m22,m23
,m31,m32,m33
;
int p = 13; int q = 9; int r = 46; 
/*  vectg = [a^2+b^2,a^3-3*a*b^2,3*a^2*b-b^3]
    vectc = [13,9,46]
    poly0 = p^3 - q^2 - r^2
    mono2 =  + a*b
    rset1 = 
 + a^4*( - m21^2 - m31^2)
 + 2*a^5*( - m21*m22 - m31*m32)
 + a^6*(m11^3 - m22^2 - m32^2)
 + 3*a^7*(m11^2*m12)
 + 3*a^8*(m11*m12^2)
 + a^9*(m12^3)
 + 6*a^4*b*( - m21*m23 - m31*m33)
 + 6*a^5*b*( - m22*m23 - m32*m33)
 + 9*a^6*b*(m11^2*m13)
 + 18*a^7*b*(m11*m12*m13)
 + 9*a^8*b*(m12^2*m13)
 + 2*a^2*b^2*( - m21^2 - m31^2)
 + 4*a^3*b^2*(m21*m22 + m31*m32)
 + 3*a^4*b^2*(m11^3 + 2*m22^2 - 3*m23^2 + 2*m32^2 - 3*m33^2)
 + 3*a^5*b^2*( - m11^2*m12)
 + 3*a^6*b^2*( - 5*m11*m12^2 + 9*m11*m13^2)
 + 9*a^7*b^2*( - m12^3 + 3*m12*m13^2)
 + 4*a^2*b^3*( - m21*m23 - m31*m33)
 + 20*a^3*b^3*(m22*m23 + m32*m33)
 + 15*a^4*b^3*(m11^2*m13)
 + 42*a^5*b^3*( - m11*m12*m13)
 + 3*a^6*b^3*( - 19*m12^2*m13 + 9*m13^3)
 + b^4*( - m21^2 - m31^2)
 + 6*a*b^4*(m21*m22 + m31*m32)
 + 3*a^2*b^4*(m11^3 - 3*m22^2 + 2*m23^2 - 3*m32^2 + 2*m33^2)
 + 15*a^3*b^4*( - m11^2*m12)
 + 9*a^4*b^4*(m11*m12^2 + m11*m13^2)
 + 9*a^5*b^4*(3*m12^3 - 11*m12*m13^2)
 + 2*b^5*(m21*m23 + m31*m33)
 + 6*a*b^5*( - m22*m23 - m32*m33)
 + 3*a^2*b^5*(m11^2*m13)
 + 42*a^3*b^5*( - m11*m12*m13)
 + 9*a^4*b^5*(11*m12^2*m13 - 3*m13^3)
 + b^6*(m11^3 - m23^2 - m33^2)
 + 9*a*b^6*( - m11^2*m12)
 + 3*a^2*b^6*(9*m11*m12^2 - 5*m11*m13^2)
 + 3*a^3*b^6*( - 9*m12^3 + 19*m12*m13^2)
 + 3*b^7*( - m11^2*m13)
 + 18*a*b^7*(m11*m12*m13)
 + 9*a^2*b^7*( - 3*m12^2*m13 + m13^3)
 + 3*b^8*(m11*m13^2)
 + 9*a*b^8*( - m12*m13^2)
 + b^9*( - m13^3)
*/
for (m11 = -5; m11 < 6; m11++) /* row 1 */  {
if (m11 != 0) {
for (m12 = -5; m12 < 6; m12++) /* row 1 */  {
if (m12 != 0) {
for (m13 = -5; m13 < 6; m13++) /* row 1 */  {
if (m13 != 0) {
int p1 = m11*p + m12*q + m13*r; 
if (p1 > 0) {
for (m21 = -5; m21 < 6; m21++) /* row 2 */  {
if (m21 != 0) {
for (m22 = -5; m22 < 6; m22++) /* row 2 */  {
if (m22 != 0) {
for (m23 = -5; m23 < 6; m23++) /* row 2 */  {
if (m23 != 0) {
if (m21 != m11 || m22 != m12 || m23 != m13) /* row 2 != row 1 */  {
int q1 = m21*p + m22*q + m23*r; 
if (q1 > 0) {
for (m31 = -5; m31 < 6; m31++) /* row 3 */  {
if (m31 != 0) {
for (m32 = -5; m32 < 6; m32++) /* row 3 */  {
if (m32 != 0) {
for (m33 = -5; m33 < 6; m33++) /* row 3 */  {
if (m33 != 0) {
if (m31 != m21 || m32 != m22 || m33 != m23) /* row 3 != row 2 */  {
if (m31 != m11 || m32 != m12 || m33 != m13) /* row 3 != row 1 */  {
int r1 = m31*p + m32*q + m33*r; 
if (r1 > 0) {
if (q1 < r1) /* ascending */ {
if (m11 != m12 || m21 != m22 || m31 != m32) /* col 1 != col 2 */  {
if (m11 != m13 || m21 != m23 || m31 != m33) /* col 1 != col 3 */  {
if (m12 != m13 || m22 != m23 || m32 != m33) /* col 2 != col 3 */  {
if (p1 != p || q1 != q || r1 != r) /* not same tuple */ {
if (p1*p1*p1 - q1*q1 - r1*r1 == 0) /* chain 1 condition */ {
int gcdnp = gcd3(p1,q1,r1);
if (gcdnp == 1) {
printf("[");
printf("[%d,%d,%d]",m11,m12,m13);
printf(",");
printf("[%d,%d,%d]",m21,m22,m23);
printf(",");
printf("[%d,%d,%d]",m31,m32,m33);
printf("]");
reslines ++;
printf("\tpreserves\t[%d,%d,%d]",p1,q1,r1);
int p2 = m11*p1 + m12*q1 + m13*r1;
int q2 = m21*p1 + m22*q1 + m23*r1;
int r2 = m31*p1 + m32*q1 + m33*r1;
if (p2*p2*p2 == q2*q2 + r2*r2) {
    printf("\tchain2");
}
printf("\n");
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
printf("# %d result lines\n", reslines);
} /* main */
#---- start of results ----
[[-5,-4,3],[-1,-2,3],[-1,3,4]]	preserves	[37,107,198]
[[-5,-4,3],[-1,-2,3],[1,-5,5]]	preserves	[37,107,198]
[[-5,-4,3],[4,1,1],[-1,3,4]]	preserves	[37,107,198]
[[-5,-4,3],[4,1,1],[1,-5,5]]	preserves	[37,107,198]
[[-5,4,1],[-2,3,1],[-3,5,1]]	preserves	[17,47,52]
[[-5,4,1],[-2,3,1],[-1,-3,2]]	preserves	[17,47,52]
[[-4,-5,3],[-1,4,2],[-3,5,5]]	preserves	[41,115,236]
[[-4,-5,3],[1,-4,3],[-3,5,5]]	preserves	[41,115,236]
[[-3,-4,2],[-2,3,1],[-3,5,1]]	preserves	[17,47,52]
[[-3,-4,2],[-2,3,1],[-1,-3,2]]	preserves	[17,47,52]
[[-3,2,1],[-3,-1,2],[-3,2,3]]	preserves	[25,44,117]
[[-3,2,1],[-3,-1,2],[2,5,1]]	preserves	[25,44,117]
[[-3,2,1],[-3,-1,2],[4,-3,2]]	preserves	[25,44,117]
[[-2,1,1],[-2,5,1],[-4,-4,5]]	preserves	[29,65,142]
[[-2,1,1],[-2,5,1],[1,-1,3]]	preserves	[29,65,142]
[[1,-2,1],[-1,4,2],[-3,5,5]]	preserves	[41,115,236]
[[1,-2,1],[1,-4,3],[-3,5,5]]	preserves	[41,115,236]
[[2,5,-1],[-3,-1,2],[-3,2,3]]	preserves	[25,44,117]
[[2,5,-1],[-3,-1,2],[2,5,1]]	preserves	[25,44,117]
[[2,5,-1],[-3,-1,2],[4,-3,2]]	preserves	[25,44,117]
[[3,4,-1],[-2,5,1],[-4,-4,5]]	preserves	[29,65,142]
[[3,4,-1],[-2,5,1],[1,-1,3]]	preserves	[29,65,142]
[[4,-5,1],[3,4,4],[5,-1,5]]	preserves	[53,259,286]
[[4,-5,1],[5,-4,5],[5,-1,5]]	preserves	[53,259,286]
[[4,5,-2],[-2,-2,1],[-2,-1,1]]	preserves	[5,2,11]
[[4,5,-2],[-2,-2,1],[3,2,-1]]	preserves	[5,2,11]
[[4,5,-2],[3,1,-1],[-2,-1,1]]	preserves	[5,2,11]
[[4,5,-2],[3,1,-1],[3,2,-1]]	preserves	[5,2,11]
[[5,2,-1],[-1,-2,3],[-1,3,4]]	preserves	[37,107,198]
[[5,2,-1],[-1,-2,3],[1,-5,5]]	preserves	[37,107,198]
[[5,2,-1],[4,1,1],[-1,3,4]]	preserves	[37,107,198]
[[5,2,-1],[4,1,1],[1,-5,5]]	preserves	[37,107,198]
# 32 result lines
