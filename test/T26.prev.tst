Expanding for base=2, transposables={{x},{y}}, reasons+features=base,transpose,same,similiar,grow
----------------
expanding queue[0]^-1: 56*x + 71*x^2 + 16*x^3 + x^4 - y^2 = 0 meter=[2,2] *2
[0+2*x,0+2*y]: grown from [0]*2,4,8,16,4 112*x+284*x^2+128*x^3+16*x^4-4*y^2=0 success [0,0],trivial(3) 
[1+2*x,0+2*y]: unknown 144+500*x+500*x^2+160*x^3+16*x^4-4*y^2=0 -> [1]
----------------
expanding queue[1]^0: 144 + 500*x + 500*x^2 + 160*x^3 + 16*x^4 - 4*y^2 = 0 meter=[2,2] *4
[1+4*x,0+4*y]: grown from [1]*1,2,4,8,16,4 144+1000*x+2000*x^2+1280*x^3+256*x^4-16*y^2=0
[3+4*x,0+4*y]: unknown 1320+4088*x+4304*x^2+1792*x^3+256*x^4-16*y^2=0 -> [2]
----------------
expanding queue[2]^1: 1320 + 4088*x + 4304*x^2 + 1792*x^3 + 256*x^4 - 16*y^2 = 0 meter=[2,1] *8
[7+8*x,0+4*y]: unknown 11760+38192*x+44864*x^2+22528*x^3+4096*x^4-16*y^2=0 -> [3]
----------------
expanding queue[3]^2: 11760 + 38192*x + 44864*x^2 + 22528*x^3 + 4096*x^4 - 16*y^2 = 0 meter=[2,2] *16
[15+16*x,0+8*y]: unknown 121440+423776*x+548096*x^2+311296*x^3+65536*x^4-64*y^2=0 -> [4]
[7+16*x,4+8*y]: unknown 11744+76384*x+179456*x^2+180224*x^3+65536*x^4-64*y-64*y^2=0 -> [5]
----------------
expanding queue[4]^3: 121440 + 423776*x + 548096*x^2 + 311296*x^3 + 65536*x^4 - 64*y^2 = 0 meter=[2,1] *32
[31+32*x,0+8*y]: unknown 1470144+5432000*x+7500800*x^2+4587520*x^3+1048576*x^4-64*y^2=0 -> [6]
expanding queue[5]^3: 11744 + 76384*x + 179456*x^2 + 180224*x^3 + 65536*x^4 - 64*y - 64*y^2 = 0 meter=[2,1] *32
[23+32*x,4+8*y]: unknown 513344+2476224*x+4453376*x^2+3538944*x^3+1048576*x^4-64*y-64*y^2=0 -> [7]
----------------
expanding queue[6]^4: 1470144 + 5432000*x + 7500800*x^2 + 4587520*x^3 + 1048576*x^4 - 64*y^2 = 0 meter=[2,2] *64
[63+64*x,0+16*y]: unknown 20039040+76780928*x+110219264*x^2+70254592*x^3+16777216*x^4-256*y^2=0 -> [8]
[31+64*x,8+16*y]: unknown 1470080+10864000*x+30003200*x^2+36700160*x^3+16777216*x^4-256*y-256*y^2=0 -> [9]
expanding queue[7]^5: 513344 + 2476224*x + 4453376*x^2 + 3538944*x^3 + 1048576*x^4 - 64*y - 64*y^2 = 0 meter=[2,2] *64
[55+64*x,4+16*y]: unknown 12030464+52388224*x+85446656*x^2+61865984*x^3+16777216*x^4-128*y-256*y^2=0 -> [10]
[55+64*x,12+16*y]: unknown 12030336+52388224*x+85446656*x^2+61865984*x^3+16777216*x^4-384*y-256*y^2=0 -> [11]
----------------
expanding queue[8]^6: 20039040 + 76780928*x + 110219264*x^2 + 70254592*x^3 + 16777216*x^4 - 256*y^2 = 0 meter=[2,1] *128
[127+128*x,0+16*y]: unknown 294071040+1150184192*x+1686585344*x^2+1098907648*x^3+268435456*x^4-256*y^2=0 -> [12]
expanding queue[9]^6: 1470080 + 10864000*x + 30003200*x^2 + 36700160*x^3 + 16777216*x^4 - 256*y - 256*y^2 = 0 meter=[2,1] *128
[95+128*x,8+16*y]: unknown 95814656+496159488*x+963067904*x^2+830472192*x^3+268435456*x^4-256*y-256*y^2=0 -> [13]
expanding queue[10]^7: 12030464 + 52388224*x + 85446656*x^2 + 61865984*x^3 + 16777216*x^4 - 128*y - 256*y^2 = 0 meter=[2,2] *128
[55+128*x,4+32*y]: grown from [10]*1,2,4,8,16,2,4 12030464+104776448*x+341786624*x^2+494927872*x^3+268435456*x^4-256*y-1024*y^2=0
[119+128*x,20+32*y]: unknown 228508160+951976704*x+1486831616*x^2+1031798784*x^3+268435456*x^4-1280*y-1024*y^2=0 -> [14]
expanding queue[11]^7: 12030336 + 52388224*x + 85446656*x^2 + 61865984*x^3 + 16777216*x^4 - 384*y - 256*y^2 = 0 meter=[2,2] *128
[119+128*x,12+32*y]: unknown 228508416+951976704*x+1486831616*x^2+1031798784*x^3+268435456*x^4-768*y-1024*y^2=0 -> [15]
[55+128*x,28+32*y]: unknown 12029696+104776448*x+341786624*x^2+494927872*x^3+268435456*x^4-1792*y-1024*y^2=0 -> [16]
----------------
expanding queue[12]^8: 294071040 + 1150184192*x + 1686585344*x^2 + 1098907648*x^3 + 268435456*x^4 - 256*y^2 = 0 meter=[2,2] *256
[255+256*x,0+32*y]: unknown 4498183680+17787639296*x+26375684096*x^2+17381195776*x^3+4294967296*x^4-1024*y^2=0 -> [17]
[127+256*x,16+32*y]: unknown 294070784+2300368384*x+6746341376*x^2+8791261184*x^3+4294967296*x^4-1024*y-1024*y^2=0 -> [18]
expanding queue[13]^9: 95814656 + 496159488*x + 963067904*x^2 + 830472192*x^3 + 268435456*x^4 - 256*y - 256*y^2 = 0 meter=[2,2] *256
[95+256*x,8+32*y]: grown from [13]*1,2,4,8,16,2,4 95814656+992318976*x+3852271616*x^2+6643777536*x^3+4294967296*x^4-512*y-1024*y^2=0
[95+256*x,24+32*y]: unknown 95814144+992318976*x+3852271616*x^2+6643777536*x^3+4294967296*x^4-1536*y-1024*y^2=0 -> [19]
expanding queue[14]^10: 228508160 + 951976704*x + 1486831616*x^2 + 1031798784*x^3 + 268435456*x^4 - 1280*y - 1024*y^2 = 0 meter=[2,2] *256
[119+256*x,20+64*y]: grown from [14]*1,2,4,8,16,2,4 228508160+1903953408*x+5947326464*x^2+8254390272*x^3+4294967296*x^4-2560*y-4096*y^2=0
[247+256*x,52+64*y]: unknown 3967548416+16189556224*x+24771362816*x^2+16844324864*x^3+4294967296*x^4-6656*y-4096*y^2=0 -> [20]
expanding queue[15]^11: 228508416 + 951976704*x + 1486831616*x^2 + 1031798784*x^3 + 268435456*x^4 - 768*y - 1024*y^2 = 0 meter=[2,2] *256
[247+256*x,12+64*y]: unknown 3967550976+16189556224*x+24771362816*x^2+16844324864*x^3+4294967296*x^4-1536*y-4096*y^2=0 -> [21]
[119+256*x,44+64*y]: unknown 228506624+1903953408*x+5947326464*x^2+8254390272*x^3+4294967296*x^4-5632*y-4096*y^2=0 -> [22]
expanding queue[16]^11: 12029696 + 104776448*x + 341786624*x^2 + 494927872*x^3 + 268435456*x^4 - 1792*y - 1024*y^2 = 0 meter=[2,2] *256
[183+256*x,28+64*y]: unknown 1221956096+6693750272*x+13748731904*x^2+12549357568*x^3+4294967296*x^4-3584*y-4096*y^2=0 -> [23]
[55+256*x,60+64*y]: unknown 12026880+209552896*x+1367146496*x^2+3959422976*x^3+4294967296*x^4-7680*y-4096*y^2=0 -> [24]
----------------
expanding queue[17]^12: 4498183680 + 17787639296*x + 26375684096*x^2 + 17381195776*x^3 + 4294967296*x^4 - 1024*y^2 = 0 meter=[2,1] *512
[511+512*x,0+32*y]: unknown 70337670144+279724928000*x+417156300800*x^2+276488519680*x^3+68719476736*x^4-1024*y^2=0 -> [25]
expanding queue[18]^12: 294070784 + 2300368384*x + 6746341376*x^2 + 8791261184*x^3 + 4294967296*x^4 - 1024*y - 1024*y^2 = 0 meter=[2,1] *512
[383+512*x,16+32*y]: unknown 22427009024+118693407744*x+235559714816*x^2+207769042944*x^3+68719476736*x^4-1024*y-1024*y^2=0 -> [26]
expanding queue[19]^13: 95814144 + 992318976*x + 3852271616*x^2 + 6643777536*x^3 + 4294967296*x^4 - 1536*y - 1024*y^2 = 0 meter=[2,2] *512
[351+512*x,24+64*y]: unknown 15879149568+91616128000*x+198213632000*x^2+190589173760*x^3+68719476736*x^4-3072*y-4096*y^2=0 -> [27]
[95+512*x,56+64*y]: unknown 95811584+1984637952*x+15409086464*x^2+53150220288*x^3+68719476736*x^4-7168*y-4096*y^2=0 -> [28]
expanding queue[20]^14: 3967548416 + 16189556224*x + 24771362816*x^2 + 16844324864*x^3 + 4294967296*x^4 - 6656*y - 4096*y^2 = 0 meter=[2,2] *512
[247+512*x,52+128*y]: grown from [20]*1,2,4,8,16,2,4 3967548416+32379112448*x+99085451264*x^2+134754598912*x^3+68719476736*x^4-13312*y-16384*y^2=0
[503+512*x,116+128*y]: unknown 66067748864+266890251264*x+404296564736*x^2+272193552384*x^3+68719476736*x^4-29696*y-16384*y^2=0 -> [29]
expanding queue[21]^15: 3967550976 + 16189556224*x + 24771362816*x^2 + 16844324864*x^3 + 4294967296*x^4 - 1536*y - 4096*y^2 = 0 meter=[2,2] *512
[503+512*x,12+128*y]: unknown 66067762176+266890251264*x+404296564736*x^2+272193552384*x^3+68719476736*x^4-3072*y-16384*y^2=0 -> [30]
[247+512*x,76+128*y]: unknown 3967545344+32379112448*x+99085451264*x^2+134754598912*x^3+68719476736*x^4-19456*y-16384*y^2=0 -> [31]
expanding queue[22]^15: 228506624 + 1903953408*x + 5947326464*x^2 + 8254390272*x^3 + 4294967296*x^4 - 5632*y - 4096*y^2 = 0 meter=[2,2] *512
[119+512*x,44+128*y]: grown from [22]*1,2,4,8,16,2,4 228506624+3807906816*x+23789305856*x^2+66035122176*x^3+68719476736*x^4-11264*y-16384*y^2=0
[375+512*x,108+128*y]: unknown 20629134336+111483292672*x+225921204224*x^2+203474075648*x^3+68719476736*x^4-27648*y-16384*y^2=0 -> [32]
expanding queue[23]^16: 1221956096 + 6693750272*x + 13748731904*x^2 + 12549357568*x^3 + 4294967296*x^4 - 3584*y - 4096*y^2 = 0 meter=[2,2] *512
[439+512*x,28+128*y]: unknown 38508763136+178038311936*x+308666433536*x^2+237833814016*x^3+68719476736*x^4-7168*y-16384*y^2=0 -> [33]
[183+512*x,92+128*y]: unknown 1221948416+13387500544*x+54994927616*x^2+100394860544*x^3+68719476736*x^4-23552*y-16384*y^2=0 -> [34]
expanding queue[24]^16: 12026880 + 209552896*x + 1367146496*x^2 + 3959422976*x^3 + 4294967296*x^4 - 7680*y - 4096*y^2 = 0 meter=[2,2] *512
[55+512*x,60+128*y]: grown from [24]*1,2,4,8,16,2,4 12026880+419105792*x+5468585984*x^2+31675383808*x^3+68719476736*x^4-15360*y-16384*y^2=0
[311+512*x,124+128*y]: unknown 9843104768+64003968000*x+156060876800*x^2+169114337280*x^3+68719476736*x^4-31744*y-16384*y^2=0 -> [35]
Maximum level 8 reached, queue size = 36
