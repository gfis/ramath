ExponentGCDs=[3,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp
Refined variables=x,y
----------------
expanding queue[0]^-1,meter=[2,2]*2: 4-x^3+y^2
[0+2x,0+2y]:	same 4-8x^3+4y^2 map {x=>x/2,y=>y/2} -> [0] 4-x^3+y^2
-> solution [2,2],trivial(2)
[1+2x,1+2y]:	unknown -> [1] 4-6x-12x^2-8x^3+4y+4y^2
----------------
expanding queue[1]^0,meter=[2,2]*4: 4-6x-12x^2-8x^3+4y+4y^2
[1+4x,1+4y]:	unknown -> [2] 4-12x-48x^2-64x^3+8y+16y^2
[1+4x,3+4y]:	negative-1 [2] by {y=>-y-1}
----------------
expanding queue[2]^1,meter=[2,2]*8: 4-12x-48x^2-64x^3+8y+16y^2
[5+8x,1+8y]:	unknown -> [3] -120-600x-960x^2-512x^3+16y+64y^2
[5+8x,5+8y]:	unknown -> [4] -96-600x-960x^2-512x^3+80y+64y^2
----------------
expanding queue[3]^2,meter=[2,2]*16: -120-600x-960x^2-512x^3+16y+64y^2
[13+16x,1+16y]:	unknown -> [5] -2192-8112x-9984x^2-4096x^3+32y+256y^2
[13+16x,9+16y]:	unknown -> [6] -2112-8112x-9984x^2-4096x^3+288y+256y^2
expanding queue[4]^2,meter=[2,2]*16: -96-600x-960x^2-512x^3+80y+64y^2
[5+16x,5+16y]:	unknown -> [7] -96-1200x-3840x^2-4096x^3+160y+256y^2
[5+16x,13+16y]:	unknown -> [8] 48-1200x-3840x^2-4096x^3+416y+256y^2
----------------
expanding queue[5]^3,meter=[2,2]*32: -2192-8112x-9984x^2-4096x^3+32y+256y^2
[29+32x,1+32y]:	unknown -> [9] -24384-80736x-89088x^2-32768x^3+64y+1024y^2
[29+32x,17+32y]:	unknown -> [10] -24096-80736x-89088x^2-32768x^3+1088y+1024y^2
expanding queue[6]^3,meter=[2,2]*32: -2112-8112x-9984x^2-4096x^3+288y+256y^2
[13+32x,9+32y]:	unknown -> [11] -2112-16224x-39936x^2-32768x^3+576y+1024y^2
[13+32x,25+32y]:	unknown -> [12] -1568-16224x-39936x^2-32768x^3+1600y+1024y^2
expanding queue[7]^4,meter=[2,2]*32: -96-1200x-3840x^2-4096x^3+160y+256y^2
[5+32x,5+32y]:	unknown -> [13] -96-2400x-15360x^2-32768x^3+320y+1024y^2
[5+32x,21+32y]:	unknown -> [14] 320-2400x-15360x^2-32768x^3+1344y+1024y^2
expanding queue[8]^4,meter=[2,2]*32: 48-1200x-3840x^2-4096x^3+416y+256y^2
[21+32x,13+32y]:	unknown -> [15] -9088-42336x-64512x^2-32768x^3+832y+1024y^2
[21+32x,29+32y]:	unknown -> [16] -8416-42336x-64512x^2-32768x^3+1856y+1024y^2
----------------
expanding queue[9]^5,meter=[2,2]*64: -24384-80736x-89088x^2-32768x^3+64y+1024y^2
[29+64x,1+64y]:	unknown -> [17] -24384-161472x-356352x^2-262144x^3+128y+4096y^2
[29+64x,33+64y]:	unknown -> [18] -23296-161472x-356352x^2-262144x^3+4224y+4096y^2
expanding queue[10]^5,meter=[2,2]*64: -24096-80736x-89088x^2-32768x^3+1088y+1024y^2
[61+64x,17+64y]:	unknown -> [19] -226688-714432x-749568x^2-262144x^3+2176y+4096y^2
[61+64x,49+64y]:	unknown -> [20] -224576-714432x-749568x^2-262144x^3+6272y+4096y^2
expanding queue[11]^6,meter=[2,2]*64: -2112-16224x-39936x^2-32768x^3+576y+1024y^2
[13+64x,9+64y]:	unknown -> [21] -2112-32448x-159744x^2-262144x^3+1152y+4096y^2
[13+64x,41+64y]:	unknown -> [22] -512-32448x-159744x^2-262144x^3+5248y+4096y^2
expanding queue[12]^6,meter=[2,2]*64: -1568-16224x-39936x^2-32768x^3+1600y+1024y^2
[45+64x,25+64y]:	unknown -> [23] -90496-388800x-552960x^2-262144x^3+3200y+4096y^2
[45+64x,57+64y]:	unknown -> [24] -87872-388800x-552960x^2-262144x^3+7296y+4096y^2
expanding queue[13]^7,meter=[2,2]*64: -96-2400x-15360x^2-32768x^3+320y+1024y^2
[37+64x,5+64y]:	unknown -> [25] -50624-262848x-454656x^2-262144x^3+640y+4096y^2
[37+64x,37+64y]:	unknown -> [26] -49280-262848x-454656x^2-262144x^3+4736y+4096y^2
expanding queue[14]^7,meter=[2,2]*64: 320-2400x-15360x^2-32768x^3+1344y+1024y^2
[5+64x,21+64y]:	unknown -> [27] 320-4800x-61440x^2-262144x^3+2688y+4096y^2
[5+64x,53+64y]:	unknown -> [28] 2688-4800x-61440x^2-262144x^3+6784y+4096y^2
expanding queue[15]^8,meter=[2,2]*64: -9088-42336x-64512x^2-32768x^3+832y+1024y^2
[21+64x,13+64y]:	unknown -> [29] -9088-84672x-258048x^2-262144x^3+1664y+4096y^2
[21+64x,45+64y]:	unknown -> [30] -7232-84672x-258048x^2-262144x^3+5760y+4096y^2
expanding queue[16]^8,meter=[2,2]*64: -8416-42336x-64512x^2-32768x^3+1856y+1024y^2
[53+64x,29+64y]:	unknown -> [31] -148032-539328x-651264x^2-262144x^3+3712y+4096y^2
[53+64x,61+64y]:	unknown -> [32] -145152-539328x-651264x^2-262144x^3+7808y+4096y^2
Maximum level 5 at [33]: 4-x^3+y^2
