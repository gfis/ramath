Expanding for base=2, transposables={{x},{y}}, reasons+features=base,transpose,similiar,evenexp, exponentParities=[1,0]
----------------
expanding queue[0]^-1: 56*x + 71*x^2 + 16*x^3 + x^4 - y^2 meter=[2,2] *2
solution [0,0],trivial(3)
[0+2*x,0+2*y]: unknown 112*x+284*x^2+128*x^3+16*x^4-4*y^2 -> [1]
[1+2*x,0+2*y]: unknown 144+500*x+500*x^2+160*x^3+16*x^4-4*y^2 -> [2]
----------------
expanding queue[1]^0: 112*x + 284*x^2 + 128*x^3 + 16*x^4 - 4*y^2 meter=[2,2] *4
solution [0,0],trivial(3)
[0+4*x,0+4*y]: unknown 224*x+1136*x^2+1024*x^3+256*x^4-16*y^2 -> [3]
expanding queue[2]^0: 144 + 500*x + 500*x^2 + 160*x^3 + 16*x^4 - 4*y^2 meter=[2,2] *4
[1+4*x,0+4*y]: unknown 144+1000*x+2000*x^2+1280*x^3+256*x^4-16*y^2 -> [4]
[3+4*x,0+4*y]: unknown 1320+4088*x+4304*x^2+1792*x^3+256*x^4-16*y^2 -> [5]
----------------
expanding queue[3]^1: 224*x + 1136*x^2 + 1024*x^3 + 256*x^4 - 16*y^2 meter=[2,2] *8
solution [0,0],trivial(3)
[0+8*x,0+8*y]: unknown 448*x+4544*x^2+8192*x^3+4096*x^4-64*y^2 -> [6]
[4+8*x,4+8*y]: unknown 2624+13184*x+22976*x^2+16384*x^3+4096*x^4-64*y-64*y^2 -> [7]
expanding queue[4]^2: 144 + 1000*x + 2000*x^2 + 1280*x^3 + 256*x^4 - 16*y^2 meter=[2,1] *8
[1+8*x,0+4*y]: unknown 144+2000*x+8000*x^2+10240*x^3+4096*x^4-16*y^2 -> [8]
expanding queue[5]^2: 1320 + 4088*x + 4304*x^2 + 1792*x^3 + 256*x^4 - 16*y^2 meter=[2,1] *8
[7+8*x,0+4*y]: unknown 11760+38192*x+44864*x^2+22528*x^3+4096*x^4-16*y^2 -> [9]
----------------
expanding queue[6]^3: 448*x + 4544*x^2 + 8192*x^3 + 4096*x^4 - 64*y^2 meter=[2,2] *16
solution [0,0],trivial(3)
[0+16*x,0+16*y]: unknown 896*x+18176*x^2+65536*x^3+65536*x^4-256*y^2 -> [10]
[8+16*x,0+16*y]: unknown 17280+100992*x+214784*x^2+196608*x^3+65536*x^4-256*y^2 -> [11]
expanding queue[7]^3: 2624 + 13184*x + 22976*x^2 + 16384*x^3 + 4096*x^4 - 64*y - 64*y^2 meter=[2,2] *16
[12+16*x,4+16*y]: unknown 59264+249344*x+386816*x^2+262144*x^3+65536*x^4-128*y-256*y^2 -> [12]
[12+16*x,12+16*y]: unknown 59136+249344*x+386816*x^2+262144*x^3+65536*x^4-384*y-256*y^2 -> [13]
expanding queue[8]^4: 144 + 2000*x + 8000*x^2 + 10240*x^3 + 4096*x^4 - 16*y^2 meter=[2,2] *16
[9+16*x,0+8*y]: unknown 24480+130208*x+253184*x^2+212992*x^3+65536*x^4-64*y^2 -> [14]
[1+16*x,4+8*y]: unknown 128+4000*x+32000*x^2+81920*x^3+65536*x^4-64*y-64*y^2 -> [15]
expanding queue[9]^5: 11760 + 38192*x + 44864*x^2 + 22528*x^3 + 4096*x^4 - 16*y^2 meter=[2,2] *16
[15+16*x,0+8*y]: unknown 121440+423776*x+548096*x^2+311296*x^3+65536*x^4-64*y^2 -> [16]
[7+16*x,4+8*y]: unknown 11744+76384*x+179456*x^2+180224*x^3+65536*x^4-64*y-64*y^2 -> [17]
----------------
expanding queue[10]^6: 896*x + 18176*x^2 + 65536*x^3 + 65536*x^4 - 256*y^2 meter=[2,2] *32
solution [0,0],trivial(3)
[0+32*x,0+32*y]: unknown 1792*x+72704*x^2+524288*x^3+1048576*x^4-1024*y^2 -> [18]
[0+32*x,16+32*y]: unknown -256+1792*x+72704*x^2+524288*x^3+1048576*x^4-1024*y-1024*y^2 -> [19]
expanding queue[11]^6: 17280 + 100992*x + 214784*x^2 + 196608*x^3 + 65536*x^4 - 256*y^2 meter=[2,2] *32
[24+32*x,0+32*y]: unknown 595200+2765056*x+4791296*x^2+3670016*x^3+1048576*x^4-1024*y^2 -> [20]
[24+32*x,16+32*y]: unknown 594944+2765056*x+4791296*x^2+3670016*x^3+1048576*x^4-1024*y-1024*y^2 -> [21]
expanding queue[12]^7: 59264 + 249344*x + 386816*x^2 + 262144*x^3 + 65536*x^4 - 128*y - 256*y^2 meter=[2,2] *32
[12+32*x,20+32*y]: unknown 58880+498688*x+1547264*x^2+2097152*x^3+1048576*x^4-1280*y-1024*y^2 -> [22]
[28+32*x,20+32*y]: unknown 1022720+4143104*x+6265856*x^2+4194304*x^3+1048576*x^4-1280*y-1024*y^2 -> [23]
expanding queue[13]^7: 59136 + 249344*x + 386816*x^2 + 262144*x^3 + 65536*x^4 - 384*y - 256*y^2 meter=[2,2] *32
[12+32*x,12+32*y]: unknown 59136+498688*x+1547264*x^2+2097152*x^3+1048576*x^4-768*y-1024*y^2 -> [24]
[28+32*x,12+32*y]: unknown 1022976+4143104*x+6265856*x^2+4194304*x^3+1048576*x^4-768*y-1024*y^2 -> [25]
expanding queue[14]^8: 24480 + 130208*x + 253184*x^2 + 212992*x^3 + 65536*x^4 - 64*y^2 meter=[2,1] *32
[25+32*x,0+8*y]: unknown 686400+3075392*x+5141504*x^2+3801088*x^3+1048576*x^4-64*y^2 -> [26]
expanding queue[15]^8: 128 + 4000*x + 32000*x^2 + 81920*x^3 + 65536*x^4 - 64*y - 64*y^2 meter=[2,1] *32
[1+32*x,4+8*y]: unknown 128+8000*x+128000*x^2+655360*x^3+1048576*x^4-64*y-64*y^2 -> [27]
expanding queue[16]^9: 121440 + 423776*x + 548096*x^2 + 311296*x^3 + 65536*x^4 - 64*y^2 meter=[2,1] *32
[31+32*x,0+8*y]: unknown 1470144+5432000*x+7500800*x^2+4587520*x^3+1048576*x^4-64*y^2 -> [28]
expanding queue[17]^9: 11744 + 76384*x + 179456*x^2 + 180224*x^3 + 65536*x^4 - 64*y - 64*y^2 meter=[2,1] *32
[23+32*x,4+8*y]: unknown 513344+2476224*x+4453376*x^2+3538944*x^3+1048576*x^4-64*y-64*y^2 -> [29]
----------------
expanding queue[18]^10: 1792*x + 72704*x^2 + 524288*x^3 + 1048576*x^4 - 1024*y^2 meter=[2,2] *64
solution [0,0],trivial(3)
[0+64*x,0+64*y]: unknown 3584*x+290816*x^2+4194304*x^3+16777216*x^4-4096*y^2 -> [30]
[0+64*x,32+64*y]: unknown -1024+3584*x+290816*x^2+4194304*x^3+16777216*x^4-4096*y-4096*y^2 -> [31]
expanding queue[19]^10:  - 256 + 1792*x + 72704*x^2 + 524288*x^3 + 1048576*x^4 - 1024*y - 1024*y^2 meter=[2,2] *64
[32+64*x,16+64*y]: unknown 1647104+11828736*x+31748096*x^2+37748736*x^3+16777216*x^4-2048*y-4096*y^2 -> [32]
[32+64*x,48+64*y]: unknown 1645056+11828736*x+31748096*x^2+37748736*x^3+16777216*x^4-6144*y-4096*y^2 -> [33]
expanding queue[20]^11: 595200 + 2765056*x + 4791296*x^2 + 3670016*x^3 + 1048576*x^4 - 1024*y^2 meter=[2,2] *64
[56+64*x,0+64*y]: unknown 12870144+55104000*x+88371200*x^2+62914560*x^3+16777216*x^4-4096*y^2 -> [34]
[56+64*x,32+64*y]: unknown 12869120+55104000*x+88371200*x^2+62914560*x^3+16777216*x^4-4096*y-4096*y^2 -> [35]
expanding queue[21]^11: 594944 + 2765056*x + 4791296*x^2 + 3670016*x^3 + 1048576*x^4 - 1024*y - 1024*y^2 meter=[2,2] *64
[24+64*x,16+64*y]: unknown 594944+5530112*x+19165184*x^2+29360128*x^3+16777216*x^4-2048*y-4096*y^2 -> [36]
[24+64*x,48+64*y]: unknown 592896+5530112*x+19165184*x^2+29360128*x^3+16777216*x^4-6144*y-4096*y^2 -> [37]
expanding queue[22]^12: 58880 + 498688*x + 1547264*x^2 + 2097152*x^3 + 1048576*x^4 - 1280*y - 1024*y^2 meter=[2,2] *64
[12+64*x,20+64*y]: unknown 58880+997376*x+6189056*x^2+16777216*x^3+16777216*x^4-2560*y-4096*y^2 -> [38]
[44+64*x,20+64*y]: unknown 5250560+28157952*x+56520704*x^2+50331648*x^3+16777216*x^4-2560*y-4096*y^2 -> [39]
expanding queue[23]^12: 1022720 + 4143104*x + 6265856*x^2 + 4194304*x^3 + 1048576*x^4 - 1280*y - 1024*y^2 meter=[2,2] *64
[28+64*x,52+64*y]: unknown 1020416+8286208*x+25063424*x^2+33554432*x^3+16777216*x^4-6656*y-4096*y^2 -> [40]
[60+64*x,52+64*y]: unknown 16672256+66904064*x+100560896*x^2+67108864*x^3+16777216*x^4-6656*y-4096*y^2 -> [41]
expanding queue[24]^13: 59136 + 498688*x + 1547264*x^2 + 2097152*x^3 + 1048576*x^4 - 768*y - 1024*y^2 meter=[2,2] *64
[12+64*x,44+64*y]: unknown 57344+997376*x+6189056*x^2+16777216*x^3+16777216*x^4-5632*y-4096*y^2 -> [42]
[44+64*x,44+64*y]: unknown 5249024+28157952*x+56520704*x^2+50331648*x^3+16777216*x^4-5632*y-4096*y^2 -> [43]
expanding queue[25]^13: 1022976 + 4143104*x + 6265856*x^2 + 4194304*x^3 + 1048576*x^4 - 768*y - 1024*y^2 meter=[2,2] *64
[28+64*x,12+64*y]: unknown 1022976+8286208*x+25063424*x^2+33554432*x^3+16777216*x^4-1536*y-4096*y^2 -> [44]
[60+64*x,12+64*y]: unknown 16674816+66904064*x+100560896*x^2+67108864*x^3+16777216*x^4-1536*y-4096*y^2 -> [45]
expanding queue[26]^14: 686400 + 3075392*x + 5141504*x^2 + 3801088*x^3 + 1048576*x^4 - 64*y^2 meter=[2,2] *64
[57+64*x,0+16*y]: unknown 13752960+57911936*x+91344896*x^2+63963136*x^3+16777216*x^4-256*y^2 -> [46]
[25+64*x,8+16*y]: unknown 686336+6150784*x+20566016*x^2+30408704*x^3+16777216*x^4-256*y-256*y^2 -> [47]
expanding queue[27]^15: 128 + 8000*x + 128000*x^2 + 655360*x^3 + 1048576*x^4 - 64*y - 64*y^2 meter=[2,2] *64
[1+64*x,4+16*y]: unknown 128+16000*x+512000*x^2+5242880*x^3+16777216*x^4-128*y-256*y^2 -> [48]
[1+64*x,12+16*y]: unknown 16000*x+512000*x^2+5242880*x^3+16777216*x^4-384*y-256*y^2 -> [49]
expanding queue[28]^16: 1470144 + 5432000*x + 7500800*x^2 + 4587520*x^3 + 1048576*x^4 - 64*y^2 meter=[2,2] *64
[63+64*x,0+16*y]: unknown 20039040+76780928*x+110219264*x^2+70254592*x^3+16777216*x^4-256*y^2 -> [50]
[31+64*x,8+16*y]: unknown 1470080+10864000*x+30003200*x^2+36700160*x^3+16777216*x^4-256*y-256*y^2 -> [51]
expanding queue[29]^17: 513344 + 2476224*x + 4453376*x^2 + 3538944*x^3 + 1048576*x^4 - 64*y - 64*y^2 meter=[2,2] *64
[55+64*x,4+16*y]: unknown 12030464+52388224*x+85446656*x^2+61865984*x^3+16777216*x^4-128*y-256*y^2 -> [52]
[55+64*x,12+16*y]: unknown 12030336+52388224*x+85446656*x^2+61865984*x^3+16777216*x^4-384*y-256*y^2 -> [53]
----------------
expanding queue[30]^18: 3584*x + 290816*x^2 + 4194304*x^3 + 16777216*x^4 - 4096*y^2 meter=[2,2] *128
solution [0,0],trivial(3)
[0+128*x,0+128*y]: unknown 7168*x+1163264*x^2+33554432*x^3+268435456*x^4-16384*y^2 -> [54]
[0+128*x,64+128*y]: unknown -4096+7168*x+1163264*x^2+33554432*x^3+268435456*x^4-16384*y-16384*y^2 -> [55]
expanding queue[31]^18:  - 1024 + 3584*x + 290816*x^2 + 4194304*x^3 + 16777216*x^4 - 4096*y - 4096*y^2 meter=[2,2] *128
[0+128*x,32+128*y]: unknown -1024+7168*x+1163264*x^2+33554432*x^3+268435456*x^4-8192*y-16384*y^2 -> [56]
[0+128*x,96+128*y]: unknown -9216+7168*x+1163264*x^2+33554432*x^3+268435456*x^4-24576*y-16384*y^2 -> [57]
expanding queue[32]^19: 1647104 + 11828736*x + 31748096*x^2 + 37748736*x^3 + 16777216*x^4 - 2048*y - 4096*y^2 meter=[2,2] *128
[96+128*x,16+128*y]: unknown 99749888+511360000*x+982630400*x^2+838860800*x^3+268435456*x^4-4096*y-16384*y^2 -> [58]
[96+128*x,80+128*y]: unknown 99743744+511360000*x+982630400*x^2+838860800*x^3+268435456*x^4-20480*y-16384*y^2 -> [59]
expanding queue[33]^19: 1645056 + 11828736*x + 31748096*x^2 + 37748736*x^3 + 16777216*x^4 - 6144*y - 4096*y^2 meter=[2,2] *128
[96+128*x,48+128*y]: unknown 99747840+511360000*x+982630400*x^2+838860800*x^3+268435456*x^4-12288*y-16384*y^2 -> [60]
[96+128*x,112+128*y]: unknown 99737600+511360000*x+982630400*x^2+838860800*x^3+268435456*x^4-28672*y-16384*y^2 -> [61]
expanding queue[34]^20: 12870144 + 55104000*x + 88371200*x^2 + 62914560*x^3 + 16777216*x^4 - 4096*y^2 meter=[2,2] *128
[120+128*x,0+128*y]: unknown 236037120+975397888*x+1511112704*x^2+1040187392*x^3+268435456*x^4-16384*y^2 -> [62]
[120+128*x,64+128*y]: unknown 236033024+975397888*x+1511112704*x^2+1040187392*x^3+268435456*x^4-16384*y-16384*y^2 -> [63]
expanding queue[35]^20: 12869120 + 55104000*x + 88371200*x^2 + 62914560*x^3 + 16777216*x^4 - 4096*y - 4096*y^2 meter=[2,2] *128
[120+128*x,32+128*y]: unknown 236036096+975397888*x+1511112704*x^2+1040187392*x^3+268435456*x^4-8192*y-16384*y^2 -> [64]
[120+128*x,96+128*y]: unknown 236027904+975397888*x+1511112704*x^2+1040187392*x^3+268435456*x^4-24576*y-16384*y^2 -> [65]
expanding queue[36]^21: 594944 + 5530112*x + 19165184*x^2 + 29360128*x^3 + 16777216*x^4 - 2048*y - 4096*y^2 meter=[2,2] *128
[24+128*x,16+128*y]: unknown 594944+11060224*x+76660736*x^2+234881024*x^3+268435456*x^4-4096*y-16384*y^2 -> [66]
[24+128*x,80+128*y]: unknown 588800+11060224*x+76660736*x^2+234881024*x^3+268435456*x^4-20480*y-16384*y^2 -> [67]
expanding queue[37]^21: 592896 + 5530112*x + 19165184*x^2 + 29360128*x^3 + 16777216*x^4 - 6144*y - 4096*y^2 meter=[2,2] *128
[24+128*x,48+128*y]: unknown 592896+11060224*x+76660736*x^2+234881024*x^3+268435456*x^4-12288*y-16384*y^2 -> [68]
[24+128*x,112+128*y]: unknown 582656+11060224*x+76660736*x^2+234881024*x^3+268435456*x^4-28672*y-16384*y^2 -> [69]
expanding queue[38]^22: 58880 + 997376*x + 6189056*x^2 + 16777216*x^3 + 16777216*x^4 - 2560*y - 4096*y^2 meter=[2,2] *128
[12+128*x,84+128*y]: unknown 52224+1994752*x+24756224*x^2+134217728*x^3+268435456*x^4-21504*y-16384*y^2 -> [70]
[76+128*x,84+128*y]: unknown 40793088+261632000*x+628736000*x^2+671088640*x^3+268435456*x^4-21504*y-16384*y^2 -> [71]
expanding queue[39]^22: 5250560 + 28157952*x + 56520704*x^2 + 50331648*x^3 + 16777216*x^4 - 2560*y - 4096*y^2 meter=[2,2] *128
[44+128*x,84+128*y]: unknown 5243904+56315904*x+226082816*x^2+402653184*x^3+268435456*x^4-21504*y-16384*y^2 -> [72]
[108+128*x,84+128*y]: unknown 157031424+718606336*x+1232715776*x^2+939524096*x^3+268435456*x^4-21504*y-16384*y^2 -> [73]
expanding queue[40]^23: 1020416 + 8286208*x + 25063424*x^2 + 33554432*x^3 + 16777216*x^4 - 6656*y - 4096*y^2 meter=[2,2] *128
[28+128*x,116+128*y]: unknown 1009664+16572416*x+100253696*x^2+268435456*x^3+268435456*x^4-29696*y-16384*y^2 -> [74]
[92+128*x,116+128*y]: unknown 84690944+452370432*x+905560064*x^2+805306368*x^3+268435456*x^4-29696*y-16384*y^2 -> [75]
expanding queue[41]^23: 16672256 + 66904064*x + 100560896*x^2 + 67108864*x^3 + 16777216*x^4 - 6656*y - 4096*y^2 meter=[2,2] *128
[60+128*x,116+128*y]: unknown 16661504+133808128*x+402243584*x^2+536870912*x^3+268435456*x^4-29696*y-16384*y^2 -> [76]
[124+128*x,116+128*y]: unknown 268012544+1072922624*x+1610203136*x^2+1073741824*x^3+268435456*x^4-29696*y-16384*y^2 -> [77]
expanding queue[42]^24: 57344 + 997376*x + 6189056*x^2 + 16777216*x^3 + 16777216*x^4 - 5632*y - 4096*y^2 meter=[2,2] *128
[12+128*x,44+128*y]: unknown 57344+1994752*x+24756224*x^2+134217728*x^3+268435456*x^4-11264*y-16384*y^2 -> [78]
[76+128*x,44+128*y]: unknown 40798208+261632000*x+628736000*x^2+671088640*x^3+268435456*x^4-11264*y-16384*y^2 -> [79]
expanding queue[43]^24: 5249024 + 28157952*x + 56520704*x^2 + 50331648*x^3 + 16777216*x^4 - 5632*y - 4096*y^2 meter=[2,2] *128
[44+128*x,44+128*y]: unknown 5249024+56315904*x+226082816*x^2+402653184*x^3+268435456*x^4-11264*y-16384*y^2 -> [80]
[108+128*x,44+128*y]: unknown 157036544+718606336*x+1232715776*x^2+939524096*x^3+268435456*x^4-11264*y-16384*y^2 -> [81]
expanding queue[44]^25: 1022976 + 8286208*x + 25063424*x^2 + 33554432*x^3 + 16777216*x^4 - 1536*y - 4096*y^2 meter=[2,2] *128
[28+128*x,12+128*y]: unknown 1022976+16572416*x+100253696*x^2+268435456*x^3+268435456*x^4-3072*y-16384*y^2 -> [82]
[92+128*x,12+128*y]: unknown 84704256+452370432*x+905560064*x^2+805306368*x^3+268435456*x^4-3072*y-16384*y^2 -> [83]
expanding queue[45]^25: 16674816 + 66904064*x + 100560896*x^2 + 67108864*x^3 + 16777216*x^4 - 1536*y - 4096*y^2 meter=[2,2] *128
[60+128*x,12+128*y]: unknown 16674816+133808128*x+402243584*x^2+536870912*x^3+268435456*x^4-3072*y-16384*y^2 -> [84]
[124+128*x,12+128*y]: unknown 268025856+1072922624*x+1610203136*x^2+1073741824*x^3+268435456*x^4-3072*y-16384*y^2 -> [85]
expanding queue[46]^26: 13752960 + 57911936*x + 91344896*x^2 + 63963136*x^3 + 16777216*x^4 - 256*y^2 meter=[2,1] *128
[121+128*x,0+16*y]: unknown 243750144+999200000*x+1535590400*x^2+1048576000*x^3+268435456*x^4-256*y^2 -> [86]
expanding queue[47]^26: 686336 + 6150784*x + 20566016*x^2 + 30408704*x^3 + 16777216*x^4 - 256*y - 256*y^2 meter=[2,1] *128
[25+128*x,8+16*y]: unknown 686336+12301568*x+82264064*x^2+243269632*x^3+268435456*x^4-256*y-256*y^2 -> [87]
expanding queue[48]^27: 128 + 16000*x + 512000*x^2 + 5242880*x^3 + 16777216*x^4 - 128*y - 256*y^2 meter=[2,2] *128
[65+128*x,4+32*y]: unknown 22548224+167755008*x+467615744*x^2+578813952*x^3+268435456*x^4-256*y-1024*y^2 -> [88]
[1+128*x,20+32*y]: unknown -256+32000*x+2048000*x^2+41943040*x^3+268435456*x^4-1280*y-1024*y^2 -> [89]
expanding queue[49]^27: 16000*x + 512000*x^2 + 5242880*x^3 + 16777216*x^4 - 384*y - 256*y^2 meter=[2,2] *128
solution [1,12],NONTRIVIAL
[1+128*x,12+32*y]: unknown 32000*x+2048000*x^2+41943040*x^3+268435456*x^4-768*y-1024*y^2 -> [90]
[65+128*x,28+32*y]: unknown 22547456+167755008*x+467615744*x^2+578813952*x^3+268435456*x^4-1792*y-1024*y^2 -> [91]
expanding queue[50]^28: 20039040 + 76780928*x + 110219264*x^2 + 70254592*x^3 + 16777216*x^4 - 256*y^2 meter=[2,1] *128
[127+128*x,0+16*y]: unknown 294071040+1150184192*x+1686585344*x^2+1098907648*x^3+268435456*x^4-256*y^2 -> [92]
expanding queue[51]^28: 1470080 + 10864000*x + 30003200*x^2 + 36700160*x^3 + 16777216*x^4 - 256*y - 256*y^2 meter=[2,1] *128
[95+128*x,8+16*y]: unknown 95814656+496159488*x+963067904*x^2+830472192*x^3+268435456*x^4-256*y-256*y^2 -> [93]
expanding queue[52]^29: 12030464 + 52388224*x + 85446656*x^2 + 61865984*x^3 + 16777216*x^4 - 128*y - 256*y^2 meter=[2,2] *128
[55+128*x,4+32*y]: unknown 12030464+104776448*x+341786624*x^2+494927872*x^3+268435456*x^4-256*y-1024*y^2 -> [94]
[119+128*x,20+32*y]: unknown 228508160+951976704*x+1486831616*x^2+1031798784*x^3+268435456*x^4-1280*y-1024*y^2 -> [95]
expanding queue[53]^29: 12030336 + 52388224*x + 85446656*x^2 + 61865984*x^3 + 16777216*x^4 - 384*y - 256*y^2 meter=[2,2] *128
[119+128*x,12+32*y]: unknown 228508416+951976704*x+1486831616*x^2+1031798784*x^3+268435456*x^4-768*y-1024*y^2 -> [96]
[55+128*x,28+32*y]: unknown 12029696+104776448*x+341786624*x^2+494927872*x^3+268435456*x^4-1792*y-1024*y^2 -> [97]
Maximum level 6 reached, queue size = 98
