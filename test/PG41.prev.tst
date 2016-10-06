/*  Generated at yyyy-mm-dd hh:mm by
    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -l 2 -f test/PG41.data.tmp pident
    Do   N O T   edit this file, but ProgramGenerator.java instead!
*/
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
int reslines = 0;
printf("#---> start of results ----\n");
/* simplified and grouped: 
    [0]  + m^15	( - A44*A44*A44)	1{A44}
    [1]  + 3*m^16	( - A43*A44*A44)	2{A43,A44}
    [2]  + 3*m^17	( - A43*A43*A44 - A42*A44*A44)	3{A42,A43,A44}
    [3]  + m^18	( - A43*A43*A43 - 6*A42*A43*A44 - 3*A41*A44*A44)	4{A41,A42,A43,A44}
    [4]  + 3*m^19	( - A42*A43*A43 - A42*A42*A44 - 2*A41*A43*A44)	4{A41,A42,A43,A44}
    [5]  + m^20	(A14*A14*A14*A14 + A24*A24*A24*A24 + A34*A34*A34*A34 - 3*A42*A42*A43 - 3*A41*A43*A43 - 6*A41*A42*A44 - A54*A54*A54*A54)	8{A14,A24,A34,A41,A42,A43,A44,A54}
    [6]  + m^21	(4*A13*A14*A14*A14 + 4*A23*A24*A24*A24 + 4*A33*A34*A34*A34 - A42*A42*A42 - 6*A41*A42*A43 - 3*A41*A41*A44 - 4*A53*A54*A54*A54)	12{A13,A14,A23,A24,A33,A34,A41,A42,A43,A44,A53,A54}
    [7]  + m^22	(6*A13*A13*A14*A14 + 4*A12*A14*A14*A14 + 6*A23*A23*A24*A24 + 4*A22*A24*A24*A24 + 6*A33*A33*A34*A34 + 4*A32*A34*A34*A34 - 3*A41*A42*A42 - 3*A41*A41*A43 - 6*A53*A53*A54*A54 - 4*A52*A54*A54*A54)	15{A12,A13,A14,A22,A23,A24,A32,A33,A34,A41,A42,A43,A52,A53,A54}
    [8]  + m^23	(4*A13*A13*A13*A14 + 12*A12*A13*A14*A14 + 4*A11*A14*A14*A14 + 4*A23*A23*A23*A24 + 12*A22*A23*A24*A24 + 4*A21*A24*A24*A24 + 4*A33*A33*A33*A34 + 12*A32*A33*A34*A34 + 4*A31*A34*A34*A34 - 3*A41*A41*A42 - 4*A53*A53*A53*A54 - 12*A52*A53*A54*A54 - 4*A51*A54*A54*A54)	18{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A41,A42,A51,A52,A53,A54}
    [9]  + m^24	(A13*A13*A13*A13 + 12*A12*A13*A13*A14 + 6*A12*A12*A14*A14 + 12*A11*A13*A14*A14 + A23*A23*A23*A23 + 12*A22*A23*A23*A24 + 6*A22*A22*A24*A24 + 12*A21*A23*A24*A24 + A33*A33*A33*A33 + 12*A32*A33*A33*A34 + 6*A32*A32*A34*A34 + 12*A31*A33*A34*A34 - A41*A41*A41 - A53*A53*A53*A53 - 12*A52*A53*A53*A54 - 6*A52*A52*A54*A54 - 12*A51*A53*A54*A54)	17{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A41,A51,A52,A53,A54}
    [10]  + 4*m^25	(A12*A13*A13*A13 + 3*A12*A12*A13*A14 + 3*A11*A13*A13*A14 + 3*A11*A12*A14*A14 + A22*A23*A23*A23 + 3*A22*A22*A23*A24 + 3*A21*A23*A23*A24 + 3*A21*A22*A24*A24 + A32*A33*A33*A33 + 3*A32*A32*A33*A34 + 3*A31*A33*A33*A34 + 3*A31*A32*A34*A34 - A52*A53*A53*A53 - 3*A52*A52*A53*A54 - 3*A51*A53*A53*A54 - 3*A51*A52*A54*A54)	16{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A51,A52,A53,A54}
    [11]  + 2*m^26	(3*A12*A12*A13*A13 + 2*A11*A13*A13*A13 + 2*A12*A12*A12*A14 + 12*A11*A12*A13*A14 + 3*A11*A11*A14*A14 + 3*A22*A22*A23*A23 + 2*A21*A23*A23*A23 + 2*A22*A22*A22*A24 + 12*A21*A22*A23*A24 + 3*A21*A21*A24*A24 + 3*A32*A32*A33*A33 + 2*A31*A33*A33*A33 + 2*A32*A32*A32*A34 + 12*A31*A32*A33*A34 + 3*A31*A31*A34*A34 - 3*A52*A52*A53*A53 - 2*A51*A53*A53*A53 - 2*A52*A52*A52*A54 - 12*A51*A52*A53*A54 - 3*A51*A51*A54*A54)	16{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A51,A52,A53,A54}
    [12]  + 4*m^27	(A12*A12*A12*A13 + 3*A11*A12*A13*A13 + 3*A11*A12*A12*A14 + 3*A11*A11*A13*A14 + A22*A22*A22*A23 + 3*A21*A22*A23*A23 + 3*A21*A22*A22*A24 + 3*A21*A21*A23*A24 + A32*A32*A32*A33 + 3*A31*A32*A33*A33 + 3*A31*A32*A32*A34 + 3*A31*A31*A33*A34 - A52*A52*A52*A53 - 3*A51*A52*A53*A53 - 3*A51*A52*A52*A54 - 3*A51*A51*A53*A54)	16{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A51,A52,A53,A54}
    [13]  + m^28	(A12*A12*A12*A12 + 12*A11*A12*A12*A13 + 6*A11*A11*A13*A13 + 12*A11*A11*A12*A14 + A22*A22*A22*A22 + 12*A21*A22*A22*A23 + 6*A21*A21*A23*A23 + 12*A21*A21*A22*A24 + A32*A32*A32*A32 + 12*A31*A32*A32*A33 + 6*A31*A31*A33*A33 + 12*A31*A31*A32*A34 - A52*A52*A52*A52 - 12*A51*A52*A52*A53 - 6*A51*A51*A53*A53 - 12*A51*A51*A52*A54)	16{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A51,A52,A53,A54}
    [14]  + 4*m^29	(A11*A12*A12*A12 + 3*A11*A11*A12*A13 + A11*A11*A11*A14 + A21*A22*A22*A22 + 3*A21*A21*A22*A23 + A21*A21*A21*A24 + A31*A32*A32*A32 + 3*A31*A31*A32*A33 + A31*A31*A31*A34 - A51*A52*A52*A52 - 3*A51*A51*A52*A53 - A51*A51*A51*A54)	16{A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A51,A52,A53,A54}
    [15]  + 2*m^30	(3*A11*A11*A12*A12 + 2*A11*A11*A11*A13 + 3*A21*A21*A22*A22 + 2*A21*A21*A21*A23 + 3*A31*A31*A32*A32 + 2*A31*A31*A31*A33 - 3*A51*A51*A52*A52 - 2*A51*A51*A51*A53)	12{A11,A12,A13,A21,A22,A23,A31,A32,A33,A51,A52,A53}
    [16]  + 4*m^31	(A11*A11*A11*A12 + A21*A21*A21*A22 + A31*A31*A31*A32 - A51*A51*A51*A52)	8{A11,A12,A21,A22,A31,A32,A51,A52}
    [17]  + m^32	(A11*A11*A11*A11 + A21*A21*A21*A21 + A31*A31*A31*A31 - A51*A51*A51*A51)	4{A11,A21,A31,A51}
    minSize=1, maxSize=18
#---> nrows=5
#---> ncols=4
#---> isolated=a,b,c,d,e
#---> parameter=m
#---> rset0=a - A14*m^5 - A13*m^6 - A12*m^7 - A11*m^8; b - A24*m^5 - A23*m^6 - A22*m^7 - A21*m^8; c - A34*m^5 - A33*m^6 - A32*m^7 - A31*m^8; d - A44*m^5 - A43*m^6 - A42*m^7 - A41*m^8; e - A54*m^5 - A53*m^6 - A52*m^7 - A51*m^8; a^4 + b^4 + c^4 + d^3 - e^4
#---> poly1= - A44^3*m^15 - 3*A43*A44^2*m^16 - 3*A43^2*A44*m^17 - 3*A42*A44^2*m^17 - A43^3*m^18 - 6*A42*A43*A44*m^18 - 3*A41*A44^2*m^18 - 3*A42*A43^2*m^19 - 3*A42^2*A44*m^19 - 6*A41*A43*A44*m^19 + A14^4*m^20 + A24^4*m^20 + A34^4*m^20 - 3*A42^2*A43*m^20 - 3*A41*A43^2*m^20 - 6*A41*A42*A44*m^20 - A54^4*m^20 + 4*A13*A14^3*m^21 + 4*A23*A24^3*m^21 + 4*A33*A34^3*m^21 - A42^3*m^21 - 6*A41*A42*A43*m^21 - 3*A41^2*A44*m^21 - 4*A53*A54^3*m^21 + 6*A13^2*A14^2*m^22 + 4*A12*A14^3*m^22 + 6*A23^2*A24^2*m^22 + 4*A22*A24^3*m^22 + 6*A33^2*A34^2*m^22 + 4*A32*A34^3*m^22 - 3*A41*A42^2*m^22 - 3*A41^2*A43*m^22 - 6*A53^2*A54^2*m^22 - 4*A52*A54^3*m^22 + 4*A13^3*A14*m^23 + 12*A12*A13*A14^2*m^23 + 4*A11*A14^3*m^23 + 4*A23^3*A24*m^23 + 12*A22*A23*A24^2*m^23 + 4*A21*A24^3*m^23 + 4*A33^3*A34*m^23 + 12*A32*A33*A34^2*m^23 + 4*A31*A34^3*m^23 - 3*A41^2*A42*m^23 - 4*A53^3*A54*m^23 - 12*A52*A53*A54^2*m^23 - 4*A51*A54^3*m^23 + A13^4*m^24 + 12*A12*A13^2*A14*m^24 + 6*A12^2*A14^2*m^24 + 12*A11*A13*A14^2*m^24 + A23^4*m^24 + 12*A22*A23^2*A24*m^24 + 6*A22^2*A24^2*m^24 + 12*A21*A23*A24^2*m^24 + A33^4*m^24 + 12*A32*A33^2*A34*m^24 + 6*A32^2*A34^2*m^24 + 12*A31*A33*A34^2*m^24 - A41^3*m^24 - A53^4*m^24 - 12*A52*A53^2*A54*m^24 - 6*A52^2*A54^2*m^24 - 12*A51*A53*A54^2*m^24 + 4*A12*A13^3*m^25 + 12*A12^2*A13*A14*m^25 + 12*A11*A13^2*A14*m^25 + 12*A11*A12*A14^2*m^25 + 4*A22*A23^3*m^25 + 12*A22^2*A23*A24*m^25 + 12*A21*A23^2*A24*m^25 + 12*A21*A22*A24^2*m^25 + 4*A32*A33^3*m^25 + 12*A32^2*A33*A34*m^25 + 12*A31*A33^2*A34*m^25 + 12*A31*A32*A34^2*m^25 - 4*A52*A53^3*m^25 - 12*A52^2*A53*A54*m^25 - 12*A51*A53^2*A54*m^25 - 12*A51*A52*A54^2*m^25 + 6*A12^2*A13^2*m^26 + 4*A11*A13^3*m^26 + 4*A12^3*A14*m^26 + 24*A11*A12*A13*A14*m^26 + 6*A11^2*A14^2*m^26 + 6*A22^2*A23^2*m^26 + 4*A21*A23^3*m^26 + 4*A22^3*A24*m^26 + 24*A21*A22*A23*A24*m^26 + 6*A21^2*A24^2*m^26 + 6*A32^2*A33^2*m^26 + 4*A31*A33^3*m^26 + 4*A32^3*A34*m^26 + 24*A31*A32*A33*A34*m^26 + 6*A31^2*A34^2*m^26 - 6*A52^2*A53^2*m^26 - 4*A51*A53^3*m^26 - 4*A52^3*A54*m^26 - 24*A51*A52*A53*A54*m^26 - 6*A51^2*A54^2*m^26 + 4*A12^3*A13*m^27 + 12*A11*A12*A13^2*m^27 + 12*A11*A12^2*A14*m^27 + 12*A11^2*A13*A14*m^27 + 4*A22^3*A23*m^27 + 12*A21*A22*A23^2*m^27 + 12*A21*A22^2*A24*m^27 + 12*A21^2*A23*A24*m^27 + 4*A32^3*A33*m^27 + 12*A31*A32*A33^2*m^27 + 12*A31*A32^2*A34*m^27 + 12*A31^2*A33*A34*m^27 - 4*A52^3*A53*m^27 - 12*A51*A52*A53^2*m^27 - 12*A51*A52^2*A54*m^27 - 12*A51^2*A53*A54*m^27 + A12^4*m^28 + 12*A11*A12^2*A13*m^28 + 6*A11^2*A13^2*m^28 + 12*A11^2*A12*A14*m^28 + A22^4*m^28 + 12*A21*A22^2*A23*m^28 + 6*A21^2*A23^2*m^28 + 12*A21^2*A22*A24*m^28 + A32^4*m^28 + 12*A31*A32^2*A33*m^28 + 6*A31^2*A33^2*m^28 + 12*A31^2*A32*A34*m^28 - A52^4*m^28 - 12*A51*A52^2*A53*m^28 - 6*A51^2*A53^2*m^28 - 12*A51^2*A52*A54*m^28 + 4*A11*A12^3*m^29 + 12*A11^2*A12*A13*m^29 + 4*A11^3*A14*m^29 + 4*A21*A22^3*m^29 + 12*A21^2*A22*A23*m^29 + 4*A21^3*A24*m^29 + 4*A31*A32^3*m^29 + 12*A31^2*A32*A33*m^29 + 4*A31^3*A34*m^29 - 4*A51*A52^3*m^29 - 12*A51^2*A52*A53*m^29 - 4*A51^3*A54*m^29 + 6*A11^2*A12^2*m^30 + 4*A11^3*A13*m^30 + 6*A21^2*A22^2*m^30 + 4*A21^3*A23*m^30 + 6*A31^2*A32^2*m^30 + 4*A31^3*A33*m^30 - 6*A51^2*A52^2*m^30 - 4*A51^3*A53*m^30 + 4*A11^3*A12*m^31 + 4*A21^3*A22*m^31 + 4*A31^3*A32*m^31 - 4*A51^3*A52*m^31 + A11^4*m^32 + A21^4*m^32 + A31^4*m^32 - A51^4*m^32
#---> powerSum=a^4 + b^4 + c^4 + d^3 - e^4
#---> exponent=-1
#---> pmat=[[A11,A12,A13,A14],[A21,A22,A23,A24],[A31,A32,A33,A34],[A41,A42,A43,A44],[A51,A52,A53,A54]]
*/
int A11,A12,A13,A14,A21,A22,A23,A24,A31,A32,A33,A34,A41,A42,A43,A44,A51,A52,A53,A54;
for (A44 = -2; A44 < 3; A44++)  {
if ( - A44*A44*A44 == 0) /* [0], minSize = 1 */  {
for (A43 = -2; A43 < 3; A43++)  {
if ( - A43*A44*A44 == 0) /* [1], minSize = 2 */  {
for (A42 = -2; A42 < 3; A42++)  {
if ( - A43*A43*A44 - A42*A44*A44 == 0) /* [2], minSize = 3 */  {
for (A41 = -2; A41 < 3; A41++)  {
if ( - A43*A43*A43 - 6*A42*A43*A44 - 3*A41*A44*A44 == 0) /* [3], minSize = 4 */  {
if ( - A42*A43*A43 - A42*A42*A44 - 2*A41*A43*A44 == 0) /* [4], minSize = 4 */  {
for (A11 = -2; A11 < 3; A11++)  {
for (A21 = -2; A21 < 3; A21++)  {
for (A31 = -2; A31 < 3; A31++)  {
for (A51 = -2; A51 < 3; A51++)  {
if (A11*A11*A11*A11 + A21*A21*A21*A21 + A31*A31*A31*A31 - A51*A51*A51*A51 == 0) /* [17], minSize = 4 */  {
for (A14 = -2; A14 < 3; A14++)  {
for (A24 = -2; A24 < 3; A24++)  {
for (A34 = -2; A34 < 3; A34++)  {
for (A54 = -2; A54 < 3; A54++)  {
if (A14*A14*A14*A14 + A24*A24*A24*A24 + A34*A34*A34*A34 - 3*A42*A42*A43 - 3*A41*A43*A43 - 6*A41*A42*A44 - A54*A54*A54*A54 == 0) /* [5], minSize = 8 */  {
for (A12 = -2; A12 < 3; A12++)  {
for (A22 = -2; A22 < 3; A22++)  {
for (A32 = -2; A32 < 3; A32++)  {
for (A52 = -2; A52 < 3; A52++)  {
if (A11*A11*A11*A12 + A21*A21*A21*A22 + A31*A31*A31*A32 - A51*A51*A51*A52 == 0) /* [16], minSize = 8 */  {
for (A13 = -2; A13 < 3; A13++)  {
for (A23 = -2; A23 < 3; A23++)  {
for (A33 = -2; A33 < 3; A33++)  {
for (A53 = -2; A53 < 3; A53++)  {
int sum1 = A11+A12+A13+A14; 
int sum2 = A21+A22+A23+A24; if (sum1 <= sum2) {
int sum3 = A31+A32+A33+A34; if (sum2 <= sum3) {
int sum4 = A41+A42+A43+A44; if (sum3 <= sum4) {
int sum5 = A51+A52+A53+A54; if (sum4 <= sum5) {
if (4*A13*A14*A14*A14 + 4*A23*A24*A24*A24 + 4*A33*A34*A34*A34 - A42*A42*A42 - 6*A41*A42*A43 - 3*A41*A41*A44 - 4*A53*A54*A54*A54 == 0) /* [6], minSize = 12 */  {
if (3*A11*A11*A12*A12 + 2*A11*A11*A11*A13 + 3*A21*A21*A22*A22 + 2*A21*A21*A21*A23 + 3*A31*A31*A32*A32 + 2*A31*A31*A31*A33 - 3*A51*A51*A52*A52 - 2*A51*A51*A51*A53 == 0) /* [15], minSize = 12 */  {
if (6*A13*A13*A14*A14 + 4*A12*A14*A14*A14 + 6*A23*A23*A24*A24 + 4*A22*A24*A24*A24 + 6*A33*A33*A34*A34 + 4*A32*A34*A34*A34 - 3*A41*A42*A42 - 3*A41*A41*A43 - 6*A53*A53*A54*A54 - 4*A52*A54*A54*A54 == 0) /* [7], minSize = 15 */  {
if (A12*A13*A13*A13 + 3*A12*A12*A13*A14 + 3*A11*A13*A13*A14 + 3*A11*A12*A14*A14 + A22*A23*A23*A23 + 3*A22*A22*A23*A24 + 3*A21*A23*A23*A24 + 3*A21*A22*A24*A24 + A32*A33*A33*A33 + 3*A32*A32*A33*A34 + 3*A31*A33*A33*A34 + 3*A31*A32*A34*A34 - A52*A53*A53*A53 - 3*A52*A52*A53*A54 - 3*A51*A53*A53*A54 - 3*A51*A52*A54*A54 == 0) /* [10], minSize = 16 */  {
if (3*A12*A12*A13*A13 + 2*A11*A13*A13*A13 + 2*A12*A12*A12*A14 + 12*A11*A12*A13*A14 + 3*A11*A11*A14*A14 + 3*A22*A22*A23*A23 + 2*A21*A23*A23*A23 + 2*A22*A22*A22*A24 + 12*A21*A22*A23*A24 + 3*A21*A21*A24*A24 + 3*A32*A32*A33*A33 + 2*A31*A33*A33*A33 + 2*A32*A32*A32*A34 + 12*A31*A32*A33*A34 + 3*A31*A31*A34*A34 - 3*A52*A52*A53*A53 - 2*A51*A53*A53*A53 - 2*A52*A52*A52*A54 - 12*A51*A52*A53*A54 - 3*A51*A51*A54*A54 == 0) /* [11], minSize = 16 */  {
if (A12*A12*A12*A13 + 3*A11*A12*A13*A13 + 3*A11*A12*A12*A14 + 3*A11*A11*A13*A14 + A22*A22*A22*A23 + 3*A21*A22*A23*A23 + 3*A21*A22*A22*A24 + 3*A21*A21*A23*A24 + A32*A32*A32*A33 + 3*A31*A32*A33*A33 + 3*A31*A32*A32*A34 + 3*A31*A31*A33*A34 - A52*A52*A52*A53 - 3*A51*A52*A53*A53 - 3*A51*A52*A52*A54 - 3*A51*A51*A53*A54 == 0) /* [12], minSize = 16 */  {
if (A12*A12*A12*A12 + 12*A11*A12*A12*A13 + 6*A11*A11*A13*A13 + 12*A11*A11*A12*A14 + A22*A22*A22*A22 + 12*A21*A22*A22*A23 + 6*A21*A21*A23*A23 + 12*A21*A21*A22*A24 + A32*A32*A32*A32 + 12*A31*A32*A32*A33 + 6*A31*A31*A33*A33 + 12*A31*A31*A32*A34 - A52*A52*A52*A52 - 12*A51*A52*A52*A53 - 6*A51*A51*A53*A53 - 12*A51*A51*A52*A54 == 0) /* [13], minSize = 16 */  {
if (A11*A12*A12*A12 + 3*A11*A11*A12*A13 + A11*A11*A11*A14 + A21*A22*A22*A22 + 3*A21*A21*A22*A23 + A21*A21*A21*A24 + A31*A32*A32*A32 + 3*A31*A31*A32*A33 + A31*A31*A31*A34 - A51*A52*A52*A52 - 3*A51*A51*A52*A53 - A51*A51*A51*A54 == 0) /* [14], minSize = 16 */  {
if (A13*A13*A13*A13 + 12*A12*A13*A13*A14 + 6*A12*A12*A14*A14 + 12*A11*A13*A14*A14 + A23*A23*A23*A23 + 12*A22*A23*A23*A24 + 6*A22*A22*A24*A24 + 12*A21*A23*A24*A24 + A33*A33*A33*A33 + 12*A32*A33*A33*A34 + 6*A32*A32*A34*A34 + 12*A31*A33*A34*A34 - A41*A41*A41 - A53*A53*A53*A53 - 12*A52*A53*A53*A54 - 6*A52*A52*A54*A54 - 12*A51*A53*A54*A54 == 0) /* [9], minSize = 17 */  {
if (4*A13*A13*A13*A14 + 12*A12*A13*A14*A14 + 4*A11*A14*A14*A14 + 4*A23*A23*A23*A24 + 12*A22*A23*A24*A24 + 4*A21*A24*A24*A24 + 4*A33*A33*A33*A34 + 12*A32*A33*A34*A34 + 4*A31*A34*A34*A34 - 3*A41*A41*A42 - 4*A53*A53*A53*A54 - 12*A52*A53*A54*A54 - 4*A51*A54*A54*A54 == 0) /* [8], minSize = 18 */  {
if (A11 != 0 || A12 != 0 || A13 != 0 || A14 != 0) /* row 1 != 0 */  {
if (A11 != A21 || A12 != A22 || A13 != A23 || A14 != A24) /* row 1 != row 2 */  {
if (A11 != A31 || A12 != A32 || A13 != A33 || A14 != A34) /* row 1 != row 3 */  {
if (A11 != A41 || A12 != A42 || A13 != A43 || A14 != A44) /* row 1 != row 4 */  {
if (A11 != A51 || A12 != A52 || A13 != A53 || A14 != A54) /* row 1 != row 5 */  {
if (A21 != 0 || A22 != 0 || A23 != 0 || A24 != 0) /* row 2 != 0 */  {
if (A21 != A31 || A22 != A32 || A23 != A33 || A24 != A34) /* row 2 != row 3 */  {
if (A21 != A41 || A22 != A42 || A23 != A43 || A24 != A44) /* row 2 != row 4 */  {
if (A21 != A51 || A22 != A52 || A23 != A53 || A24 != A54) /* row 2 != row 5 */  {
if (A31 != 0 || A32 != 0 || A33 != 0 || A34 != 0) /* row 3 != 0 */  {
if (A31 != A41 || A32 != A42 || A33 != A43 || A34 != A44) /* row 3 != row 4 */  {
if (A31 != A51 || A32 != A52 || A33 != A53 || A34 != A54) /* row 3 != row 5 */  {
if (A41 != 0 || A42 != 0 || A43 != 0 || A44 != 0) /* row 4 != 0 */  {
if (A41 != A51 || A42 != A52 || A43 != A53 || A44 != A54) /* row 4 != row 5 */  {
if (A51 != 0 || A52 != 0 || A53 != 0 || A54 != 0) /* row 5 != 0 */  {
printf("[");
printf("[%d,%d,%d,%d]",A11,A12,A13,A14);
printf(",");
printf("[%d,%d,%d,%d]",A21,A22,A23,A24);
printf(",");
printf("[%d,%d,%d,%d]",A31,A32,A33,A34);
printf(",");
printf("[%d,%d,%d,%d]",A41,A42,A43,A44);
printf(",");
printf("[%d,%d,%d,%d]",A51,A52,A53,A54);
printf("]");
reslines ++;
printf("\n");
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
printf("#---> reslines=%d\n", reslines);
} /* main */
#---> start of results ----
#---> reslines=0
