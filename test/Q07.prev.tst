
expanding queue[0]: a^3 + b^3 - c^3 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same as 4*2*a^3+4*2*b^3-4*2*c^3
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c]: unknown 1*2+3*2*a+6*2*a^2+4*2*a^3+3*2*b+6*2*b^2+4*2*b^3-4*2*c^3 -> [1]
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,1+2*c]: success NONTRIVIAL 3*2*a+6*2*a^2+4*2*a^3+4*2*b^3-3*2*c-6*2*c^2-4*2*c^3 -> [2]
[0+2*a,1+2*b,1+2*c]: success NONTRIVIAL 4*2*a^3+3*2*b+6*2*b^2+4*2*b^3-3*2*c-6*2*c^2-4*2*c^3 -> [3]
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=2

expanding queue[1]: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 - 8*c^3 = 0 modulo [2,2,2] *4
[1+4*a,1+4*b,0+4*c]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+4*c]: unknown 7*4+27*4*a+36*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3-16*4*c^3 -> [4]
[1+4*a,3+4*b,0+4*c]: unknown 7*4+3*4*a+12*4*a^2+16*4*a^3+27*4*b+36*4*b^2+16*4*b^3-16*4*c^3 -> [5]
[3+4*a,3+4*b,0+4*c]: failure constant=54, vgcd=4
[1+4*a,1+4*b,2+4*c]: failure constant=-6, vgcd=4
[3+4*a,1+4*b,2+4*c]: unknown 5*4+27*4*a+36*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3-12*4*c-24*4*c^2-16*4*c^3 -> [6]
[1+4*a,3+4*b,2+4*c]: unknown 5*4+3*4*a+12*4*a^2+16*4*a^3+27*4*b+36*4*b^2+16*4*b^3-12*4*c-24*4*c^2-16*4*c^3 -> [7]
[3+4*a,3+4*b,2+4*c]: failure constant=46, vgcd=4

expanding queue[2]: 6*a + 12*a^2 + 8*a^3 + 8*b^3 - 6*c - 12*c^2 - 8*c^3 = 0 modulo [2,2,2] *4
[1+4*a,0+4*b,1+4*c]: similiar to [2], affine map: {a=(2*a),b=(2*b),c=(2*c)}  3*4*a+12*4*a^2+16*4*a^3+16*4*b^3-3*4*c-12*4*c^2-16*4*c^3
[3+4*a,0+4*b,1+4*c]: failure constant=26, vgcd=4
[1+4*a,2+4*b,1+4*c]: unknown 2*4+3*4*a+12*4*a^2+16*4*a^3+12*4*b+24*4*b^2+16*4*b^3-3*4*c-12*4*c^2-16*4*c^3 -> [8]
[3+4*a,2+4*b,1+4*c]: failure constant=34, vgcd=4
[1+4*a,0+4*b,3+4*c]: failure constant=-26, vgcd=4
[3+4*a,0+4*b,3+4*c]: success NONTRIVIAL 27*4*a+36*4*a^2+16*4*a^3+16*4*b^3-27*4*c-36*4*c^2-16*4*c^3 -> [9]
[1+4*a,2+4*b,3+4*c]: failure constant=-18, vgcd=4
[3+4*a,2+4*b,3+4*c]: unknown 2*4+27*4*a+36*4*a^2+16*4*a^3+12*4*b+24*4*b^2+16*4*b^3-27*4*c-36*4*c^2-16*4*c^3 -> [10]

expanding queue[3]: 8*a^3 + 6*b + 12*b^2 + 8*b^3 - 6*c - 12*c^2 - 8*c^3 = 0 modulo [2,2,2] *4
[0+4*a,1+4*b,1+4*c]: similiar to [3], affine map: {a=(2*a),b=(2*b),c=(2*c)}  16*4*a^3+3*4*b+12*4*b^2+16*4*b^3-3*4*c-12*4*c^2-16*4*c^3
[2+4*a,1+4*b,1+4*c]: unknown 2*4+12*4*a+24*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3-3*4*c-12*4*c^2-16*4*c^3 -> [11]
[0+4*a,3+4*b,1+4*c]: failure constant=26, vgcd=4
[2+4*a,3+4*b,1+4*c]: failure constant=34, vgcd=4
[0+4*a,1+4*b,3+4*c]: failure constant=-26, vgcd=4
[2+4*a,1+4*b,3+4*c]: failure constant=-18, vgcd=4
[0+4*a,3+4*b,3+4*c]: success NONTRIVIAL 16*4*a^3+27*4*b+36*4*b^2+16*4*b^3-27*4*c-36*4*c^2-16*4*c^3 -> [12]
[2+4*a,3+4*b,3+4*c]: unknown 2*4+12*4*a+24*4*a^2+16*4*a^3+27*4*b+36*4*b^2+16*4*b^3-27*4*c-36*4*c^2-16*4*c^3 -> [13]

expanding queue[4]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,1+8*b,0+8*c]: failure constant=28, vgcd=8
[7+8*a,1+8*b,0+8*c]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3-64*8*c^3 -> [14]
[3+8*a,5+8*b,0+8*c]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3-64*8*c^3 -> [15]
[7+8*a,5+8*b,0+8*c]: failure constant=468, vgcd=8
[3+8*a,1+8*b,4+8*c]: failure constant=-36, vgcd=8
[7+8*a,1+8*b,4+8*c]: unknown 35*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3-48*8*c-96*8*c^2-64*8*c^3 -> [16]
[3+8*a,5+8*b,4+8*c]: unknown 11*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3-48*8*c-96*8*c^2-64*8*c^3 -> [17]
[7+8*a,5+8*b,4+8*c]: failure constant=404, vgcd=8

expanding queue[5]: 28 + 12*a + 48*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 64*c^3 = 0 modulo [2,2,2] *8
[1+8*a,3+8*b,0+8*c]: failure constant=28, vgcd=8
[5+8*a,3+8*b,0+8*c]: unknown 19*8+75*8*a+120*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-64*8*c^3 -> [18]
[1+8*a,7+8*b,0+8*c]: unknown 43*8+3*8*a+24*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-64*8*c^3 -> [19]
[5+8*a,7+8*b,0+8*c]: failure constant=468, vgcd=8
[1+8*a,3+8*b,4+8*c]: failure constant=-36, vgcd=8
[5+8*a,3+8*b,4+8*c]: unknown 11*8+75*8*a+120*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-48*8*c-96*8*c^2-64*8*c^3 -> [20]
[1+8*a,7+8*b,4+8*c]: unknown 35*8+3*8*a+24*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-48*8*c-96*8*c^2-64*8*c^3 -> [21]
[5+8*a,7+8*b,4+8*c]: failure constant=404, vgcd=8

expanding queue[6]: 20 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 48*c - 96*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,1+8*b,2+8*c]: failure constant=20, vgcd=8
[7+8*a,1+8*b,2+8*c]: unknown 42*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3-12*8*c-48*8*c^2-64*8*c^3 -> [22]
[3+8*a,5+8*b,2+8*c]: unknown 18*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3-12*8*c-48*8*c^2-64*8*c^3 -> [23]
[7+8*a,5+8*b,2+8*c]: failure constant=460, vgcd=8
[3+8*a,1+8*b,6+8*c]: failure constant=-188, vgcd=8
[7+8*a,1+8*b,6+8*c]: unknown 16*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3-108*8*c-144*8*c^2-64*8*c^3 -> [24]
[3+8*a,5+8*b,6+8*c]: unknown -8*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3-108*8*c-144*8*c^2-64*8*c^3 -> [25]
[7+8*a,5+8*b,6+8*c]: failure constant=252, vgcd=8

expanding queue[7]: 20 + 12*a + 48*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 48*c - 96*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[1+8*a,3+8*b,2+8*c]: failure constant=20, vgcd=8
[5+8*a,3+8*b,2+8*c]: unknown 18*8+75*8*a+120*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-12*8*c-48*8*c^2-64*8*c^3 -> [26]
[1+8*a,7+8*b,2+8*c]: unknown 42*8+3*8*a+24*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-12*8*c-48*8*c^2-64*8*c^3 -> [27]
[5+8*a,7+8*b,2+8*c]: failure constant=460, vgcd=8
[1+8*a,3+8*b,6+8*c]: failure constant=-188, vgcd=8
[5+8*a,3+8*b,6+8*c]: unknown -8*8+75*8*a+120*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-108*8*c-144*8*c^2-64*8*c^3 -> [28]
[1+8*a,7+8*b,6+8*c]: unknown 16*8+3*8*a+24*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-108*8*c-144*8*c^2-64*8*c^3 -> [29]
[5+8*a,7+8*b,6+8*c]: failure constant=252, vgcd=8

expanding queue[8]: 8 + 12*a + 48*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 - 12*c - 48*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[1+8*a,2+8*b,1+8*c]: similiar to [8], affine map: {a=(2*a),b=(2*b),c=(2*c)}  1*8+3*8*a+24*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3-3*8*c-24*8*c^2-64*8*c^3
[5+8*a,2+8*b,1+8*c]: failure constant=132, vgcd=8
[1+8*a,6+8*b,1+8*c]: unknown 27*8+3*8*a+24*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3-3*8*c-24*8*c^2-64*8*c^3 -> [30]
[5+8*a,6+8*b,1+8*c]: failure constant=340, vgcd=8
[1+8*a,2+8*b,5+8*c]: failure constant=-116, vgcd=8
[5+8*a,2+8*b,5+8*c]: unknown 1*8+75*8*a+120*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3-75*8*c-120*8*c^2-64*8*c^3 -> [31]
[1+8*a,6+8*b,5+8*c]: failure constant=92, vgcd=8
[5+8*a,6+8*b,5+8*c]: unknown 27*8+75*8*a+120*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3-75*8*c-120*8*c^2-64*8*c^3 -> [32]

expanding queue[9]: 108*a + 144*a^2 + 64*a^3 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,0+8*b,3+8*c]: similiar to [9], affine map: {a=(2*a),b=(2*b),c=(2*c)}  27*8*a+72*8*a^2+64*8*a^3+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3
[7+8*a,0+8*b,3+8*c]: failure constant=316, vgcd=8
[3+8*a,4+8*b,3+8*c]: unknown 8*8+27*8*a+72*8*a^2+64*8*a^3+48*8*b+96*8*b^2+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3 -> [33]
[7+8*a,4+8*b,3+8*c]: failure constant=380, vgcd=8
[3+8*a,0+8*b,7+8*c]: failure constant=-316, vgcd=8
[7+8*a,0+8*b,7+8*c]: success NONTRIVIAL 147*8*a+168*8*a^2+64*8*a^3+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [34]
[3+8*a,4+8*b,7+8*c]: failure constant=-252, vgcd=8
[7+8*a,4+8*b,7+8*c]: unknown 8*8+147*8*a+168*8*a^2+64*8*a^3+48*8*b+96*8*b^2+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [35]

expanding queue[10]: 8 + 108*a + 144*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,2+8*b,3+8*c]: similiar to [10], affine map: {a=(2*a),b=(2*b),c=(2*c)}  1*8+27*8*a+72*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3
[7+8*a,2+8*b,3+8*c]: failure constant=324, vgcd=8
[3+8*a,6+8*b,3+8*c]: unknown 27*8+27*8*a+72*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3 -> [36]
[7+8*a,6+8*b,3+8*c]: failure constant=532, vgcd=8
[3+8*a,2+8*b,7+8*c]: failure constant=-308, vgcd=8
[7+8*a,2+8*b,7+8*c]: unknown 1*8+147*8*a+168*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [37]
[3+8*a,6+8*b,7+8*c]: failure constant=-100, vgcd=8
[7+8*a,6+8*b,7+8*c]: unknown 27*8+147*8*a+168*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [38]

expanding queue[11]: 8 + 48*a + 96*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 12*c - 48*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[2+8*a,1+8*b,1+8*c]: similiar to [11], affine map: {a=(2*a),b=(2*b),c=(2*c)}  1*8+12*8*a+48*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3-3*8*c-24*8*c^2-64*8*c^3
[6+8*a,1+8*b,1+8*c]: unknown 27*8+108*8*a+144*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3-3*8*c-24*8*c^2-64*8*c^3 -> [39]
[2+8*a,5+8*b,1+8*c]: failure constant=132, vgcd=8
[6+8*a,5+8*b,1+8*c]: failure constant=340, vgcd=8
[2+8*a,1+8*b,5+8*c]: failure constant=-116, vgcd=8
[6+8*a,1+8*b,5+8*c]: failure constant=92, vgcd=8
[2+8*a,5+8*b,5+8*c]: unknown 1*8+12*8*a+48*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3-75*8*c-120*8*c^2-64*8*c^3 -> [40]
[6+8*a,5+8*b,5+8*c]: unknown 27*8+108*8*a+144*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3-75*8*c-120*8*c^2-64*8*c^3 -> [41]

expanding queue[12]: 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[0+8*a,3+8*b,3+8*c]: similiar to [12], affine map: {a=(2*a),b=(2*b),c=(2*c)}  64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3
[4+8*a,3+8*b,3+8*c]: unknown 8*8+48*8*a+96*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3 -> [42]
[0+8*a,7+8*b,3+8*c]: failure constant=316, vgcd=8
[4+8*a,7+8*b,3+8*c]: failure constant=380, vgcd=8
[0+8*a,3+8*b,7+8*c]: failure constant=-316, vgcd=8
[4+8*a,3+8*b,7+8*c]: failure constant=-252, vgcd=8
[0+8*a,7+8*b,7+8*c]: success NONTRIVIAL 64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [43]
[4+8*a,7+8*b,7+8*c]: unknown 8*8+48*8*a+96*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [44]

expanding queue[13]: 8 + 48*a + 96*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[2+8*a,3+8*b,3+8*c]: similiar to [13], affine map: {a=(2*a),b=(2*b),c=(2*c)}  1*8+12*8*a+48*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3
[6+8*a,3+8*b,3+8*c]: unknown 27*8+108*8*a+144*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3-27*8*c-72*8*c^2-64*8*c^3 -> [45]
[2+8*a,7+8*b,3+8*c]: failure constant=324, vgcd=8
[6+8*a,7+8*b,3+8*c]: failure constant=532, vgcd=8
[2+8*a,3+8*b,7+8*c]: failure constant=-308, vgcd=8
[6+8*a,3+8*b,7+8*c]: failure constant=-100, vgcd=8
[2+8*a,7+8*b,7+8*c]: unknown 1*8+12*8*a+48*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [46]
[6+8*a,7+8*b,7+8*c]: unknown 27*8+108*8*a+144*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3-147*8*c-168*8*c^2-64*8*c^3 -> [47]
