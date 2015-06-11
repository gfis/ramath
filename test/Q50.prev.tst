Expanding for base=2, transposables=[0,0,0], reasons+features=base,transpose,same,similiar,grow

expanding queue[0]: 1 + x^2 - 2*x*y + y^2 - 2*x*z - 2*y*z - 2*x*y*z + z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,0+2*y,0+2*z]: failure constant=2, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=2, vgcd=4
[1+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,0+2*y,1+2*z]: failure constant=2, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,1+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,1+2*z]: unknown -4-8*x+4*x^2-8*y-16*x*y+4*y^2-8*z-16*x*z-16*y*z-16*x*y*z+4*z^2=0 -> [1]

expanding queue[1]:  - 4 - 8*x + 4*x^2 - 8*y - 16*x*y + 4*y^2 - 8*z - 16*x*z - 16*y*z - 16*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,1+4*z]: failure constant=-4, vgcd=16
[3+4*x,1+4*y,1+4*z]: failure constant=-8, vgcd=16
[1+4*x,3+4*y,1+4*z]: failure constant=-8, vgcd=16
[3+4*x,3+4*y,1+4*z]: failure constant=-28, vgcd=16
[1+4*x,1+4*y,3+4*z]: failure constant=-8, vgcd=16
[3+4*x,1+4*y,3+4*z]: failure constant=-28, vgcd=16
[1+4*x,3+4*y,3+4*z]: failure constant=-28, vgcd=16
[3+4*x,3+4*y,3+4*z]: unknown -80-96*x+16*x^2-96*y-128*x*y+16*y^2-96*z-128*x*z-128*y*z-128*x*y*z+16*z^2=0 -> [2]

expanding queue[2]:  - 80 - 96*x + 16*x^2 - 96*y - 128*x*y + 16*y^2 - 96*z - 128*x*z - 128*y*z - 128*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[3+8*x,3+8*y,3+8*z]: failure constant=-80, vgcd=64
[7+8*x,3+8*y,3+8*z]: failure constant=-160, vgcd=64
[3+8*x,7+8*y,3+8*z]: failure constant=-160, vgcd=64
[7+8*x,7+8*y,3+8*z]: failure constant=-368, vgcd=64
[3+8*x,3+8*y,7+8*z]: failure constant=-160, vgcd=64
[7+8*x,3+8*y,7+8*z]: failure constant=-368, vgcd=64
[3+8*x,7+8*y,7+8*z]: failure constant=-368, vgcd=64
[7+8*x,7+8*y,7+8*z]: unknown -832-896*x+64*x^2-896*y-1024*x*y+64*y^2-896*z-1024*x*z-1024*y*z-1024*x*y*z+64*z^2=0 -> [3]

expanding queue[3]:  - 832 - 896*x + 64*x^2 - 896*y - 1024*x*y + 64*y^2 - 896*z - 1024*x*z - 1024*y*z - 1024*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,7+16*z]: failure constant=-832, vgcd=256
[15+16*x,7+16*y,7+16*z]: failure constant=-1664, vgcd=256
[7+16*x,15+16*y,7+16*z]: failure constant=-1664, vgcd=256
[15+16*x,15+16*y,7+16*z]: failure constant=-3520, vgcd=256
[7+16*x,7+16*y,15+16*z]: failure constant=-1664, vgcd=256
[15+16*x,7+16*y,15+16*z]: failure constant=-3520, vgcd=256
[7+16*x,15+16*y,15+16*z]: failure constant=-3520, vgcd=256
[15+16*x,15+16*y,15+16*z]: unknown -7424-7680*x+256*x^2-7680*y-8192*x*y+256*y^2-7680*z-8192*x*z-8192*y*z-8192*x*y*z+256*z^2=0 -> [4]

expanding queue[4]:  - 7424 - 7680*x + 256*x^2 - 7680*y - 8192*x*y + 256*y^2 - 7680*z - 8192*x*z - 8192*y*z - 8192*x*y*z + 256*z^2 = 0 modulo [2,2,2] *32
[15+32*x,15+32*y,15+32*z]: failure constant=-7424, vgcd=1024
[31+32*x,15+32*y,15+32*z]: failure constant=-14848, vgcd=1024
[15+32*x,31+32*y,15+32*z]: failure constant=-14848, vgcd=1024
[31+32*x,31+32*y,15+32*z]: failure constant=-30464, vgcd=1024
[15+32*x,15+32*y,31+32*z]: failure constant=-14848, vgcd=1024
[31+32*x,15+32*y,31+32*z]: failure constant=-30464, vgcd=1024
[15+32*x,31+32*y,31+32*z]: failure constant=-30464, vgcd=1024
[31+32*x,31+32*y,31+32*z]: unknown -62464-63488*x+1024*x^2-63488*y-65536*x*y+1024*y^2-63488*z-65536*x*z-65536*y*z-65536*x*y*z+1024*z^2=0 -> [5]

expanding queue[5]:  - 62464 - 63488*x + 1024*x^2 - 63488*y - 65536*x*y + 1024*y^2 - 63488*z - 65536*x*z - 65536*y*z - 65536*x*y*z + 1024*z^2 = 0 modulo [2,2,2] *64
[31+64*x,31+64*y,31+64*z]: failure constant=-62464, vgcd=4096
[63+64*x,31+64*y,31+64*z]: failure constant=-124928, vgcd=4096
[31+64*x,63+64*y,31+64*z]: failure constant=-124928, vgcd=4096
[63+64*x,63+64*y,31+64*z]: failure constant=-252928, vgcd=4096
[31+64*x,31+64*y,63+64*z]: failure constant=-124928, vgcd=4096
[63+64*x,31+64*y,63+64*z]: failure constant=-252928, vgcd=4096
[31+64*x,63+64*y,63+64*z]: failure constant=-252928, vgcd=4096
[63+64*x,63+64*y,63+64*z]: unknown -512000-516096*x+4096*x^2-516096*y-524288*x*y+4096*y^2-516096*z-524288*x*z-524288*y*z-524288*x*y*z+4096*z^2=0 -> [6]

expanding queue[6]:  - 512000 - 516096*x + 4096*x^2 - 516096*y - 524288*x*y + 4096*y^2 - 516096*z - 524288*x*z - 524288*y*z - 524288*x*y*z + 4096*z^2 = 0 modulo [2,2,2] *128
[63+128*x,63+128*y,63+128*z]: failure constant=-512000, vgcd=16384
[127+128*x,63+128*y,63+128*z]: failure constant=-1024000, vgcd=16384
[63+128*x,127+128*y,63+128*z]: failure constant=-1024000, vgcd=16384
[127+128*x,127+128*y,63+128*z]: failure constant=-2060288, vgcd=16384
[63+128*x,63+128*y,127+128*z]: failure constant=-1024000, vgcd=16384
[127+128*x,63+128*y,127+128*z]: failure constant=-2060288, vgcd=16384
[63+128*x,127+128*y,127+128*z]: failure constant=-2060288, vgcd=16384
[127+128*x,127+128*y,127+128*z]: unknown -4145152-4161536*x+16384*x^2-4161536*y-4194304*x*y+16384*y^2-4161536*z-4194304*x*z-4194304*y*z-4194304*x*y*z+16384*z^2=0 -> [7]

expanding queue[7]:  - 4145152 - 4161536*x + 16384*x^2 - 4161536*y - 4194304*x*y + 16384*y^2 - 4161536*z - 4194304*x*z - 4194304*y*z - 4194304*x*y*z + 16384*z^2 = 0 modulo [2,2,2] *256
[127+256*x,127+256*y,127+256*z]: failure constant=-4145152, vgcd=65536
[255+256*x,127+256*y,127+256*z]: failure constant=-8290304, vgcd=65536
[127+256*x,255+256*y,127+256*z]: failure constant=-8290304, vgcd=65536
[255+256*x,255+256*y,127+256*z]: failure constant=-16629760, vgcd=65536
[127+256*x,127+256*y,255+256*z]: failure constant=-8290304, vgcd=65536
[255+256*x,127+256*y,255+256*z]: failure constant=-16629760, vgcd=65536
[127+256*x,255+256*y,255+256*z]: failure constant=-16629760, vgcd=65536
[255+256*x,255+256*y,255+256*z]: unknown -33357824-33423360*x+65536*x^2-33423360*y-33554432*x*y+65536*y^2-33423360*z-33554432*x*z-33554432*y*z-33554432*x*y*z+65536*z^2=0 -> [8]
Maximum level 7 reached, queue size = 9
