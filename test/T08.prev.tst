
expanding queue[0]: a^3 + b^3 + c^3 - d^3 = 0 modulo [2,2,2,2] *2
[0+2*a,0+2*b,0+2*c,0+2*d]: same as 4*2*a^3+4*2*b^3+4*2*c^3-4*2*d^3
[1+2*a,0+2*b,0+2*c,0+2*d]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c,0+2*d]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c,0+2*d]: unknown 1*2+3*2*a+6*2*a^2+4*2*a^3+3*2*b+6*2*b^2+4*2*b^3+4*2*c^3-4*2*d^3 -> [1]
[0+2*a,0+2*b,1+2*c,0+2*d]: failure constant=1, vgcd=2
[1+2*a,0+2*b,1+2*c,0+2*d]: failure transposition of [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*b 1+2*b|1+2*c
[0+2*a,1+2*b,1+2*c,0+2*d]: failure transposition of [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*a 1+2*a|1+2*b 1+2*b|1+2*c
[1+2*a,1+2*b,1+2*c,0+2*d]: failure constant=3, vgcd=2
[0+2*a,0+2*b,0+2*c,1+2*d]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,0+2*c,1+2*d]: success NONTRIVIAL 3*2*a+6*2*a^2+4*2*a^3+4*2*b^3+4*2*c^3-3*2*d-6*2*d^2-4*2*d^3 -> [2]
[0+2*a,1+2*b,0+2*c,1+2*d]: failure transposition of [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 1+2*a|1+2*b
[1+2*a,1+2*b,0+2*c,1+2*d]: failure constant=1, vgcd=2
[0+2*a,0+2*b,1+2*c,1+2*d]: failure transposition of [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 0+2*c|0+2*b 1+2*a|1+2*c
[1+2*a,0+2*b,1+2*c,1+2*d]: failure constant=1, vgcd=2
[0+2*a,1+2*b,1+2*c,1+2*d]: failure constant=1, vgcd=2
[1+2*a,1+2*b,1+2*c,1+2*d]: unknown 1*2+3*2*a+6*2*a^2+4*2*a^3+3*2*b+6*2*b^2+4*2*b^3+3*2*c+6*2*c^2+4*2*c^3-3*2*d-6*2*d^2-4*2*d^3 -> [3]

expanding queue[1]: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 8*c^3 - 8*d^3 = 0 modulo [2,2,2,2] *4
[1+4*a,1+4*b,0+4*c,0+4*d]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+4*c,0+4*d]: unknown 7*4+27*4*a+36*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3+16*4*c^3-16*4*d^3 -> [4]
[1+4*a,3+4*b,0+4*c,0+4*d]: failure transposition of [4] {0/0+4*c,0/1+4*b,0/3+4*a,3/0+4*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,0+4*c,0+4*d]: failure constant=54, vgcd=4
[1+4*a,1+4*b,2+4*c,0+4*d]: failure constant=10, vgcd=4
[3+4*a,1+4*b,2+4*c,0+4*d]: unknown 9*4+27*4*a+36*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3+12*4*c+24*4*c^2+16*4*c^3-16*4*d^3 -> [5]
[1+4*a,3+4*b,2+4*c,0+4*d]: failure transposition of [5] {0/1+4*b,0/2+4*c,0/3+4*a,3/0+4*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,2+4*c,0+4*d]: failure constant=62, vgcd=4
[1+4*a,1+4*b,0+4*c,2+4*d]: failure constant=-6, vgcd=4
[3+4*a,1+4*b,0+4*c,2+4*d]: unknown 5*4+27*4*a+36*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3+16*4*c^3-12*4*d-24*4*d^2-16*4*d^3 -> [6]
[1+4*a,3+4*b,0+4*c,2+4*d]: failure transposition of [6] {0/0+4*c,0/1+4*b,0/3+4*a,3/2+4*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,0+4*c,2+4*d]: failure constant=46, vgcd=4
[1+4*a,1+4*b,2+4*c,2+4*d]: failure constant=2, vgcd=4
[3+4*a,1+4*b,2+4*c,2+4*d]: unknown 7*4+27*4*a+36*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3+12*4*c+24*4*c^2+16*4*c^3-12*4*d-24*4*d^2-16*4*d^3 -> [7]
[1+4*a,3+4*b,2+4*c,2+4*d]: failure transposition of [7] {0/1+4*b,0/2+4*c,0/3+4*a,3/2+4*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,2+4*c,2+4*d]: failure constant=54, vgcd=4

expanding queue[2]: 6*a + 12*a^2 + 8*a^3 + 8*b^3 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 = 0 modulo [2,2,2,2] *4
[1+4*a,0+4*b,0+4*c,1+4*d]: similiar to [2], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  3*4*a+12*4*a^2+16*4*a^3+16*4*b^3+16*4*c^3-3*4*d-12*4*d^2-16*4*d^3
[3+4*a,0+4*b,0+4*c,1+4*d]: failure constant=26, vgcd=4
[1+4*a,2+4*b,0+4*c,1+4*d]: unknown 2*4+3*4*a+12*4*a^2+16*4*a^3+12*4*b+24*4*b^2+16*4*b^3+16*4*c^3-3*4*d-12*4*d^2-16*4*d^3 -> [8]
[3+4*a,2+4*b,0+4*c,1+4*d]: failure constant=34, vgcd=4
[1+4*a,0+4*b,2+4*c,1+4*d]: failure transposition of [8] {0/0+4*c,0/1+4*a,0/2+4*b,3/1+4*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[3+4*a,0+4*b,2+4*c,1+4*d]: failure constant=34, vgcd=4
[1+4*a,2+4*b,2+4*c,1+4*d]: unknown 4*4+3*4*a+12*4*a^2+16*4*a^3+12*4*b+24*4*b^2+16*4*b^3+12*4*c+24*4*c^2+16*4*c^3-3*4*d-12*4*d^2-16*4*d^3 -> [9]
[3+4*a,2+4*b,2+4*c,1+4*d]: failure constant=42, vgcd=4
[1+4*a,0+4*b,0+4*c,3+4*d]: failure constant=-26, vgcd=4
[3+4*a,0+4*b,0+4*c,3+4*d]: success NONTRIVIAL 27*4*a+36*4*a^2+16*4*a^3+16*4*b^3+16*4*c^3-27*4*d-36*4*d^2-16*4*d^3 -> [10]
[1+4*a,2+4*b,0+4*c,3+4*d]: failure constant=-18, vgcd=4
[3+4*a,2+4*b,0+4*c,3+4*d]: unknown 2*4+27*4*a+36*4*a^2+16*4*a^3+12*4*b+24*4*b^2+16*4*b^3+16*4*c^3-27*4*d-36*4*d^2-16*4*d^3 -> [11]
[1+4*a,0+4*b,2+4*c,3+4*d]: failure constant=-18, vgcd=4
[3+4*a,0+4*b,2+4*c,3+4*d]: failure transposition of [11] {0/0+4*c,0/2+4*b,0/3+4*a,3/3+4*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[1+4*a,2+4*b,2+4*c,3+4*d]: failure constant=-10, vgcd=4
[3+4*a,2+4*b,2+4*c,3+4*d]: unknown 4*4+27*4*a+36*4*a^2+16*4*a^3+12*4*b+24*4*b^2+16*4*b^3+12*4*c+24*4*c^2+16*4*c^3-27*4*d-36*4*d^2-16*4*d^3 -> [12]

expanding queue[3]: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 6*c + 12*c^2 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 = 0 modulo [2,2,2,2] *4
[1+4*a,1+4*b,1+4*c,1+4*d]: failure constant=2, vgcd=4
[3+4*a,1+4*b,1+4*c,1+4*d]: unknown 7*4+27*4*a+36*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3+3*4*c+12*4*c^2+16*4*c^3-3*4*d-12*4*d^2-16*4*d^3 -> [13]
[1+4*a,3+4*b,1+4*c,1+4*d]: failure transposition of [13] {0/1+4*b,0/1+4*c,0/3+4*a,3/1+4*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,1+4*c,1+4*d]: failure constant=54, vgcd=4
[1+4*a,1+4*b,3+4*c,1+4*d]: failure transposition of [13] {0/1+4*b,0/1+4*c,0/3+4*a,3/1+4*d} by 1+4*b|1+4*a 1+4*c|1+4*b 3+4*a|3+4*c
[3+4*a,1+4*b,3+4*c,1+4*d]: failure constant=54, vgcd=4
[1+4*a,3+4*b,3+4*c,1+4*d]: failure constant=54, vgcd=4
[3+4*a,3+4*b,3+4*c,1+4*d]: unknown 20*4+27*4*a+36*4*a^2+16*4*a^3+27*4*b+36*4*b^2+16*4*b^3+27*4*c+36*4*c^2+16*4*c^3-3*4*d-12*4*d^2-16*4*d^3 -> [14]
[1+4*a,1+4*b,1+4*c,3+4*d]: unknown -6*4+3*4*a+12*4*a^2+16*4*a^3+3*4*b+12*4*b^2+16*4*b^3+3*4*c+12*4*c^2+16*4*c^3-27*4*d-36*4*d^2-16*4*d^3 -> [15]
[3+4*a,1+4*b,1+4*c,3+4*d]: failure constant=2, vgcd=4
[1+4*a,3+4*b,1+4*c,3+4*d]: failure constant=2, vgcd=4
[3+4*a,3+4*b,1+4*c,3+4*d]: unknown 7*4+27*4*a+36*4*a^2+16*4*a^3+27*4*b+36*4*b^2+16*4*b^3+3*4*c+12*4*c^2+16*4*c^3-27*4*d-36*4*d^2-16*4*d^3 -> [16]
[1+4*a,1+4*b,3+4*c,3+4*d]: failure constant=2, vgcd=4
[3+4*a,1+4*b,3+4*c,3+4*d]: failure transposition of [16] {0/1+4*c,0/3+4*a,0/3+4*b,3/3+4*d} by 1+4*c|1+4*b 3+4*b|3+4*c
[1+4*a,3+4*b,3+4*c,3+4*d]: failure transposition of [16] {0/1+4*c,0/3+4*a,0/3+4*b,3/3+4*d} by 1+4*c|1+4*a 3+4*a|3+4*b 3+4*b|3+4*c
[3+4*a,3+4*b,3+4*c,3+4*d]: failure constant=54, vgcd=4

expanding queue[4]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 64*c^3 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,1+8*b,0+8*c,0+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,0+8*c,0+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+64*8*c^3-64*8*d^3 -> [17]
[3+8*a,5+8*b,0+8*c,0+8*d]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+64*8*c^3-64*8*d^3 -> [18]
[7+8*a,5+8*b,0+8*c,0+8*d]: failure constant=468, vgcd=8
[3+8*a,1+8*b,4+8*c,0+8*d]: failure constant=92, vgcd=8
[7+8*a,1+8*b,4+8*c,0+8*d]: unknown 51*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-64*8*d^3 -> [19]
[3+8*a,5+8*b,4+8*c,0+8*d]: unknown 27*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-64*8*d^3 -> [20]
[7+8*a,5+8*b,4+8*c,0+8*d]: failure constant=532, vgcd=8
[3+8*a,1+8*b,0+8*c,4+8*d]: failure constant=-36, vgcd=8
[7+8*a,1+8*b,0+8*c,4+8*d]: unknown 35*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [21]
[3+8*a,5+8*b,0+8*c,4+8*d]: unknown 11*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [22]
[7+8*a,5+8*b,0+8*c,4+8*d]: failure constant=404, vgcd=8
[3+8*a,1+8*b,4+8*c,4+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,4+8*c,4+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [23]
[3+8*a,5+8*b,4+8*c,4+8*d]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [24]
[7+8*a,5+8*b,4+8*c,4+8*d]: failure constant=468, vgcd=8

expanding queue[5]: 36 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 48*c + 96*c^2 + 64*c^3 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,1+8*b,2+8*c,0+8*d]: failure constant=36, vgcd=8
[7+8*a,1+8*b,2+8*c,0+8*d]: unknown 44*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-64*8*d^3 -> [25]
[3+8*a,5+8*b,2+8*c,0+8*d]: unknown 20*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-64*8*d^3 -> [26]
[7+8*a,5+8*b,2+8*c,0+8*d]: failure constant=476, vgcd=8
[3+8*a,1+8*b,6+8*c,0+8*d]: failure constant=244, vgcd=8
[7+8*a,1+8*b,6+8*c,0+8*d]: unknown 70*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-64*8*d^3 -> [27]
[3+8*a,5+8*b,6+8*c,0+8*d]: unknown 46*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-64*8*d^3 -> [28]
[7+8*a,5+8*b,6+8*c,0+8*d]: failure constant=684, vgcd=8
[3+8*a,1+8*b,2+8*c,4+8*d]: failure constant=-28, vgcd=8
[7+8*a,1+8*b,2+8*c,4+8*d]: unknown 36*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [29]
[3+8*a,5+8*b,2+8*c,4+8*d]: unknown 12*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [30]
[7+8*a,5+8*b,2+8*c,4+8*d]: failure constant=412, vgcd=8
[3+8*a,1+8*b,6+8*c,4+8*d]: failure constant=180, vgcd=8
[7+8*a,1+8*b,6+8*c,4+8*d]: unknown 62*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [31]
[3+8*a,5+8*b,6+8*c,4+8*d]: unknown 38*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-48*8*d-96*8*d^2-64*8*d^3 -> [32]
[7+8*a,5+8*b,6+8*c,4+8*d]: failure constant=620, vgcd=8

expanding queue[6]: 20 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 64*c^3 - 48*d - 96*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,1+8*b,0+8*c,2+8*d]: failure constant=20, vgcd=8
[7+8*a,1+8*b,0+8*c,2+8*d]: unknown 42*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [33]
[3+8*a,5+8*b,0+8*c,2+8*d]: unknown 18*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [34]
[7+8*a,5+8*b,0+8*c,2+8*d]: failure constant=460, vgcd=8
[3+8*a,1+8*b,4+8*c,2+8*d]: failure constant=84, vgcd=8
[7+8*a,1+8*b,4+8*c,2+8*d]: unknown 50*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [35]
[3+8*a,5+8*b,4+8*c,2+8*d]: unknown 26*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [36]
[7+8*a,5+8*b,4+8*c,2+8*d]: failure constant=524, vgcd=8
[3+8*a,1+8*b,0+8*c,6+8*d]: failure constant=-188, vgcd=8
[7+8*a,1+8*b,0+8*c,6+8*d]: unknown 16*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [37]
[3+8*a,5+8*b,0+8*c,6+8*d]: unknown -8*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [38]
[7+8*a,5+8*b,0+8*c,6+8*d]: failure constant=252, vgcd=8
[3+8*a,1+8*b,4+8*c,6+8*d]: failure constant=-124, vgcd=8
[7+8*a,1+8*b,4+8*c,6+8*d]: unknown 24*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [39]
[3+8*a,5+8*b,4+8*c,6+8*d]: success NONTRIVIAL 27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [40]
[7+8*a,5+8*b,4+8*c,6+8*d]: failure constant=316, vgcd=8

expanding queue[7]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 48*c + 96*c^2 + 64*c^3 - 48*d - 96*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,1+8*b,2+8*c,2+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,2+8*c,2+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [41]
[3+8*a,5+8*b,2+8*c,2+8*d]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [42]
[7+8*a,5+8*b,2+8*c,2+8*d]: failure constant=468, vgcd=8
[3+8*a,1+8*b,6+8*c,2+8*d]: failure constant=236, vgcd=8
[7+8*a,1+8*b,6+8*c,2+8*d]: unknown 69*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [43]
[3+8*a,5+8*b,6+8*c,2+8*d]: unknown 45*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-12*8*d-48*8*d^2-64*8*d^3 -> [44]
[7+8*a,5+8*b,6+8*c,2+8*d]: failure constant=676, vgcd=8
[3+8*a,1+8*b,2+8*c,6+8*d]: failure constant=-180, vgcd=8
[7+8*a,1+8*b,2+8*c,6+8*d]: unknown 17*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [45]
[3+8*a,5+8*b,2+8*c,6+8*d]: unknown -7*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [46]
[7+8*a,5+8*b,2+8*c,6+8*d]: failure constant=260, vgcd=8
[3+8*a,1+8*b,6+8*c,6+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,6+8*c,6+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [47]
[3+8*a,5+8*b,6+8*c,6+8*d]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-108*8*d-144*8*d^2-64*8*d^3 -> [48]
[7+8*a,5+8*b,6+8*c,6+8*d]: failure constant=468, vgcd=8

expanding queue[8]: 8 + 12*a + 48*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[1+8*a,2+8*b,0+8*c,1+8*d]: similiar to [8], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  1*8+3*8*a+24*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3
[5+8*a,2+8*b,0+8*c,1+8*d]: failure constant=132, vgcd=8
[1+8*a,6+8*b,0+8*c,1+8*d]: unknown 27*8+3*8*a+24*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [49]
[5+8*a,6+8*b,0+8*c,1+8*d]: failure constant=340, vgcd=8
[1+8*a,2+8*b,4+8*c,1+8*d]: unknown 9*8+3*8*a+24*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [50]
[5+8*a,2+8*b,4+8*c,1+8*d]: failure constant=196, vgcd=8
[1+8*a,6+8*b,4+8*c,1+8*d]: unknown 35*8+3*8*a+24*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [51]
[5+8*a,6+8*b,4+8*c,1+8*d]: failure constant=404, vgcd=8
[1+8*a,2+8*b,0+8*c,5+8*d]: failure constant=-116, vgcd=8
[5+8*a,2+8*b,0+8*c,5+8*d]: unknown 1*8+75*8*a+120*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [52]
[1+8*a,6+8*b,0+8*c,5+8*d]: failure constant=92, vgcd=8
[5+8*a,6+8*b,0+8*c,5+8*d]: unknown 27*8+75*8*a+120*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [53]
[1+8*a,2+8*b,4+8*c,5+8*d]: failure constant=-52, vgcd=8
[5+8*a,2+8*b,4+8*c,5+8*d]: unknown 9*8+75*8*a+120*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [54]
[1+8*a,6+8*b,4+8*c,5+8*d]: failure constant=156, vgcd=8
[5+8*a,6+8*b,4+8*c,5+8*d]: unknown 35*8+75*8*a+120*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [55]

expanding queue[9]: 16 + 12*a + 48*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 + 48*c + 96*c^2 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[1+8*a,2+8*b,2+8*c,1+8*d]: similiar to [9], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  2*8+3*8*a+24*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3
[5+8*a,2+8*b,2+8*c,1+8*d]: failure constant=140, vgcd=8
[1+8*a,6+8*b,2+8*c,1+8*d]: unknown 28*8+3*8*a+24*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [56]
[5+8*a,6+8*b,2+8*c,1+8*d]: failure constant=348, vgcd=8
[1+8*a,2+8*b,6+8*c,1+8*d]: failure transposition of [56] {0/1+8*a,0/2+8*c,0/6+8*b,3/1+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[5+8*a,2+8*b,6+8*c,1+8*d]: failure constant=348, vgcd=8
[1+8*a,6+8*b,6+8*c,1+8*d]: unknown 54*8+3*8*a+24*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [57]
[5+8*a,6+8*b,6+8*c,1+8*d]: failure constant=556, vgcd=8
[1+8*a,2+8*b,2+8*c,5+8*d]: failure constant=-108, vgcd=8
[5+8*a,2+8*b,2+8*c,5+8*d]: unknown 2*8+75*8*a+120*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [58]
[1+8*a,6+8*b,2+8*c,5+8*d]: failure constant=100, vgcd=8
[5+8*a,6+8*b,2+8*c,5+8*d]: unknown 28*8+75*8*a+120*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [59]
[1+8*a,2+8*b,6+8*c,5+8*d]: failure constant=100, vgcd=8
[5+8*a,2+8*b,6+8*c,5+8*d]: failure transposition of [59] {0/2+8*c,0/5+8*a,0/6+8*b,3/5+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[1+8*a,6+8*b,6+8*c,5+8*d]: failure constant=308, vgcd=8
[5+8*a,6+8*b,6+8*c,5+8*d]: unknown 54*8+75*8*a+120*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [60]

expanding queue[10]: 108*a + 144*a^2 + 64*a^3 + 64*b^3 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,0+8*b,0+8*c,3+8*d]: similiar to [10], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  27*8*a+72*8*a^2+64*8*a^3+64*8*b^3+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3
[7+8*a,0+8*b,0+8*c,3+8*d]: failure constant=316, vgcd=8
[3+8*a,4+8*b,0+8*c,3+8*d]: unknown 8*8+27*8*a+72*8*a^2+64*8*a^3+48*8*b+96*8*b^2+64*8*b^3+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [61]
[7+8*a,4+8*b,0+8*c,3+8*d]: failure constant=380, vgcd=8
[3+8*a,0+8*b,4+8*c,3+8*d]: failure transposition of [61] {0/0+8*c,0/3+8*a,0/4+8*b,3/3+8*d} by 0+8*c|0+8*b 4+8*b|4+8*c
[7+8*a,0+8*b,4+8*c,3+8*d]: failure constant=380, vgcd=8
[3+8*a,4+8*b,4+8*c,3+8*d]: unknown 16*8+27*8*a+72*8*a^2+64*8*a^3+48*8*b+96*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [62]
[7+8*a,4+8*b,4+8*c,3+8*d]: failure constant=444, vgcd=8
[3+8*a,0+8*b,0+8*c,7+8*d]: failure constant=-316, vgcd=8
[7+8*a,0+8*b,0+8*c,7+8*d]: success NONTRIVIAL 147*8*a+168*8*a^2+64*8*a^3+64*8*b^3+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [63]
[3+8*a,4+8*b,0+8*c,7+8*d]: failure constant=-252, vgcd=8
[7+8*a,4+8*b,0+8*c,7+8*d]: unknown 8*8+147*8*a+168*8*a^2+64*8*a^3+48*8*b+96*8*b^2+64*8*b^3+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [64]
[3+8*a,0+8*b,4+8*c,7+8*d]: failure constant=-252, vgcd=8
[7+8*a,0+8*b,4+8*c,7+8*d]: failure transposition of [64] {0/0+8*c,0/4+8*b,0/7+8*a,3/7+8*d} by 0+8*c|0+8*b 4+8*b|4+8*c
[3+8*a,4+8*b,4+8*c,7+8*d]: failure constant=-188, vgcd=8
[7+8*a,4+8*b,4+8*c,7+8*d]: unknown 16*8+147*8*a+168*8*a^2+64*8*a^3+48*8*b+96*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [65]

expanding queue[11]: 8 + 108*a + 144*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,2+8*b,0+8*c,3+8*d]: similiar to [11], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  1*8+27*8*a+72*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3
[7+8*a,2+8*b,0+8*c,3+8*d]: failure constant=324, vgcd=8
[3+8*a,6+8*b,0+8*c,3+8*d]: unknown 27*8+27*8*a+72*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [66]
[7+8*a,6+8*b,0+8*c,3+8*d]: failure constant=532, vgcd=8
[3+8*a,2+8*b,4+8*c,3+8*d]: unknown 9*8+27*8*a+72*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [67]
[7+8*a,2+8*b,4+8*c,3+8*d]: failure constant=388, vgcd=8
[3+8*a,6+8*b,4+8*c,3+8*d]: unknown 35*8+27*8*a+72*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [68]
[7+8*a,6+8*b,4+8*c,3+8*d]: failure constant=596, vgcd=8
[3+8*a,2+8*b,0+8*c,7+8*d]: failure constant=-308, vgcd=8
[7+8*a,2+8*b,0+8*c,7+8*d]: unknown 1*8+147*8*a+168*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [69]
[3+8*a,6+8*b,0+8*c,7+8*d]: failure constant=-100, vgcd=8
[7+8*a,6+8*b,0+8*c,7+8*d]: unknown 27*8+147*8*a+168*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [70]
[3+8*a,2+8*b,4+8*c,7+8*d]: failure constant=-244, vgcd=8
[7+8*a,2+8*b,4+8*c,7+8*d]: unknown 9*8+147*8*a+168*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [71]
[3+8*a,6+8*b,4+8*c,7+8*d]: failure constant=-36, vgcd=8
[7+8*a,6+8*b,4+8*c,7+8*d]: unknown 35*8+147*8*a+168*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+48*8*c+96*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [72]

expanding queue[12]: 16 + 108*a + 144*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 + 48*c + 96*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,2+8*b,2+8*c,3+8*d]: similiar to [12], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  2*8+27*8*a+72*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3
[7+8*a,2+8*b,2+8*c,3+8*d]: failure constant=332, vgcd=8
[3+8*a,6+8*b,2+8*c,3+8*d]: unknown 28*8+27*8*a+72*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [73]
[7+8*a,6+8*b,2+8*c,3+8*d]: failure constant=540, vgcd=8
[3+8*a,2+8*b,6+8*c,3+8*d]: failure transposition of [73] {0/2+8*c,0/3+8*a,0/6+8*b,3/3+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[7+8*a,2+8*b,6+8*c,3+8*d]: failure constant=540, vgcd=8
[3+8*a,6+8*b,6+8*c,3+8*d]: unknown 54*8+27*8*a+72*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [74]
[7+8*a,6+8*b,6+8*c,3+8*d]: failure constant=748, vgcd=8
[3+8*a,2+8*b,2+8*c,7+8*d]: failure constant=-300, vgcd=8
[7+8*a,2+8*b,2+8*c,7+8*d]: unknown 2*8+147*8*a+168*8*a^2+64*8*a^3+12*8*b+48*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [75]
[3+8*a,6+8*b,2+8*c,7+8*d]: failure constant=-92, vgcd=8
[7+8*a,6+8*b,2+8*c,7+8*d]: unknown 28*8+147*8*a+168*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+12*8*c+48*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [76]
[3+8*a,2+8*b,6+8*c,7+8*d]: failure constant=-92, vgcd=8
[7+8*a,2+8*b,6+8*c,7+8*d]: failure transposition of [76] {0/2+8*c,0/6+8*b,0/7+8*a,3/7+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[3+8*a,6+8*b,6+8*c,7+8*d]: failure constant=116, vgcd=8
[7+8*a,6+8*b,6+8*c,7+8*d]: unknown 54*8+147*8*a+168*8*a^2+64*8*a^3+108*8*b+144*8*b^2+64*8*b^3+108*8*c+144*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [77]

expanding queue[13]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,1+8*b,1+8*c,1+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,1+8*c,1+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [78]
[3+8*a,5+8*b,1+8*c,1+8*d]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [79]
[7+8*a,5+8*b,1+8*c,1+8*d]: failure constant=468, vgcd=8
[3+8*a,1+8*b,5+8*c,1+8*d]: failure transposition of [79] {0/1+8*c,0/3+8*a,0/5+8*b,3/1+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[7+8*a,1+8*b,5+8*c,1+8*d]: failure constant=468, vgcd=8
[3+8*a,5+8*b,5+8*c,1+8*d]: failure constant=276, vgcd=8
[7+8*a,5+8*b,5+8*c,1+8*d]: unknown 74*8+147*8*a+168*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+75*8*c+120*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [80]
[3+8*a,1+8*b,1+8*c,5+8*d]: unknown -12*8+27*8*a+72*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [81]
[7+8*a,1+8*b,1+8*c,5+8*d]: failure constant=220, vgcd=8
[3+8*a,5+8*b,1+8*c,5+8*d]: failure constant=28, vgcd=8
[7+8*a,5+8*b,1+8*c,5+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [82]
[3+8*a,1+8*b,5+8*c,5+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,5+8*c,5+8*d]: failure transposition of [82] {0/1+8*c,0/5+8*b,0/7+8*a,3/5+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[3+8*a,5+8*b,5+8*c,5+8*d]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+75*8*c+120*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [83]
[7+8*a,5+8*b,5+8*c,5+8*d]: failure constant=468, vgcd=8

expanding queue[14]: 80 + 108*a + 144*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 + 108*c + 144*c^2 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,3+8*b,3+8*c,1+8*d]: similiar to [14], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  10*8+27*8*a+72*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3+27*8*c+72*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3
[7+8*a,3+8*b,3+8*c,1+8*d]: failure constant=396, vgcd=8
[3+8*a,7+8*b,3+8*c,1+8*d]: failure constant=396, vgcd=8
[7+8*a,7+8*b,3+8*c,1+8*d]: unknown 89*8+147*8*a+168*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3+27*8*c+72*8*c^2+64*8*c^3-3*8*d-24*8*d^2-64*8*d^3 -> [84]
[3+8*a,3+8*b,7+8*c,1+8*d]: failure constant=396, vgcd=8
[7+8*a,3+8*b,7+8*c,1+8*d]: failure transposition of [84] {0/3+8*c,0/7+8*a,0/7+8*b,3/1+8*d} by 3+8*c|3+8*b 7+8*b|7+8*c
[3+8*a,7+8*b,7+8*c,1+8*d]: failure transposition of [84] {0/3+8*c,0/7+8*a,0/7+8*b,3/1+8*d} by 3+8*c|3+8*a 7+8*a|7+8*b 7+8*b|7+8*c
[7+8*a,7+8*b,7+8*c,1+8*d]: failure constant=1028, vgcd=8
[3+8*a,3+8*b,3+8*c,5+8*d]: failure constant=-44, vgcd=8
[7+8*a,3+8*b,3+8*c,5+8*d]: unknown 34*8+147*8*a+168*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3+27*8*c+72*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [85]
[3+8*a,7+8*b,3+8*c,5+8*d]: failure transposition of [85] {0/3+8*b,0/3+8*c,0/7+8*a,3/5+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[7+8*a,7+8*b,3+8*c,5+8*d]: failure constant=588, vgcd=8
[3+8*a,3+8*b,7+8*c,5+8*d]: failure transposition of [85] {0/3+8*b,0/3+8*c,0/7+8*a,3/5+8*d} by 3+8*b|3+8*a 3+8*c|3+8*b 7+8*a|7+8*c
[7+8*a,3+8*b,7+8*c,5+8*d]: failure constant=588, vgcd=8
[3+8*a,7+8*b,7+8*c,5+8*d]: failure constant=588, vgcd=8
[7+8*a,7+8*b,7+8*c,5+8*d]: unknown 113*8+147*8*a+168*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3+147*8*c+168*8*c^2+64*8*c^3-75*8*d-120*8*d^2-64*8*d^3 -> [86]

expanding queue[15]:  - 24 + 12*a + 48*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[1+8*a,1+8*b,1+8*c,3+8*d]: similiar to [15], affine map: {a=(2*a),b=(2*b),c=(2*c),d=(2*d)}  -3*8+3*8*a+24*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3
[5+8*a,1+8*b,1+8*c,3+8*d]: failure constant=100, vgcd=8
[1+8*a,5+8*b,1+8*c,3+8*d]: failure constant=100, vgcd=8
[5+8*a,5+8*b,1+8*c,3+8*d]: unknown 28*8+75*8*a+120*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [87]
[1+8*a,1+8*b,5+8*c,3+8*d]: failure constant=100, vgcd=8
[5+8*a,1+8*b,5+8*c,3+8*d]: failure transposition of [87] {0/1+8*c,0/5+8*a,0/5+8*b,3/3+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[1+8*a,5+8*b,5+8*c,3+8*d]: failure transposition of [87] {0/1+8*c,0/5+8*a,0/5+8*b,3/3+8*d} by 1+8*c|1+8*a 5+8*a|5+8*b 5+8*b|5+8*c
[5+8*a,5+8*b,5+8*c,3+8*d]: failure constant=348, vgcd=8
[1+8*a,1+8*b,1+8*c,7+8*d]: failure constant=-340, vgcd=8
[5+8*a,1+8*b,1+8*c,7+8*d]: unknown -27*8+75*8*a+120*8*a^2+64*8*a^3+3*8*b+24*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [88]
[1+8*a,5+8*b,1+8*c,7+8*d]: failure transposition of [88] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 5+8*a|5+8*b
[5+8*a,5+8*b,1+8*c,7+8*d]: failure constant=-92, vgcd=8
[1+8*a,1+8*b,5+8*c,7+8*d]: failure transposition of [88] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 1+8*c|1+8*b 5+8*a|5+8*c
[5+8*a,1+8*b,5+8*c,7+8*d]: failure constant=-92, vgcd=8
[1+8*a,5+8*b,5+8*c,7+8*d]: failure constant=-92, vgcd=8
[5+8*a,5+8*b,5+8*c,7+8*d]: unknown 4*8+75*8*a+120*8*a^2+64*8*a^3+75*8*b+120*8*b^2+64*8*b^3+75*8*c+120*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [89]

expanding queue[16]: 28 + 108*a + 144*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,3+8*b,1+8*c,3+8*d]: failure constant=28, vgcd=8
[7+8*a,3+8*b,1+8*c,3+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [90]
[3+8*a,7+8*b,1+8*c,3+8*d]: failure transposition of [90] {0/1+8*c,0/3+8*b,0/7+8*a,3/3+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[7+8*a,7+8*b,1+8*c,3+8*d]: failure constant=660, vgcd=8
[3+8*a,3+8*b,5+8*c,3+8*d]: unknown 19*8+27*8*a+72*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3+75*8*c+120*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [91]
[7+8*a,3+8*b,5+8*c,3+8*d]: failure constant=468, vgcd=8
[3+8*a,7+8*b,5+8*c,3+8*d]: failure constant=468, vgcd=8
[7+8*a,7+8*b,5+8*c,3+8*d]: unknown 98*8+147*8*a+168*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3+75*8*c+120*8*c^2+64*8*c^3-27*8*d-72*8*d^2-64*8*d^3 -> [92]
[3+8*a,3+8*b,1+8*c,7+8*d]: unknown -36*8+27*8*a+72*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [93]
[7+8*a,3+8*b,1+8*c,7+8*d]: failure constant=28, vgcd=8
[3+8*a,7+8*b,1+8*c,7+8*d]: failure constant=28, vgcd=8
[7+8*a,7+8*b,1+8*c,7+8*d]: unknown 43*8+147*8*a+168*8*a^2+64*8*a^3+147*8*b+168*8*b^2+64*8*b^3+3*8*c+24*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [94]
[3+8*a,3+8*b,5+8*c,7+8*d]: failure constant=-164, vgcd=8
[7+8*a,3+8*b,5+8*c,7+8*d]: unknown 19*8+147*8*a+168*8*a^2+64*8*a^3+27*8*b+72*8*b^2+64*8*b^3+75*8*c+120*8*c^2+64*8*c^3-147*8*d-168*8*d^2-64*8*d^3 -> [95]
[3+8*a,7+8*b,5+8*c,7+8*d]: failure transposition of [95] {0/3+8*b,0/5+8*c,0/7+8*a,3/7+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[7+8*a,7+8*b,5+8*c,7+8*d]: failure constant=468, vgcd=8
