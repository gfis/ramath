[1,2]    * [1,2,-5] = [1,4,-1,-10]

initial: [1,4,-1,-10] / [1,2], rem1=[1,4,-1,-10], div2=[1,2], lenq=3, len1=4, len2=2
step end: quot=[0,0,0], rem1=[1,4,-1,-10], rden=1, div2=[1,2], bquot=-5, lenq=3, len1=4, len2=2
while end: quot=[0,0,-5]/1, rem1=[1,4,4]/1
step end: quot=[0,0,-5], rem1=[1,4,4], rden=1, div2=[1,2], bquot=2, lenq=3, len1=3, len2=2
while end: quot=[0,2,-5]/1, rem1=[1,2]/1
step end: quot=[0,2,-5], rem1=[1,2], rden=1, div2=[1,2], bquot=1, lenq=3, len1=2, len2=2
while end: quot=[1,2,-5]/1, rem1=[0]/1
/ vect1 = [1,2,-5]

initial: [1,4,-1,-10] / [1,2,-5], rem1=[1,4,-1,-10], div2=[1,2,-5], lenq=2, len1=4, len2=3
step end: quot=[0,0], rem1=[1,4,-1,-10], rden=1, div2=[1,2,-5], bquot=2, lenq=2, len1=4, len2=3
while end: quot=[0,2]/1, rem1=[1,2,-5]/1
step end: quot=[0,2], rem1=[1,2,-5], rden=1, div2=[1,2,-5], bquot=1, lenq=2, len1=3, len2=3
while end: quot=[1,2]/1, rem1=[0]/1
/ vect2 = [1,2]
