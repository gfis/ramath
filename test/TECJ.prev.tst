Expanding for base=3, level=2, reasons+features=base,same,similiar 
Refined variables=r,t
[0+1r,0+1t]:	unknown -> [1] [0,0] 540r+2916r²-648t-5184t²-13824t³
-> solution [0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[3,3]: 540r+2916r²-648t-5184t²-13824t³
[0+3r,0+3t]:	unknown -> [1] [0,0] 1620r+26244r²-1944t-46656t²-373248t³
-> solution [0,0],trivial(3)
[1+3r,1+3t]:	unknown -> [2] [1,1] 19116r+26244r²-157464t-419904t²-373248t³-16200
[2+3r,2+3t]:	unknown -> [3] [2,2] 36612r+26244r²-561816t-793152t²-373248t³-119880
----------------
expanding queue[1]^0,meter=[3,3]: 1620r+26244r²-1944t-46656t²-373248t³
[0+9r,0+9t]:	unknown -> [4] [0,0] 4860r+236196r²-5832t-419904t²-10077696t³
-> solution [0,0],trivial(3)
[0+9r,3+9t]:	unknown -> [5] [0,1] 4860r+236196r²-3645000t-10497600t²-10077696t³-421848
[0+9r,6+9t]:	unknown -> [6] [0,2] 4860r+236196r²-14002632t-20575296t²-10077696t³-3176496
expanding queue[2]^0,meter=[3,3]: 19116r+26244r²-157464t-419904t²-373248t³-16200
[4+9r,1+9t]:	unknown -> [7] [1,0] 214812r+236196r²-472392t-3779136t²-10077696t³+29160
[4+9r,4+9t]:	unknown -> [8] [1,1] 214812r+236196r²-6351048t-13856832t²-10077696t³-921456
[4+9r,7+9t]:	unknown -> [9] [1,2] 214812r+236196r²-18948168t-23934528t²-10077696t³-4951368
expanding queue[3]^0,meter=[3,3]: 36612r+26244r²-561816t-793152t²-373248t³-119880
[8+9r,2+9t]:	unknown -> [10] [2,0] 424764r+236196r²-1685448t-7138368t²-10077696t³+58320
[8+9r,5+9t]:	unknown -> [11] [2,1] 424764r+236196r²-9803592t-17216064t²-10077696t³-1669896
[8+9r,8+9t]:	unknown -> [12] [2,2] 424764r+236196r²-24640200t-27293760t²-10077696t³-7223904
----------------
expanding queue[4]^1,meter=[3,3]: 4860r+236196r²-5832t-419904t²-10077696t³
[0+27r,0+27t]:	same 14580r+2125764r²-17496t-3779136t²-272097792t³ map {r=>r/27,t=>t/27} -> [0] 540r+2916r²-648t-5184t²-13824t³
-> solution [0,0],trivial(3)
[0+27r,9+27t]:	unknown -> [13] [0,1] 14580r+2125764r²-93236184t-275876928t²-272097792t³-10503432
[0+27r,18+27t]:	unknown -> [14] [0,2] 14580r+2125764r²-367853400t-547974720t²-272097792t³-82312848
expanding queue[5]^1,meter=[3,3]: 4860r+236196r²-3645000t-10497600t²-10077696t³-421848
[9+27r,3+27t]:	unknown -> [15] [1,0] 1431756r+2125764r²-10935000t-94478400t²-272097792t³-180792
[9+27r,12+27t]:	unknown -> [16] [1,1] 1431756r+2125764r²-164619864t-366576192t²-272097792t³-24401088
[9+27r,21+27t]:	unknown -> [17] [1,2] 1431756r+2125764r²-499703256t-638673984t²-272097792t³-130082760
expanding queue[6]^1,meter=[3,3]: 4860r+236196r²-14002632t-20575296t²-10077696t³-3176496
[18+27r,6+27t]:	unknown -> [18] [2,0] 2848932r+2125764r²-42007896t-185177664t²-272097792t³-2221992
[18+27r,15+27t]:	unknown -> [19] [2,1] 2848932r+2125764r²-256158936t-457275456t²-272097792t³-46877616
[18+27r,24+27t]:	unknown -> [20] [2,2] 2848932r+2125764r²-651708504t-729373248t²-272097792t³-193150008
expanding queue[7]^2,meter=[3,3]: 214812r+236196r²-472392t-3779136t²-10077696t³+29160
[4+27r,1+27t]:	unknown -> [21] [0,0] 644436r+2125764r²-1417176t-34012224t²-272097792t³+29160
[4+27r,10+27t]:	unknown -> [22] [0,1] 644436r+2125764r²-114791256t-306110016t²-272097792t³-14300064
[4+27r,19+27t]:	unknown -> [23] [0,2] 644436r+2125764r²-409563864t-578207808t²-272097792t³-96653736
expanding queue[8]^2,meter=[3,3]: 214812r+236196r²-6351048t-13856832t²-10077696t³-921456
[4+27r,4+27t]:	unknown -> [24] [0,0] 644436r+2125764r²-19053144t-124711488t²-272097792t³-921456
[4+27r,13+27t]:	unknown -> [25] [0,1] 644436r+2125764r²-192893400t-396809280t²-272097792t³-31207032
[4+27r,22+27t]:	unknown -> [26] [0,2] 644436r+2125764r²-548132184t-668907072t²-272097792t³-149672448
expanding queue[9]^2,meter=[3,3]: 214812r+236196r²-18948168t-23934528t²-10077696t³-4951368
[4+27r,7+27t]:	unknown -> [27] [0,0] 644436r+2125764r²-56844504t-215410752t²-272097792t³-4951368
[4+27r,16+27t]:	unknown -> [28] [0,1] 644436r+2125764r²-291150936t-487508544t²-272097792t³-57911760
[4+27r,25+27t]:	unknown -> [29] [0,2] 644436r+2125764r²-706855896t-759606336t²-272097792t³-219207384
expanding queue[10]^3,meter=[3,3]: 424764r+236196r²-1685448t-7138368t²-10077696t³+58320
[8+27r,2+27t]:	unknown -> [30] [0,0] 1274292r+2125764r²-5056344t-64245312t²-272097792t³+58320
[8+27r,11+27t]:	unknown -> [31] [0,1] 1274292r+2125764r²-138585816t-336343104t²-272097792t³-18843192
[8+27r,20+27t]:	unknown -> [32] [0,2] 1274292r+2125764r²-453513816t-608440896t²-272097792t³-112487616
expanding queue[11]^3,meter=[3,3]: 424764r+236196r²-9803592t-17216064t²-10077696t³-1669896
[17+27r,5+27t]:	unknown -> [33] [1,0] 2691468r+2125764r²-29410776t-154944576t²-272097792t³-1008936
[17+27r,14+27t]:	unknown -> [34] [1,1] 2691468r+2125764r²-223406424t-427042368t²-272097792t³-38106288
[17+27r,23+27t]:	unknown -> [35] [1,2] 2691468r+2125764r²-598800600t-699140160t²-272097792t³-170101944
expanding queue[12]^3,meter=[3,3]: 424764r+236196r²-24640200t-27293760t²-10077696t³-7223904
[26+27r,8+27t]:	unknown -> [36] [2,0] 4108644r+2125764r²-73920600t-245643840t²-272097792t³-5429592
[26+27r,17+27t]:	unknown -> [37] [2,1] 4108644r+2125764r²-328382424t-517741632t²-272097792t³-67441248
[26+27r,26+27t]:	unknown -> [38] [2,2] 4108644r+2125764r²-764242776t-789839424t²-272097792t³-244506600
Maximum level 2 [39] mod 3: 540r+2916r²-648t-5184t²-13824t³
