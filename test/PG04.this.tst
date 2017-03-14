/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -w 3 -l 4 -v "[a^2+b^2,a^4-6*a^2*b^2+b^4,4*a^3*b-4*a*b^3]" -v "[5,7,24]" -n -p "p^4 = q^2 + r^2" m2opts
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
printf("#---> start of results ----\n");
int m11,m12,m13
,m21,m22,m23
,m31,m32,m33
;
int p = 5; int q = 7; int r = 24; 
/*  vectg = [a^2+b^2,a^4-6*a^2*b^2+b^4,4*a^3*b-4*a*b^3]
    vectc = [5,7,24]
    poly0 = p^4 - q^2 - r^2
    mono2 =  + a*b
    rset1 = 
 + a^4*( - m21^2 - m31^2)
 + 2*a^6*( - m21*m22 - m31*m32)
 + a^8*(m11^4 - m22^2 - m32^2)
 + 4*a^10*(m11^3*m12)
 + 6*a^12*(m11^2*m12^2)
 + 4*a^14*(m11*m12^3)
 + a^16*(m12^4)
 + 8*a^5*b*( - m21*m23 - m31*m33)
 + 8*a^7*b*( - m22*m23 - m32*m33)
 + 16*a^9*b*(m11^3*m13)
 + 48*a^11*b*(m11^2*m12*m13)
 + 48*a^13*b*(m11*m12^2*m13)
 + 16*a^15*b*(m12^3*m13)
 + 2*a^2*b^2*( - m21^2 - m31^2)
 + 10*a^4*b^2*(m21*m22 + m31*m32)
 + 4*a^6*b^2*(m11^4 + 3*m22^2 - 4*m23^2 + 3*m32^2 - 4*m33^2)
 + 12*a^8*b^2*( - m11^3*m12)
 + 12*a^10*b^2*( - 5*m11^2*m12^2 + 8*m11^2*m13^2)
 + 4*a^12*b^2*( - 17*m11*m12^3 + 48*m11*m12*m13^2)
 + 24*a^14*b^2*( - m12^4 + 4*m12^2*m13^2)
 + 56*a^5*b^3*(m22*m23 + m32*m33)
 + 32*a^7*b^3*(m11^3*m13)
 + 240*a^9*b^3*( - m11^2*m12*m13)
 + 64*a^11*b^3*( - 9*m11*m12^2*m13 + 4*m11*m13^3)
 + 16*a^13*b^3*( - 19*m12^3*m13 + 16*m12*m13^3)
 + b^4*( - m21^2 - m31^2)
 + 10*a^2*b^4*(m21*m22 + m31*m32)
 + 2*a^4*b^4*(3*m11^4 - 19*m22^2 + 16*m23^2 - 19*m32^2 + 16*m33^2)
 + 56*a^6*b^4*( - m11^3*m12)
 + 90*a^8*b^4*(m11^2*m12^2)
 + 12*a^10*b^4*(31*m11*m12^3 - 112*m11*m12*m13^2)
 + 4*a^12*b^4*(55*m12^4 - 336*m12^2*m13^2 + 64*m13^4)
 + 8*a*b^5*(m21*m23 + m31*m33)
 + 56*a^3*b^5*( - m22*m23 - m32*m33)
 + 288*a^7*b^5*( - m11^2*m12*m13)
 + 16*a^9*b^5*(111*m11*m12^2*m13 - 32*m11*m13^3)
 + 48*a^11*b^5*(43*m12^3*m13 - 48*m12*m13^3)
 + 2*b^6*( - m21*m22 - m31*m32)
 + 4*a^2*b^6*(m11^4 + 3*m22^2 - 4*m23^2 + 3*m32^2 - 4*m33^2)
 + 56*a^4*b^6*( - m11^3*m12)
 + 24*a^6*b^6*(13*m11^2*m12^2 - 8*m11^2*m13^2)
 + 12*a^8*b^6*( - 47*m11*m12^3 + 96*m11*m12*m13^2)
 + 8*a^10*b^6*( - 117*m12^4 + 756*m12^2*m13^2 - 128*m13^4)
 + 8*a*b^7*(m22*m23 + m32*m33)
 + 32*a^3*b^7*( - m11^3*m13)
 + 288*a^5*b^7*(m11^2*m12*m13)
 + 176*a^9*b^7*( - 33*m12^3*m13 + 32*m12*m13^3)
 + b^8*(m11^4 - m22^2 - m32^2)
 + 12*a^2*b^8*( - m11^3*m12)
 + 90*a^4*b^8*(m11^2*m12^2)
 + 12*a^6*b^8*( - 47*m11*m12^3 + 96*m11*m12*m13^2)
 + 6*a^8*b^8*(289*m12^4 - 1600*m12^2*m13^2 + 256*m13^4)
 + 16*a*b^9*( - m11^3*m13)
 + 240*a^3*b^9*(m11^2*m12*m13)
 + 16*a^5*b^9*( - 111*m11*m12^2*m13 + 32*m11*m13^3)
 + 176*a^7*b^9*(33*m12^3*m13 - 32*m12*m13^3)
 + 4*b^10*(m11^3*m12)
 + 12*a^2*b^10*( - 5*m11^2*m12^2 + 8*m11^2*m13^2)
 + 12*a^4*b^10*(31*m11*m12^3 - 112*m11*m12*m13^2)
 + 8*a^6*b^10*( - 117*m12^4 + 756*m12^2*m13^2 - 128*m13^4)
 + 48*a*b^11*( - m11^2*m12*m13)
 + 64*a^3*b^11*(9*m11*m12^2*m13 - 4*m11*m13^3)
 + 48*a^5*b^11*( - 43*m12^3*m13 + 48*m12*m13^3)
 + 6*b^12*(m11^2*m12^2)
 + 4*a^2*b^12*( - 17*m11*m12^3 + 48*m11*m12*m13^2)
 + 4*a^4*b^12*(55*m12^4 - 336*m12^2*m13^2 + 64*m13^4)
 + 48*a*b^13*( - m11*m12^2*m13)
 + 16*a^3*b^13*(19*m12^3*m13 - 16*m12*m13^3)
 + 4*b^14*(m11*m12^3)
 + 24*a^2*b^14*( - m12^4 + 4*m12^2*m13^2)
 + 16*a*b^15*( - m12^3*m13)
 + b^16*(m12^4)
*/
for (m11 = -4; m11 < 5; m11++) /* row 1 */  {
if (m11 != 0) {
for (m12 = -4; m12 < 5; m12++) /* row 1 */  {
if (m12 != 0) {
for (m13 = -4; m13 < 5; m13++) /* row 1 */  {
if (m13 != 0) {
int p1 = m11*p + m12*q + m13*r; 
if (p1 > 0) {
for (m21 = -4; m21 < 5; m21++) /* row 2 */  {
if (m21 != 0) {
for (m22 = -4; m22 < 5; m22++) /* row 2 */  {
if (m22 != 0) {
for (m23 = -4; m23 < 5; m23++) /* row 2 */  {
if (m23 != 0) {
if (m21 != m11 || m22 != m12 || m23 != m13) /* row 2 != row 1 */  {
int q1 = m21*p + m22*q + m23*r; 
if (q1 > 0) {
for (m31 = -4; m31 < 5; m31++) /* row 3 */  {
if (m31 != 0) {
for (m32 = -4; m32 < 5; m32++) /* row 3 */  {
if (m32 != 0) {
for (m33 = -4; m33 < 5; m33++) /* row 3 */  {
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
if (p1*p1*p1*p1 - q1*q1 - r1*r1 == 0) /* chain 1 condition */ {
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
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
[[2,-3,1],[-1,4,4],[2,2,4]]	preserves	[13,119,120]
[[2,-3,1],[-1,4,4],[4,4,3]]	preserves	[13,119,120]
#---> reslines=2
