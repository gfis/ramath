Expanding for base=2, reasons+features=base,evenexp,similiar,evenexp,similiar
exponentGCDs=[1,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1: 56*x + 71*x^2 + 16*x^3 + x^4 - y^2 meter=[2,2] *2
solution [0,0],trivial(3)
[0+2*x,0+2*y]:	unknown -> [1] 112*x+284*x^2+128*x^3+16*x^4-4*y^2
[1+2*x,0+2*y]:	unknown -> [2] 144+500*x+500*x^2+160*x^3+16*x^4-4*y^2
----------------
expanding queue[1]^0: 112*x + 284*x^2 + 128*x^3 + 16*x^4 - 4*y^2 meter=[2,2] *4
solution [0,0],trivial(3)
[0+4*x,0+4*y]:	unknown -> [3] 224*x+1136*x^2+1024*x^3+256*x^4-16*y^2
expanding queue[2]^0: 144 + 500*x + 500*x^2 + 160*x^3 + 16*x^4 - 4*y^2 meter=[2,2] *4
[1+4*x,0+4*y]:	unknown -> [4] 144+1000*x+2000*x^2+1280*x^3+256*x^4-16*y^2
[3+4*x,0+4*y]:	unknown -> [5] 1320+4088*x+4304*x^2+1792*x^3+256*x^4-16*y^2
----------------
expanding queue[3]^1: 224*x + 1136*x^2 + 1024*x^3 + 256*x^4 - 16*y^2 meter=[2,2] *8
solution [0,0],trivial(3)
[0+8*x,0+8*y]:	unknown -> [6] 448*x+4544*x^2+8192*x^3+4096*x^4-64*y^2
[4+8*x,4+8*y]:	unknown -> [7] 2624+13184*x+22976*x^2+16384*x^3+4096*x^4-64*y-64*y^2
expanding queue[4]^2: 144 + 1000*x + 2000*x^2 + 1280*x^3 + 256*x^4 - 16*y^2 meter=[2,1] *8
[1+8*x,0+4*y]:	unknown -> [8] 144+2000*x+8000*x^2+10240*x^3+4096*x^4-16*y^2
expanding queue[5]^2: 1320 + 4088*x + 4304*x^2 + 1792*x^3 + 256*x^4 - 16*y^2 meter=[2,1] *8
[7+8*x,0+4*y]:	unknown -> [9] 11760+38192*x+44864*x^2+22528*x^3+4096*x^4-16*y^2
----------------
expanding queue[6]^3: 448*x + 4544*x^2 + 8192*x^3 + 4096*x^4 - 64*y^2 meter=[2,2] *16
solution [0,0],trivial(3)
[0+16*x,0+16*y]:	unknown -> [10] 896*x+18176*x^2+65536*x^3+65536*x^4-256*y^2
[8+16*x,0+16*y]:	unknown -> [11] 17280+100992*x+214784*x^2+196608*x^3+65536*x^4-256*y^2
expanding queue[7]^3: 2624 + 13184*x + 22976*x^2 + 16384*x^3 + 4096*x^4 - 64*y - 64*y^2 meter=[2,2] *16
[12+16*x,4+16*y]:	unknown -> [12] 59264+249344*x+386816*x^2+262144*x^3+65536*x^4-128*y-256*y^2
[12+16*x,12+16*y]:	negative-1 [12] by {y=>-y-1}
expanding queue[8]^4: 144 + 2000*x + 8000*x^2 + 10240*x^3 + 4096*x^4 - 16*y^2 meter=[2,2] *16
[9+16*x,0+8*y]:	unknown -> [13] 24480+130208*x+253184*x^2+212992*x^3+65536*x^4-64*y^2
[1+16*x,4+8*y]:	unknown -> [14] 128+4000*x+32000*x^2+81920*x^3+65536*x^4-64*y-64*y^2
expanding queue[9]^5: 11760 + 38192*x + 44864*x^2 + 22528*x^3 + 4096*x^4 - 16*y^2 meter=[2,2] *16
[15+16*x,0+8*y]:	unknown -> [15] 121440+423776*x+548096*x^2+311296*x^3+65536*x^4-64*y^2
[7+16*x,4+8*y]:	unknown -> [16] 11744+76384*x+179456*x^2+180224*x^3+65536*x^4-64*y-64*y^2
----------------
expanding queue[10]^6: 896*x + 18176*x^2 + 65536*x^3 + 65536*x^4 - 256*y^2 meter=[2,2] *32
solution [0,0],trivial(3)
[0+32*x,0+32*y]:	unknown -> [17] 1792*x+72704*x^2+524288*x^3+1048576*x^4-1024*y^2
[0+32*x,16+32*y]:	unknown -> [18] -256+1792*x+72704*x^2+524288*x^3+1048576*x^4-1024*y-1024*y^2
expanding queue[11]^6: 17280 + 100992*x + 214784*x^2 + 196608*x^3 + 65536*x^4 - 256*y^2 meter=[2,2] *32
[24+32*x,0+32*y]:	unknown -> [19] 595200+2765056*x+4791296*x^2+3670016*x^3+1048576*x^4-1024*y^2
[24+32*x,16+32*y]:	unknown -> [20] 594944+2765056*x+4791296*x^2+3670016*x^3+1048576*x^4-1024*y-1024*y^2
expanding queue[12]^7: 59264 + 249344*x + 386816*x^2 + 262144*x^3 + 65536*x^4 - 128*y - 256*y^2 meter=[2,2] *32
[12+32*x,20+32*y]:	unknown -> [21] 58880+498688*x+1547264*x^2+2097152*x^3+1048576*x^4-1280*y-1024*y^2
[28+32*x,20+32*y]:	unknown -> [22] 1022720+4143104*x+6265856*x^2+4194304*x^3+1048576*x^4-1280*y-1024*y^2
expanding queue[13]^8: 24480 + 130208*x + 253184*x^2 + 212992*x^3 + 65536*x^4 - 64*y^2 meter=[2,1] *32
[25+32*x,0+8*y]:	unknown -> [23] 686400+3075392*x+5141504*x^2+3801088*x^3+1048576*x^4-64*y^2
expanding queue[14]^8: 128 + 4000*x + 32000*x^2 + 81920*x^3 + 65536*x^4 - 64*y - 64*y^2 meter=[2,1] *32
[1+32*x,4+8*y]:	unknown -> [24] 128+8000*x+128000*x^2+655360*x^3+1048576*x^4-64*y-64*y^2
expanding queue[15]^9: 121440 + 423776*x + 548096*x^2 + 311296*x^3 + 65536*x^4 - 64*y^2 meter=[2,1] *32
[31+32*x,0+8*y]:	unknown -> [25] 1470144+5432000*x+7500800*x^2+4587520*x^3+1048576*x^4-64*y^2
expanding queue[16]^9: 11744 + 76384*x + 179456*x^2 + 180224*x^3 + 65536*x^4 - 64*y - 64*y^2 meter=[2,1] *32
[23+32*x,4+8*y]:	unknown -> [26] 513344+2476224*x+4453376*x^2+3538944*x^3+1048576*x^4-64*y-64*y^2
----------------
expanding queue[17]^10: 1792*x + 72704*x^2 + 524288*x^3 + 1048576*x^4 - 1024*y^2 meter=[2,2] *64
solution [0,0],trivial(3)
[0+64*x,0+64*y]:	unknown -> [27] 3584*x+290816*x^2+4194304*x^3+16777216*x^4-4096*y^2
[0+64*x,32+64*y]:	unknown -> [28] -1024+3584*x+290816*x^2+4194304*x^3+16777216*x^4-4096*y-4096*y^2
expanding queue[18]^10:  - 256 + 1792*x + 72704*x^2 + 524288*x^3 + 1048576*x^4 - 1024*y - 1024*y^2 meter=[2,2] *64
[32+64*x,16+64*y]:	unknown -> [29] 1647104+11828736*x+31748096*x^2+37748736*x^3+16777216*x^4-2048*y-4096*y^2
[32+64*x,48+64*y]:	negative-1 [29] by {y=>-y-1}
expanding queue[19]^11: 595200 + 2765056*x + 4791296*x^2 + 3670016*x^3 + 1048576*x^4 - 1024*y^2 meter=[2,2] *64
[56+64*x,0+64*y]:	unknown -> [30] 12870144+55104000*x+88371200*x^2+62914560*x^3+16777216*x^4-4096*y^2
[56+64*x,32+64*y]:	unknown -> [31] 12869120+55104000*x+88371200*x^2+62914560*x^3+16777216*x^4-4096*y-4096*y^2
expanding queue[20]^11: 594944 + 2765056*x + 4791296*x^2 + 3670016*x^3 + 1048576*x^4 - 1024*y - 1024*y^2 meter=[2,2] *64
[24+64*x,16+64*y]:	unknown -> [32] 594944+5530112*x+19165184*x^2+29360128*x^3+16777216*x^4-2048*y-4096*y^2
[24+64*x,48+64*y]:	negative-1 [32] by {y=>-y-1}
expanding queue[21]^12: 58880 + 498688*x + 1547264*x^2 + 2097152*x^3 + 1048576*x^4 - 1280*y - 1024*y^2 meter=[2,2] *64
[12+64*x,20+64*y]:	unknown -> [33] 58880+997376*x+6189056*x^2+16777216*x^3+16777216*x^4-2560*y-4096*y^2
[44+64*x,20+64*y]:	unknown -> [34] 5250560+28157952*x+56520704*x^2+50331648*x^3+16777216*x^4-2560*y-4096*y^2
expanding queue[22]^12: 1022720 + 4143104*x + 6265856*x^2 + 4194304*x^3 + 1048576*x^4 - 1280*y - 1024*y^2 meter=[2,2] *64
[28+64*x,52+64*y]:	unknown -> [35] 1020416+8286208*x+25063424*x^2+33554432*x^3+16777216*x^4-6656*y-4096*y^2
[60+64*x,52+64*y]:	unknown -> [36] 16672256+66904064*x+100560896*x^2+67108864*x^3+16777216*x^4-6656*y-4096*y^2
expanding queue[23]^13: 686400 + 3075392*x + 5141504*x^2 + 3801088*x^3 + 1048576*x^4 - 64*y^2 meter=[2,2] *64
[57+64*x,0+16*y]:	unknown -> [37] 13752960+57911936*x+91344896*x^2+63963136*x^3+16777216*x^4-256*y^2
[25+64*x,8+16*y]:	unknown -> [38] 686336+6150784*x+20566016*x^2+30408704*x^3+16777216*x^4-256*y-256*y^2
expanding queue[24]^14: 128 + 8000*x + 128000*x^2 + 655360*x^3 + 1048576*x^4 - 64*y - 64*y^2 meter=[2,2] *64
[1+64*x,4+16*y]:	unknown -> [39] 128+16000*x+512000*x^2+5242880*x^3+16777216*x^4-128*y-256*y^2
[1+64*x,12+16*y]:	negative-1 [39] by {y=>-y-1}
expanding queue[25]^15: 1470144 + 5432000*x + 7500800*x^2 + 4587520*x^3 + 1048576*x^4 - 64*y^2 meter=[2,2] *64
[63+64*x,0+16*y]:	unknown -> [40] 20039040+76780928*x+110219264*x^2+70254592*x^3+16777216*x^4-256*y^2
[31+64*x,8+16*y]:	unknown -> [41] 1470080+10864000*x+30003200*x^2+36700160*x^3+16777216*x^4-256*y-256*y^2
expanding queue[26]^16: 513344 + 2476224*x + 4453376*x^2 + 3538944*x^3 + 1048576*x^4 - 64*y - 64*y^2 meter=[2,2] *64
[55+64*x,4+16*y]:	unknown -> [42] 12030464+52388224*x+85446656*x^2+61865984*x^3+16777216*x^4-128*y-256*y^2
[55+64*x,12+16*y]:	negative-1 [42] by {y=>-y-1}
----------------
expanding queue[27]^17: 3584*x + 290816*x^2 + 4194304*x^3 + 16777216*x^4 - 4096*y^2 meter=[2,2] *128
solution [0,0],trivial(3)
[0+128*x,0+128*y]:	unknown -> [43] 7168*x+1163264*x^2+33554432*x^3+268435456*x^4-16384*y^2
[0+128*x,64+128*y]:	unknown -> [44] -4096+7168*x+1163264*x^2+33554432*x^3+268435456*x^4-16384*y-16384*y^2
expanding queue[28]^17:  - 1024 + 3584*x + 290816*x^2 + 4194304*x^3 + 16777216*x^4 - 4096*y - 4096*y^2 meter=[2,2] *128
[0+128*x,32+128*y]:	unknown -> [45] -1024+7168*x+1163264*x^2+33554432*x^3+268435456*x^4-8192*y-16384*y^2
[0+128*x,96+128*y]:	negative-1 [45] by {y=>-y-1}
expanding queue[29]^18: 1647104 + 11828736*x + 31748096*x^2 + 37748736*x^3 + 16777216*x^4 - 2048*y - 4096*y^2 meter=[2,2] *128
[96+128*x,16+128*y]:	unknown -> [46] 99749888+511360000*x+982630400*x^2+838860800*x^3+268435456*x^4-4096*y-16384*y^2
[96+128*x,80+128*y]:	unknown -> [47] 99743744+511360000*x+982630400*x^2+838860800*x^3+268435456*x^4-20480*y-16384*y^2
expanding queue[30]^19: 12870144 + 55104000*x + 88371200*x^2 + 62914560*x^3 + 16777216*x^4 - 4096*y^2 meter=[2,2] *128
[120+128*x,0+128*y]:	unknown -> [48] 236037120+975397888*x+1511112704*x^2+1040187392*x^3+268435456*x^4-16384*y^2
[120+128*x,64+128*y]:	unknown -> [49] 236033024+975397888*x+1511112704*x^2+1040187392*x^3+268435456*x^4-16384*y-16384*y^2
expanding queue[31]^19: 12869120 + 55104000*x + 88371200*x^2 + 62914560*x^3 + 16777216*x^4 - 4096*y - 4096*y^2 meter=[2,2] *128
[120+128*x,32+128*y]:	unknown -> [50] 236036096+975397888*x+1511112704*x^2+1040187392*x^3+268435456*x^4-8192*y-16384*y^2
[120+128*x,96+128*y]:	negative-1 [50] by {y=>-y-1}
expanding queue[32]^20: 594944 + 5530112*x + 19165184*x^2 + 29360128*x^3 + 16777216*x^4 - 2048*y - 4096*y^2 meter=[2,2] *128
[24+128*x,16+128*y]:	unknown -> [51] 594944+11060224*x+76660736*x^2+234881024*x^3+268435456*x^4-4096*y-16384*y^2
[24+128*x,80+128*y]:	unknown -> [52] 588800+11060224*x+76660736*x^2+234881024*x^3+268435456*x^4-20480*y-16384*y^2
expanding queue[33]^21: 58880 + 997376*x + 6189056*x^2 + 16777216*x^3 + 16777216*x^4 - 2560*y - 4096*y^2 meter=[2,2] *128
[12+128*x,84+128*y]:	unknown -> [53] 52224+1994752*x+24756224*x^2+134217728*x^3+268435456*x^4-21504*y-16384*y^2
[76+128*x,84+128*y]:	unknown -> [54] 40793088+261632000*x+628736000*x^2+671088640*x^3+268435456*x^4-21504*y-16384*y^2
expanding queue[34]^21: 5250560 + 28157952*x + 56520704*x^2 + 50331648*x^3 + 16777216*x^4 - 2560*y - 4096*y^2 meter=[2,2] *128
[44+128*x,84+128*y]:	unknown -> [55] 5243904+56315904*x+226082816*x^2+402653184*x^3+268435456*x^4-21504*y-16384*y^2
[108+128*x,84+128*y]:	unknown -> [56] 157031424+718606336*x+1232715776*x^2+939524096*x^3+268435456*x^4-21504*y-16384*y^2
expanding queue[35]^22: 1020416 + 8286208*x + 25063424*x^2 + 33554432*x^3 + 16777216*x^4 - 6656*y - 4096*y^2 meter=[2,2] *128
[28+128*x,116+128*y]:	unknown -> [57] 1009664+16572416*x+100253696*x^2+268435456*x^3+268435456*x^4-29696*y-16384*y^2
[92+128*x,116+128*y]:	unknown -> [58] 84690944+452370432*x+905560064*x^2+805306368*x^3+268435456*x^4-29696*y-16384*y^2
expanding queue[36]^22: 16672256 + 66904064*x + 100560896*x^2 + 67108864*x^3 + 16777216*x^4 - 6656*y - 4096*y^2 meter=[2,2] *128
[60+128*x,116+128*y]:	unknown -> [59] 16661504+133808128*x+402243584*x^2+536870912*x^3+268435456*x^4-29696*y-16384*y^2
[124+128*x,116+128*y]:	unknown -> [60] 268012544+1072922624*x+1610203136*x^2+1073741824*x^3+268435456*x^4-29696*y-16384*y^2
expanding queue[37]^23: 13752960 + 57911936*x + 91344896*x^2 + 63963136*x^3 + 16777216*x^4 - 256*y^2 meter=[2,1] *128
[121+128*x,0+16*y]:	unknown -> [61] 243750144+999200000*x+1535590400*x^2+1048576000*x^3+268435456*x^4-256*y^2
expanding queue[38]^23: 686336 + 6150784*x + 20566016*x^2 + 30408704*x^3 + 16777216*x^4 - 256*y - 256*y^2 meter=[2,1] *128
[25+128*x,8+16*y]:	unknown -> [62] 686336+12301568*x+82264064*x^2+243269632*x^3+268435456*x^4-256*y-256*y^2
expanding queue[39]^24: 128 + 16000*x + 512000*x^2 + 5242880*x^3 + 16777216*x^4 - 128*y - 256*y^2 meter=[2,2] *128
[65+128*x,4+32*y]:	unknown -> [63] 22548224+167755008*x+467615744*x^2+578813952*x^3+268435456*x^4-256*y-1024*y^2
[1+128*x,20+32*y]:	unknown -> [64] -256+32000*x+2048000*x^2+41943040*x^3+268435456*x^4-1280*y-1024*y^2
expanding queue[40]^25: 20039040 + 76780928*x + 110219264*x^2 + 70254592*x^3 + 16777216*x^4 - 256*y^2 meter=[2,1] *128
[127+128*x,0+16*y]:	unknown -> [65] 294071040+1150184192*x+1686585344*x^2+1098907648*x^3+268435456*x^4-256*y^2
expanding queue[41]^25: 1470080 + 10864000*x + 30003200*x^2 + 36700160*x^3 + 16777216*x^4 - 256*y - 256*y^2 meter=[2,1] *128
[95+128*x,8+16*y]:	unknown -> [66] 95814656+496159488*x+963067904*x^2+830472192*x^3+268435456*x^4-256*y-256*y^2
expanding queue[42]^26: 12030464 + 52388224*x + 85446656*x^2 + 61865984*x^3 + 16777216*x^4 - 128*y - 256*y^2 meter=[2,2] *128
[55+128*x,4+32*y]:	unknown -> [67] 12030464+104776448*x+341786624*x^2+494927872*x^3+268435456*x^4-256*y-1024*y^2
[119+128*x,20+32*y]:	unknown -> [68] 228508160+951976704*x+1486831616*x^2+1031798784*x^3+268435456*x^4-1280*y-1024*y^2
Maximum level 6 reached at [69]: 56*x + 71*x^2 + 16*x^3 + x^4 - y^2
