Input:
x + x^2 + y*z
x*y + z + z^2
y + y^2 + x*z
mdiv s =  - x*y^2 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
multipleDivide:  - x*y^2 + x*z + x^2*z - y*z =  + ( - 1) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + [Rest = x + x^2 - y - x*y - y^2 - 2*x*y^2]
adding [3] = x + x^2 - y - x*y - y^2 - 2*x*y^2
mdiv s =  - x*y^2 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
multipleDivide:  - x*y^2 + x*z + x^2*z - y*z =  + ( - 1) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
multipleDivide: x^2 + x^3 - y^2 - y^3 =  + [Rest = x^2 + x^3 - y^2 - y^3]
adding [4] = x^2 + x^3 - y^2 - y^3
mdiv s =  - x*y^2 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
multipleDivide:  - x*y^2 + x*z + x^2*z - y*z =  + ( - 1) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
multipleDivide: x^2 + x^3 - y^2 - y^3 =  + (1) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s =  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
multipleDivide:  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z =  + (1 + x + y) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2]
adding [5] =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2
mdiv s =  - x*y^2 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
multipleDivide:  - x*y^2 + x*z + x^2*z - y*z =  + ( - 1) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
multipleDivide: x^2 + x^3 - y^2 - y^3 =  + (1) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s =  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
multipleDivide:  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z =  + (1 + x + y) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest = 0]
mdiv s =  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[2]:  + x*z) = (quot:  - x^2), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
multipleDivide:  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z =  + (y) * (x + x^2 + y*z) + ( - x - x^2) * (y + y^2 + x*z) + [Rest = 0]
mdiv s = x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z: (lts:  + 4*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^3), rest 0
mdiv s =  - 4*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z: (lts:  + 6*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 6*x^2), rest 0
mdiv s =  - 6*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^2), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 3*x), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
multipleDivide: x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z =  + ( - 1 + x + 6*x^2 + 4*x^3) * (x + x^2 + y*z) + (1 + 3*x + 2*x^2) * (y + y^2 + x*z) + (1 + x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5]
adding [6] =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5
mdiv s =  - x*y^2 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
multipleDivide:  - x*y^2 + x*z + x^2*z - y*z =  + ( - 1) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
multipleDivide: x^2 + x^3 - y^2 - y^3 =  + (1) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s =  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
multipleDivide:  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z =  + (1 + x + y) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest = 0]
mdiv s =  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[2]:  + x*z) = (quot:  - x^2), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
multipleDivide:  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z =  + (y) * (x + x^2 + y*z) + ( - x - x^2) * (y + y^2 + x*z) + [Rest = 0]
mdiv s = x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z: (lts:  + 4*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^3), rest 0
mdiv s =  - 4*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z: (lts:  + 6*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 6*x^2), rest 0
mdiv s =  - 6*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^2), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 3*x), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1), rest 0
multipleDivide: x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z =  + ( - 1 + x + 6*x^2 + 4*x^3) * (x + x^2 + y*z) + (1 + 3*x + 2*x^2) * (y + y^2 + x*z) + (1 + x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - 4*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z + 10*x^4*y*z: (lts:  + 10*x^4*y*z) / (ltf[0]:  + y*z) = (quot:  + 10*x^4), rest 0
mdiv s =  - 10*x^5 - 14*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z: (lts:  + 8*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 8*x^3), rest 0
mdiv s =  - 8*x^4 - 18*x^5 - 14*x^6 - 4*x^7 + 2*x^2*y*z: (lts:  + 2*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 2*x^2), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[6]:  - 4*x^5) = (quot:  + x^2), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + x), rest 0
multipleDivide:  - 4*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z + 10*x^4*y*z =  + (2*x^2 + 8*x^3 + 10*x^4) * (x + x^2 + y*z) + (x + x^2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s = x*y^2 - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - x^2 + x*y^2 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y^2 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y^2 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - x^2 + x*y + 2*x*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y + 2*x*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y + 2*x*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1), rest 0
multipleDivide: x*y^2 - x*z - x^2*z + y*z =  + (1) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2*y + x*z - y*z - y^2*z: (lts:  - y^2*z) / (ltf[0]:  + y*z) = (quot:  - y), rest 0
mdiv s = x*y + 2*x^2*y + x*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 + x*y + 2*x^2*y + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 + x*y + 2*x^2*y + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 + x*y + 2*x^2*y + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 2), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
multipleDivide: x^2*y + x*z - y*z - y^2*z =  + ( - 1 - y) * (x + x^2 + y*z) + (1) * (y + y^2 + x*z) + ( - 2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y]
adding [7] =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y
mdiv s =  - x*y^2 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
multipleDivide:  - x*y^2 + x*z + x^2*z - y*z =  + ( - 1) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
multipleDivide: x^2 + x^3 - y^2 - y^3 =  + (1) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s =  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
multipleDivide:  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z =  + (1 + x + y) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest = 0]
mdiv s =  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[2]:  + x*z) = (quot:  - x^2), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
multipleDivide:  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z =  + (y) * (x + x^2 + y*z) + ( - x - x^2) * (y + y^2 + x*z) + [Rest = 0]
mdiv s = x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z: (lts:  + 4*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^3), rest 0
mdiv s =  - 4*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z: (lts:  + 6*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 6*x^2), rest 0
mdiv s =  - 6*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^2), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 3*x), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1), rest 0
multipleDivide: x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z =  + ( - 1 + x + 6*x^2 + 4*x^3) * (x + x^2 + y*z) + (1 + 3*x + 2*x^2) * (y + y^2 + x*z) + (1 + x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - 4*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z + 10*x^4*y*z: (lts:  + 10*x^4*y*z) / (ltf[0]:  + y*z) = (quot:  + 10*x^4), rest 0
mdiv s =  - 10*x^5 - 14*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z: (lts:  + 8*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 8*x^3), rest 0
mdiv s =  - 8*x^4 - 18*x^5 - 14*x^6 - 4*x^7 + 2*x^2*y*z: (lts:  + 2*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 2*x^2), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[6]:  - 4*x^5) = (quot:  + x^2), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + x), rest 0
multipleDivide:  - 4*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z + 10*x^4*y*z =  + (2*x^2 + 8*x^3 + 10*x^4) * (x + x^2 + y*z) + (x + x^2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - 4*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z + 4*x^2*y*z: (lts:  + 4*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^2), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^2), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x^2*y - 2*x^2*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x^2*y - 2*x^2*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x^2*y - 2*x^2*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 2*x), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
multipleDivide:  - 4*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z + 4*x^2*y*z =  + (4*x^2) * (x + x^2 + y*z) + (2*x + 2*x^2) * (y + y^2 + x*z) + (1/2 + x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = x^2 + 3*x^3 + 2*x^4]
adding [8] = x^2 + 3*x^3 + 2*x^4
mdiv s =  - x*y^2 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y^2 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - x*y - 2*x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
multipleDivide:  - x*y^2 + x*z + x^2*z - y*z =  + ( - 1) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
multipleDivide: x^2 + x^3 - y^2 - y^3 =  + (1) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s =  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - 3*x^2*y - 2*x^3*y - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - 3*x^2*y - 2*x^3*y + x*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
multipleDivide:  - 2*x^2*y - 2*x^3*y - x*z - x^2*z + y*z + x*y*z + y^2*z =  + (1 + x + y) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest = 0]
mdiv s =  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x^2*y - x*y^2 - x^2*y^2 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[2]:  + x*z) = (quot:  - x^2), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - x*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
multipleDivide:  - x*y^2 - x^2*y^2 - x^2*z - x^3*z + y^2*z =  + (y) * (x + x^2 + y*z) + ( - x - x^2) * (y + y^2 + x*z) + [Rest = 0]
mdiv s = x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z: (lts:  + 4*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^3), rest 0
mdiv s =  - 4*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z: (lts:  + 6*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 6*x^2), rest 0
mdiv s =  - 6*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^2), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 + x*y - x^2*y - 2*x^2*y^2 + x*z + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 3*x), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - 2*x*y - x^2*y - 3*x*y^2 - 2*x^2*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - 7*x^3 - 10*x^4 - 4*x^5 - y - 2*x*y - x^2*y - y^2 - 3*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - x^2 - 8*x^3 - 10*x^4 - 4*x^5 - y - x*y - y^2 - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1), rest 0
multipleDivide: x*y + x^2*y + x*z + 3*x^2*z + 2*x^3*z - y*z + x*y*z + 6*x^2*y*z + 4*x^3*y*z =  + ( - 1 + x + 6*x^2 + 4*x^3) * (x + x^2 + y*z) + (1 + 3*x + 2*x^2) * (y + y^2 + x*z) + (1 + x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - 4*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z + 10*x^4*y*z: (lts:  + 10*x^4*y*z) / (ltf[0]:  + y*z) = (quot:  + 10*x^4), rest 0
mdiv s =  - 10*x^5 - 14*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z: (lts:  + 8*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 8*x^3), rest 0
mdiv s =  - 8*x^4 - 18*x^5 - 14*x^6 - 4*x^7 + 2*x^2*y*z: (lts:  + 2*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 2*x^2), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 10*x^4 - 18*x^5 - 14*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[6]:  - 4*x^5) = (quot:  + x^2), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + x), rest 0
multipleDivide:  - 4*x^6 - 4*x^7 + 2*x^2*y*z + 8*x^3*y*z + 10*x^4*y*z =  + (2*x^2 + 8*x^3 + 10*x^4) * (x + x^2 + y*z) + (x + x^2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - 4*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z + 4*x^2*y*z: (lts:  + 4*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^2), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^2), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x^2*y - 2*x^2*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x^2*y - 2*x^2*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x^2*y - 2*x^2*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 2*x), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 - 2*x*y - 2*x^2*y - 2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - 5*x^3 - 8*x^4 - 4*x^5 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 8*x^4 - 4*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 8*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1), rest 0
multipleDivide:  - 4*x^4 - 4*x^5 + 2*x^2*z + 2*x^3*z + 4*x^2*y*z =  + (4*x^2) * (x + x^2 + y*z) + (2*x + 2*x^2) * (y + y^2 + x*z) + (1/2 + x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^5 + 2*x^6 - x^2*y*z - 3*x^3*y*z: (lts:  - 3*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  - 3*x^3), rest 0
mdiv s = 3*x^4 + 5*x^5 + 2*x^6 - x^2*y*z: (lts:  - x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - x^2), rest 0
mdiv s = x^3 + 4*x^4 + 5*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3 + 4*x^4 + 5*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^3 + 4*x^4 + 5*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^3 + 4*x^4 + 5*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^3 + 4*x^4 + 5*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^3 + 4*x^4 + 5*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^3 + 4*x^4 + 5*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2*x), rest 0
multipleDivide: 2*x^5 + 2*x^6 - x^2*y*z - 3*x^3*y*z =  + ( - x^2 - 3*x^3) * (x + x^2 + y*z) + ( - 1/2*x) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s = x*y^2 - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - x^2 + x*y^2 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y^2 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y^2 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - x^2 + x*y + 2*x*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y + 2*x*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + x*y + 2*x*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1), rest 0
multipleDivide: x*y^2 - x*z - x^2*z + y*z =  + (1) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + [Rest = 0]
mdiv s = x^2*y + x*z - y*z - y^2*z: (lts:  - y^2*z) / (ltf[0]:  + y*z) = (quot:  - y), rest 0
mdiv s = x*y + 2*x^2*y + x*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + x^2 + x*y + 2*x^2*y + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 + x*y + 2*x^2*y + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 + x*y + 2*x^2*y + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x + x^2 - y + x*y + 2*x^2*y - y^2: (lts:  - y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 2), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1), rest 0
multipleDivide: x^2*y + x*z - y*z - y^2*z =  + ( - 1 - y) * (x + x^2 + y*z) + (1) * (y + y^2 + x*z) + ( - 2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^2*y^3 - 2*x*y^2*z - x*z^2 - x^2*z^2 + y*z^2 + x*y*z^2 + y^2*z^2: (lts:  + y^2*z^2) / (ltf[0]:  + y*z) = (quot:  + y*z), rest 0
mdiv s =  - 2*x^2*y^3 - x*y*z - x^2*y*z - 2*x*y^2*z - x*z^2 - x^2*z^2 + y*z^2 + x*y*z^2: (lts:  + x*y*z^2) / (ltf[0]:  + y*z) = (quot:  + x*z), rest 0
mdiv s =  - 2*x^2*y^3 - x^2*z - x^3*z - x*y*z - x^2*y*z - 2*x*y^2*z - x*z^2 - x^2*z^2 + y*z^2: (lts:  + y*z^2) / (ltf[0]:  + y*z) = (quot:  + z), rest 0
mdiv s =  - 2*x^2*y^3 - x*z - 2*x^2*z - x^3*z - x*y*z - x^2*y*z - 2*x*y^2*z - x*z^2 - x^2*z^2: (lts:  - x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2*y^3 - x*z - 2*x^2*z - x^3*z - x*y*z - x^2*y*z - 2*x*y^2*z - x*z^2 - x^2*z^2: (lts:  - x^2*z^2) / (ltf[1]:  + z^2) = (quot:  - x^2), rest 0
mdiv s = x^3*y - 2*x^2*y^3 - x*z - x^2*z - x^3*z - x*y*z - x^2*y*z - 2*x*y^2*z - x*z^2: (lts:  - x*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3*y - 2*x^2*y^3 - x*z - x^2*z - x^3*z - x*y*z - x^2*y*z - 2*x*y^2*z - x*z^2: (lts:  - x*z^2) / (ltf[1]:  + z^2) = (quot:  - x), rest 0
mdiv s = x^2*y + x^3*y - 2*x^2*y^3 - x^2*z - x^3*z - x*y*z - x^2*y*z - 2*x*y^2*z: (lts:  - 2*x*y^2*z) / (ltf[0]:  + y*z) = (quot:  - 2*x*y), rest 0
mdiv s = 3*x^2*y + 3*x^3*y - 2*x^2*y^3 - x^2*z - x^3*z - x*y*z - x^2*y*z: (lts:  - x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - x^2), rest 0
mdiv s = x^3 + x^4 + 3*x^2*y + 3*x^3*y - 2*x^2*y^3 - x^2*z - x^3*z - x*y*z: (lts:  - x*y*z) / (ltf[0]:  + y*z) = (quot:  - x), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3*x^2*y + 3*x^3*y - 2*x^2*y^3 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3*x^2*y + 3*x^3*y - 2*x^2*y^3 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3*x^2*y + 3*x^3*y - 2*x^2*y^3 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[2]:  + x*z) = (quot:  - x^2), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 4*x^2*y + 3*x^3*y + x^2*y^2 - 2*x^2*y^3 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 4*x^2*y + 3*x^3*y + x^2*y^2 - 2*x^2*y^3 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 4*x^2*y + 3*x^3*y + x^2*y^2 - 2*x^2*y^3 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 4*x^2*y + 3*x^3*y + x*y^2 + x^2*y^2 - 2*x^2*y^3: (lts:  - 2*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 4*x^2*y + 3*x^3*y + x*y^2 + x^2*y^2 - 2*x^2*y^3: (lts:  - 2*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 4*x^2*y + 3*x^3*y + x*y^2 + x^2*y^2 - 2*x^2*y^3: (lts:  - 2*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 4*x^2*y + 3*x^3*y + x*y^2 + x^2*y^2 - 2*x^2*y^3: (lts:  - 2*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + x*y), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 3*x^2*y + 2*x^3*y + 2*x*y^2 + 2*x^2*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 3*x^2*y + 2*x^3*y + 2*x*y^2 + 2*x^2*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 3*x^2*y + 2*x^3*y + 2*x*y^2 + 2*x^2*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x*y + 3*x^2*y + 2*x^3*y + 2*x*y^2 + 2*x^2*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2*y), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y - 1/2*y^2 + 3/2*x*y^2 + 2*x^2*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y - 1/2*y^2 + 3/2*x*y^2 + 2*x^2*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y - 1/2*y^2 + 3/2*x*y^2 + 2*x^2*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y - 1/2*y^2 + 3/2*x*y^2 + 2*x^2*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y - 1/2*y^2 + 3/2*x*y^2 + 2*x^2*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[4]:  - y^3) = (quot:  + 1/2), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y + 3/2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y + 3/2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y + 3/2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 + 3/2*x*y + 7/2*x^2*y + 2*x^3*y + 3/2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x), rest 0
mdiv s = 3/2*x^2 + 5/2*x^3 + x^4 + 1/2*x*y + 5/2*x^2*y + 2*x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 5/2*x^3 + x^4 + 1/2*x*y + 5/2*x^2*y + 2*x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 5/2*x^3 + x^4 + 1/2*x*y + 5/2*x^2*y + 2*x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 5/2*x^3 + x^4 + 1/2*x*y + 5/2*x^2*y + 2*x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 5/2*x^3 + x^4 - 1/4*y + 1/4*x*y + 5/2*x^2*y + 2*x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 5/2*x^3 + x^4 - 1/4*y + 1/4*x*y + 5/2*x^2*y + 2*x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 5/2*x^3 + x^4 - 1/4*y + 1/4*x*y + 5/2*x^2*y + 2*x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 5/2*x^3 + x^4 - 1/4*y + 1/4*x*y + 5/2*x^2*y + 2*x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 5/2*x^3 + x^4 - 1/4*y + 1/4*x*y + 5/2*x^2*y + 2*x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 5/2*x^3 + x^4 - 1/4*y + 1/4*x*y + 5/2*x^2*y + 2*x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1/2), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1/2), rest 0
multipleDivide:  - 2*x^2*y^3 - 2*x*y^2*z - x*z^2 - x^2*z^2 + y*z^2 + x*y*z^2 + y^2*z^2 =  + ( - x - x^2 - 2*x*y + z + x*z + y*z) * (x + x^2 + y*z) + ( - x - x^2) * (x*y + z + z^2) + ( - x - x^2) * (y + y^2 + x*z) + ( - 1/4 - x - 1/2*y + x*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/2) * (x^2 + x^3 - y^2 - y^3) + ( - 1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1/4) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1/2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - x*y^4 - y^3*z - x^2*z^2 - x^3*z^2 + y^2*z^2: (lts:  + y^2*z^2) / (ltf[0]:  + y*z) = (quot:  + y*z), rest 0
mdiv s =  - x*y^4 - x*y*z - x^2*y*z - y^3*z - x^2*z^2 - x^3*z^2: (lts:  - x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y^4 - x*y*z - x^2*y*z - y^3*z - x^2*z^2 - x^3*z^2: (lts:  - x^3*z^2) / (ltf[1]:  + z^2) = (quot:  - x^3), rest 0
mdiv s = x^4*y - x*y^4 + x^3*z - x*y*z - x^2*y*z - y^3*z - x^2*z^2: (lts:  - x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^4*y - x*y^4 + x^3*z - x*y*z - x^2*y*z - y^3*z - x^2*z^2: (lts:  - x^2*z^2) / (ltf[1]:  + z^2) = (quot:  - x^2), rest 0
mdiv s = x^3*y + x^4*y - x*y^4 + x^2*z + x^3*z - x*y*z - x^2*y*z - y^3*z: (lts:  - y^3*z) / (ltf[0]:  + y*z) = (quot:  - y^2), rest 0
mdiv s = x^3*y + x^4*y + x*y^2 + x^2*y^2 - x*y^4 + x^2*z + x^3*z - x*y*z - x^2*y*z: (lts:  - x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - x^2), rest 0
mdiv s = x^3 + x^4 + x^3*y + x^4*y + x*y^2 + x^2*y^2 - x*y^4 + x^2*z + x^3*z - x*y*z: (lts:  - x*y*z) / (ltf[0]:  + y*z) = (quot:  - x), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^3*y + x^4*y + x*y^2 + x^2*y^2 - x*y^4 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^3*y + x^4*y + x*y^2 + x^2*y^2 - x*y^4 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^3*y + x^4*y + x*y^2 + x^2*y^2 - x*y^4 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[2]:  + x*z) = (quot:  + x^2), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x^2*y + x^3*y + x^4*y + x*y^2 - x*y^4 + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x^2*y + x^3*y + x^4*y + x*y^2 - x*y^4 + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x^2*y + x^3*y + x^4*y + x*y^2 - x*y^4 + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - x*y^4: (lts:  - x*y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - x*y^4: (lts:  - x*y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - x*y^4: (lts:  - x*y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - x*y^4: (lts:  - x*y^4) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2*y^2), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*y^3 + 1/2*x*y^3 + 1/2*y^4: (lts:  + 1/2*y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*y^3 + 1/2*x*y^3 + 1/2*y^4: (lts:  + 1/2*y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*y^3 + 1/2*x*y^3 + 1/2*y^4: (lts:  + 1/2*y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*y^3 + 1/2*x*y^3 + 1/2*y^4: (lts:  + 1/2*y^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - x^2*y + x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*y^3 + 1/2*x*y^3 + 1/2*y^4: (lts:  + 1/2*y^4) / (ltf[4]:  - y^3) = (quot:  - 1/2*y), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - 1/2*x^2*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*x*y^3: (lts:  + 1/2*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - 1/2*x^2*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*x*y^3: (lts:  + 1/2*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - 1/2*x^2*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*x*y^3: (lts:  + 1/2*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - x*y - 1/2*x^2*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2 - 1/2*x^2*y^2 + 1/2*x*y^3: (lts:  + 1/2*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4*y), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 1/4*y^2 - 3/4*x*y^2 - 1/2*x^2*y^2 - 1/4*y^3: (lts:  - 1/4*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 1/4*y^2 - 3/4*x*y^2 - 1/2*x^2*y^2 - 1/4*y^3: (lts:  - 1/4*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 1/4*y^2 - 3/4*x*y^2 - 1/2*x^2*y^2 - 1/4*y^3: (lts:  - 1/4*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 1/4*y^2 - 3/4*x*y^2 - 1/2*x^2*y^2 - 1/4*y^3: (lts:  - 1/4*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 1/4*y^2 - 3/4*x*y^2 - 1/2*x^2*y^2 - 1/4*y^3: (lts:  - 1/4*y^3) / (ltf[4]:  - y^3) = (quot:  + 1/4), rest 0
mdiv s = 3/4*x^2 + 7/4*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 3/4*x*y^2 - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/4*x^2 + 7/4*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 3/4*x*y^2 - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/4*x^2 + 7/4*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 3/4*x*y^2 - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/4*x^2 + 7/4*x^3 + x^4 - 3/4*x*y - 1/4*x^2*y + 3/2*x^3*y + x^4*y - 3/4*x*y^2 - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4*x), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 - 1/2*x*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 - 1/2*x*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 - 1/2*x*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4 - 1/2*x*y + 3/2*x^3*y + x^4*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 + 3/2*x^3 + x^4 + 1/4*y - 1/4*x*y + 3/2*x^3*y + x^4*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 + 3/2*x^3 + x^4 + 1/4*y - 1/4*x*y + 3/2*x^3*y + x^4*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 + 3/2*x^3 + x^4 + 1/4*y - 1/4*x*y + 3/2*x^3*y + x^4*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 + 3/2*x^3 + x^4 + 1/4*y - 1/4*x*y + 3/2*x^3*y + x^4*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 + 3/2*x^3 + x^4 + 1/4*y - 1/4*x*y + 3/2*x^3*y + x^4*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 + 3/2*x^3 + x^4 + 1/4*y - 1/4*x*y + 3/2*x^3*y + x^4*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1/2), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 3/2*x^2*y + 5/2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4*x), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3/2*x^3 + 1/2*x^4 + 3/2*x^2*y + 3/2*x^3*y: (lts:  + 3/2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 3/8), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 3/4*x^3 + 1/2*x^4: (lts:  + 1/2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1/4), rest 0
multipleDivide:  - x*y^4 - y^3*z - x^2*z^2 - x^3*z^2 + y^2*z^2 =  + ( - x - x^2 - y^2 + y*z) * (x + x^2 + y*z) + ( - x^2 - x^3) * (x*y + z + z^2) + (x + x^2) * (y + y^2 + x*z) + (1/4 + 1/4*x - 1/4*y + 1/2*y^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/4 - 1/2*y) * (x^2 + x^3 - y^2 - y^3) + (1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 3/8 - 1/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1/4) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = x*y^3 + y^2*z + x*z^2 + 3*x^2*z^2 + 2*x^3*z^2 - y*z^2 + x*y*z^2 + 6*x^2*y*z^2 + 4*x^3*y*z^2: (lts:  + 4*x^3*y*z^2) / (ltf[0]:  + y*z) = (quot:  + 4*x^3*z), rest 0
mdiv s = x*y^3 - 4*x^4*z - 4*x^5*z + y^2*z + x*z^2 + 3*x^2*z^2 + 2*x^3*z^2 - y*z^2 + x*y*z^2 + 6*x^2*y*z^2: (lts:  + 6*x^2*y*z^2) / (ltf[0]:  + y*z) = (quot:  + 6*x^2*z), rest 0
mdiv s = x*y^3 - 6*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2 + 3*x^2*z^2 + 2*x^3*z^2 - y*z^2 + x*y*z^2: (lts:  + x*y*z^2) / (ltf[0]:  + y*z) = (quot:  + x*z), rest 0
mdiv s = x*y^3 - x^2*z - 7*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2 + 3*x^2*z^2 + 2*x^3*z^2 - y*z^2: (lts:  - y*z^2) / (ltf[0]:  + y*z) = (quot:  - z), rest 0
mdiv s = x*y^3 + x*z - 7*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2 + 3*x^2*z^2 + 2*x^3*z^2: (lts:  + 2*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y^3 + x*z - 7*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2 + 3*x^2*z^2 + 2*x^3*z^2: (lts:  + 2*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  + 2*x^3), rest 0
mdiv s =  - 2*x^4*y + x*y^3 + x*z - 9*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2 + 3*x^2*z^2: (lts:  + 3*x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^4*y + x*y^3 + x*z - 9*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2 + 3*x^2*z^2: (lts:  + 3*x^2*z^2) / (ltf[1]:  + z^2) = (quot:  + 3*x^2), rest 0
mdiv s =  - 3*x^3*y - 2*x^4*y + x*y^3 + x*z - 3*x^2*z - 9*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2: (lts:  + x*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^3*y - 2*x^4*y + x*y^3 + x*z - 3*x^2*z - 9*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z + x*z^2: (lts:  + x*z^2) / (ltf[1]:  + z^2) = (quot:  + x), rest 0
mdiv s =  - x^2*y - 3*x^3*y - 2*x^4*y + x*y^3 - 3*x^2*z - 9*x^3*z - 10*x^4*z - 4*x^5*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - 2*x^2*y - 3*x^3*y - 2*x^4*y + x*y^3 - 3*x^2*z - 9*x^3*z - 10*x^4*z - 4*x^5*z: (lts:  - 4*x^5*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - 2*x^2*y - 3*x^3*y - 2*x^4*y + x*y^3 - 3*x^2*z - 9*x^3*z - 10*x^4*z - 4*x^5*z: (lts:  - 4*x^5*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - 2*x^2*y - 3*x^3*y - 2*x^4*y + x*y^3 - 3*x^2*z - 9*x^3*z - 10*x^4*z - 4*x^5*z: (lts:  - 4*x^5*z) / (ltf[2]:  + x*z) = (quot:  - 4*x^4), rest 0
mdiv s =  - x*y - 2*x^2*y - 3*x^3*y + 2*x^4*y + 4*x^4*y^2 + x*y^3 - 3*x^2*z - 9*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - 2*x^2*y - 3*x^3*y + 2*x^4*y + 4*x^4*y^2 + x*y^3 - 3*x^2*z - 9*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - 2*x^2*y - 3*x^3*y + 2*x^4*y + 4*x^4*y^2 + x*y^3 - 3*x^2*z - 9*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[2]:  + x*z) = (quot:  - 10*x^3), rest 0
mdiv s =  - x*y - 2*x^2*y + 7*x^3*y + 2*x^4*y + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3 - 3*x^2*z - 9*x^3*z: (lts:  - 9*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - 2*x^2*y + 7*x^3*y + 2*x^4*y + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3 - 3*x^2*z - 9*x^3*z: (lts:  - 9*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - 2*x^2*y + 7*x^3*y + 2*x^4*y + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3 - 3*x^2*z - 9*x^3*z: (lts:  - 9*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 9*x^2), rest 0
mdiv s =  - x*y + 7*x^2*y + 7*x^3*y + 2*x^4*y + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3 - 3*x^2*z: (lts:  - 3*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y + 7*x^2*y + 7*x^3*y + 2*x^4*y + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3 - 3*x^2*z: (lts:  - 3*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y + 7*x^2*y + 7*x^3*y + 2*x^4*y + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3 - 3*x^2*z: (lts:  - 3*x^2*z) / (ltf[2]:  + x*z) = (quot:  - 3*x), rest 0
mdiv s = 2*x*y + 7*x^2*y + 7*x^3*y + 2*x^4*y + 3*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x*y + 7*x^2*y + 7*x^3*y + 2*x^4*y + 3*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x*y + 7*x^2*y + 7*x^3*y + 2*x^4*y + 3*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x*y + 7*x^2*y + 7*x^3*y + 2*x^4*y + 3*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 + x*y^3: (lts:  + x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2*y), rest 0
mdiv s = 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y - 1/2*y^2 + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y - 1/2*y^2 + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y - 1/2*y^2 + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y - 1/2*y^2 + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y - 1/2*y^2 + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 1/2*y^3: (lts:  - 1/2*y^3) / (ltf[4]:  - y^3) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 5/2*x*y + 15/2*x^2*y + 7*x^3*y + 2*x^4*y + 5/2*x*y^2 + 9*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x^3), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 2*x^4 + 2*x^5 + 5/2*x*y + 15/2*x^2*y + 5*x^3*y + 5/2*x*y^2 + 9*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 2*x^4 + 2*x^5 + 5/2*x*y + 15/2*x^2*y + 5*x^3*y + 5/2*x*y^2 + 9*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 2*x^4 + 2*x^5 + 5/2*x*y + 15/2*x^2*y + 5*x^3*y + 5/2*x*y^2 + 9*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 1/2*x^3 + 2*x^4 + 2*x^5 + 5/2*x*y + 15/2*x^2*y + 5*x^3*y + 5/2*x*y^2 + 9*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 4*x^2), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 6*x^4 + 2*x^5 + 5/2*x*y + 7/2*x^2*y + x^3*y + 5/2*x*y^2 + 5*x^2*y^2: (lts:  + 5*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 6*x^4 + 2*x^5 + 5/2*x*y + 7/2*x^2*y + x^3*y + 5/2*x*y^2 + 5*x^2*y^2: (lts:  + 5*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 6*x^4 + 2*x^5 + 5/2*x*y + 7/2*x^2*y + x^3*y + 5/2*x*y^2 + 5*x^2*y^2: (lts:  + 5*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 6*x^4 + 2*x^5 + 5/2*x*y + 7/2*x^2*y + x^3*y + 5/2*x*y^2 + 5*x^2*y^2: (lts:  + 5*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 5/2*x), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4), rest 0
mdiv s = 3/2*x^2 + 11/2*x^3 + 6*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 11/2*x^3 + 6*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 11/2*x^3 + 6*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 11/2*x^3 + 6*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 11/2*x^3 + 6*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 11/2*x^3 + 6*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 11/2*x^3 + 6*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1/2), rest 0
multipleDivide: x*y^3 + y^2*z + x*z^2 + 3*x^2*z^2 + 2*x^3*z^2 - y*z^2 + x*y*z^2 + 6*x^2*y*z^2 + 4*x^3*y*z^2 =  + (y - z + x*z + 6*x^2*z + 4*x^3*z) * (x + x^2 + y*z) + (x + 3*x^2 + 2*x^3) * (x*y + z + z^2) + ( - 3*x - 9*x^2 - 10*x^3 - 4*x^4) * (y + y^2 + x*z) + ( - 5/2*x - 4*x^2 - 2*x^3 - 1/2*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/2) * (x^2 + x^3 - y^2 - y^3) + ( - 1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/4) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1/2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - 4*x^6*y - 4*x^5*z + 2*x^2*z^2 + 8*x^3*z^2 + 10*x^4*z^2: (lts:  + 10*x^4*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^6*y - 4*x^5*z + 2*x^2*z^2 + 8*x^3*z^2 + 10*x^4*z^2: (lts:  + 10*x^4*z^2) / (ltf[1]:  + z^2) = (quot:  + 10*x^4), rest 0
mdiv s =  - 10*x^5*y - 4*x^6*y - 10*x^4*z - 4*x^5*z + 2*x^2*z^2 + 8*x^3*z^2: (lts:  + 8*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 10*x^5*y - 4*x^6*y - 10*x^4*z - 4*x^5*z + 2*x^2*z^2 + 8*x^3*z^2: (lts:  + 8*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  + 8*x^3), rest 0
mdiv s =  - 8*x^4*y - 10*x^5*y - 4*x^6*y - 8*x^3*z - 10*x^4*z - 4*x^5*z + 2*x^2*z^2: (lts:  + 2*x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 8*x^4*y - 10*x^5*y - 4*x^6*y - 8*x^3*z - 10*x^4*z - 4*x^5*z + 2*x^2*z^2: (lts:  + 2*x^2*z^2) / (ltf[1]:  + z^2) = (quot:  + 2*x^2), rest 0
mdiv s =  - 2*x^3*y - 8*x^4*y - 10*x^5*y - 4*x^6*y - 2*x^2*z - 8*x^3*z - 10*x^4*z - 4*x^5*z: (lts:  - 4*x^5*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3*y - 8*x^4*y - 10*x^5*y - 4*x^6*y - 2*x^2*z - 8*x^3*z - 10*x^4*z - 4*x^5*z: (lts:  - 4*x^5*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3*y - 8*x^4*y - 10*x^5*y - 4*x^6*y - 2*x^2*z - 8*x^3*z - 10*x^4*z - 4*x^5*z: (lts:  - 4*x^5*z) / (ltf[2]:  + x*z) = (quot:  - 4*x^4), rest 0
mdiv s =  - 2*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[2]:  + x*z) = (quot:  - 10*x^3), rest 0
mdiv s = 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z: (lts:  - 8*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z: (lts:  - 8*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z: (lts:  - 8*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 8*x^2), rest 0
mdiv s = 8*x^2*y + 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 8*x^2*y + 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 8*x^2*y + 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  - 2*x), rest 0
mdiv s = 2*x*y + 8*x^2*y + 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x*y + 8*x^2*y + 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x*y + 8*x^2*y + 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x*y + 8*x^2*y + 8*x^3*y - 4*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x^3), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 6*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 6*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 6*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 6*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 4*x^2), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y: (lts:  - 4*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y: (lts:  - 4*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y: (lts:  - 4*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y: (lts:  - 4*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y: (lts:  - 4*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y: (lts:  - 4*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y - 6*x^4*y - 10*x^5*y - 4*x^6*y: (lts:  - 4*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  + x*y), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2*x), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2), rest 0
multipleDivide:  - 4*x^6*y - 4*x^5*z + 2*x^2*z^2 + 8*x^3*z^2 + 10*x^4*z^2 =  + (2*x^2 + 8*x^3 + 10*x^4) * (x*y + z + z^2) + ( - 2*x - 8*x^2 - 10*x^3 - 4*x^4) * (y + y^2 + x*z) + ( - 2*x - 4*x^2 - 2*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/2 + x*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/2 - 1/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 4*x^4*y^2 - 4*x^3*y*z + 2*x^2*z^2 + 2*x^3*z^2 + 4*x^2*y*z^2: (lts:  + 4*x^2*y*z^2) / (ltf[0]:  + y*z) = (quot:  + 4*x^2*z), rest 0
mdiv s =  - 4*x^4*y^2 - 4*x^3*z - 4*x^4*z - 4*x^3*y*z + 2*x^2*z^2 + 2*x^3*z^2: (lts:  + 2*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4*y^2 - 4*x^3*z - 4*x^4*z - 4*x^3*y*z + 2*x^2*z^2 + 2*x^3*z^2: (lts:  + 2*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  + 2*x^3), rest 0
mdiv s =  - 2*x^4*y - 4*x^4*y^2 - 6*x^3*z - 4*x^4*z - 4*x^3*y*z + 2*x^2*z^2: (lts:  + 2*x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^4*y - 4*x^4*y^2 - 6*x^3*z - 4*x^4*z - 4*x^3*y*z + 2*x^2*z^2: (lts:  + 2*x^2*z^2) / (ltf[1]:  + z^2) = (quot:  + 2*x^2), rest 0
mdiv s =  - 2*x^3*y - 2*x^4*y - 4*x^4*y^2 - 2*x^2*z - 6*x^3*z - 4*x^4*z - 4*x^3*y*z: (lts:  - 4*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  - 4*x^3), rest 0
mdiv s = 4*x^4 + 4*x^5 - 2*x^3*y - 2*x^4*y - 4*x^4*y^2 - 2*x^2*z - 6*x^3*z - 4*x^4*z: (lts:  - 4*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 - 2*x^3*y - 2*x^4*y - 4*x^4*y^2 - 2*x^2*z - 6*x^3*z - 4*x^4*z: (lts:  - 4*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 - 2*x^3*y - 2*x^4*y - 4*x^4*y^2 - 2*x^2*z - 6*x^3*z - 4*x^4*z: (lts:  - 4*x^4*z) / (ltf[2]:  + x*z) = (quot:  - 4*x^3), rest 0
mdiv s = 4*x^4 + 4*x^5 + 2*x^3*y - 2*x^4*y + 4*x^3*y^2 - 4*x^4*y^2 - 2*x^2*z - 6*x^3*z: (lts:  - 6*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 + 2*x^3*y - 2*x^4*y + 4*x^3*y^2 - 4*x^4*y^2 - 2*x^2*z - 6*x^3*z: (lts:  - 6*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 + 2*x^3*y - 2*x^4*y + 4*x^3*y^2 - 4*x^4*y^2 - 2*x^2*z - 6*x^3*z: (lts:  - 6*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 6*x^2), rest 0
mdiv s = 4*x^4 + 4*x^5 + 6*x^2*y + 2*x^3*y - 2*x^4*y + 6*x^2*y^2 + 4*x^3*y^2 - 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 + 6*x^2*y + 2*x^3*y - 2*x^4*y + 6*x^2*y^2 + 4*x^3*y^2 - 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 + 6*x^2*y + 2*x^3*y - 2*x^4*y + 6*x^2*y^2 + 4*x^3*y^2 - 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  - 2*x), rest 0
mdiv s = 4*x^4 + 4*x^5 + 2*x*y + 6*x^2*y + 2*x^3*y - 2*x^4*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 + 2*x*y + 6*x^2*y + 2*x^3*y - 2*x^4*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 + 2*x*y + 6*x^2*y + 2*x^3*y - 2*x^4*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 4*x^5 + 2*x*y + 6*x^2*y + 2*x^3*y - 2*x^4*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x^3), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 6*x^2*y + 4*x^3*y + 2*x*y^2 + 6*x^2*y^2 + 6*x^3*y^2: (lts:  + 6*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 6*x^2*y + 4*x^3*y + 2*x*y^2 + 6*x^2*y^2 + 6*x^3*y^2: (lts:  + 6*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 6*x^2*y + 4*x^3*y + 2*x*y^2 + 6*x^2*y^2 + 6*x^3*y^2: (lts:  + 6*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 6*x^2*y + 4*x^3*y + 2*x*y^2 + 6*x^2*y^2 + 6*x^3*y^2: (lts:  + 6*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3*x^2), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 + 2*x*y + 3*x^2*y + x^3*y + 2*x*y^2 + 3*x^2*y^2: (lts:  + 3*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 + 2*x*y + 3*x^2*y + x^3*y + 2*x*y^2 + 3*x^2*y^2: (lts:  + 3*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 + 2*x*y + 3*x^2*y + x^3*y + 2*x*y^2 + 3*x^2*y^2: (lts:  + 3*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 + 2*x*y + 3*x^2*y + x^3*y + 2*x*y^2 + 3*x^2*y^2: (lts:  + 3*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/2*x), rest 0
mdiv s = 3/2*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 + 1/2*x*y + 3/2*x^2*y + x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 + 1/2*x*y + 3/2*x^2*y + x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 + 1/2*x*y + 3/2*x^2*y + x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 + 1/2*x*y + 3/2*x^2*y + x^3*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 - 1/4*y + 1/4*x*y + 3/2*x^2*y + x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 - 1/4*y + 1/4*x*y + 3/2*x^2*y + x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 - 1/4*y + 1/4*x*y + 3/2*x^2*y + x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 - 1/4*y + 1/4*x*y + 3/2*x^2*y + x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 - 1/4*y + 1/4*x*y + 3/2*x^2*y + x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/4*x + 7/4*x^2 + 9/2*x^3 + 5*x^4 + 2*x^5 - 1/4*y + 1/4*x*y + 3/2*x^2*y + x^3*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1/2), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2), rest 0
multipleDivide:  - 4*x^4*y^2 - 4*x^3*y*z + 2*x^2*z^2 + 2*x^3*z^2 + 4*x^2*y*z^2 =  + ( - 4*x^3 + 4*x^2*z) * (x + x^2 + y*z) + (2*x^2 + 2*x^3) * (x*y + z + z^2) + ( - 2*x - 6*x^2 - 4*x^3) * (y + y^2 + x*z) + ( - 1/4 - 3/2*x - 3*x^2 + 2*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s = 2*x^5*y + 2*x^4*z - x^2*z^2 - 3*x^3*z^2: (lts:  - 3*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^5*y + 2*x^4*z - x^2*z^2 - 3*x^3*z^2: (lts:  - 3*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  - 3*x^3), rest 0
mdiv s = 3*x^4*y + 2*x^5*y + 3*x^3*z + 2*x^4*z - x^2*z^2: (lts:  - x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^4*y + 2*x^5*y + 3*x^3*z + 2*x^4*z - x^2*z^2: (lts:  - x^2*z^2) / (ltf[1]:  + z^2) = (quot:  - x^2), rest 0
mdiv s = x^3*y + 3*x^4*y + 2*x^5*y + x^2*z + 3*x^3*z + 2*x^4*z: (lts:  + 2*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3*y + 3*x^4*y + 2*x^5*y + x^2*z + 3*x^3*z + 2*x^4*z: (lts:  + 2*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^3*y + 3*x^4*y + 2*x^5*y + x^2*z + 3*x^3*z + 2*x^4*z: (lts:  + 2*x^4*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^3), rest 0
mdiv s =  - x^3*y + 3*x^4*y + 2*x^5*y - 2*x^3*y^2 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3*y + 3*x^4*y + 2*x^5*y - 2*x^3*y^2 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^3*y + 3*x^4*y + 2*x^5*y - 2*x^3*y^2 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 3*x^2), rest 0
mdiv s =  - 3*x^2*y - x^3*y + 3*x^4*y + 2*x^5*y - 3*x^2*y^2 - 2*x^3*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^2*y - x^3*y + 3*x^4*y + 2*x^5*y - 3*x^2*y^2 - 2*x^3*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^2*y - x^3*y + 3*x^4*y + 2*x^5*y - 3*x^2*y^2 - 2*x^3*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s =  - x*y - 3*x^2*y - x^3*y + 3*x^4*y + 2*x^5*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - 3*x^2*y - x^3*y + 3*x^4*y + 2*x^5*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - 3*x^2*y - x^3*y + 3*x^4*y + 2*x^5*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x*y - 3*x^2*y - x^3*y + 3*x^4*y + 2*x^5*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x^2), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y + 3*x^4*y + 2*x^5*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y + 3*x^4*y + 2*x^5*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y + 3*x^4*y + 2*x^5*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y + 3*x^4*y + 2*x^5*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y + 3*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y + 3*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y + 3*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y + 3*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y + 3*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y + 3*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y + 3*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2*y), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2*x), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
multipleDivide: 2*x^5*y + 2*x^4*z - x^2*z^2 - 3*x^3*z^2 =  + ( - x^2 - 3*x^3) * (x*y + z + z^2) + (x + 3*x^2 + 2*x^3) * (y + y^2 + x*z) + (x + x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/2*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/2 + 1/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - x^2 - x^3 + y^2 + y^3: (lts:  + y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 + y^2 + y^3: (lts:  + y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 + y^2 + y^3: (lts:  + y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 + y^2 + y^3: (lts:  + y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 + y^2 + y^3: (lts:  + y^3) / (ltf[4]:  - y^3) = (quot:  - 1), rest 0
multipleDivide:  - x^2 - x^3 + y^2 + y^3 =  + ( - 1) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s =  - x^2*y - x*z + y*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - 2*x^2*y - x*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - x^2 - x*y - 2*x^2*y - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 - x*y - 2*x^2*y - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 - x*y - 2*x^2*y - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - x^2 + y - x*y - 2*x^2*y + y^2: (lts:  + y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + y - x*y - 2*x^2*y + y^2: (lts:  + y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + y - x*y - 2*x^2*y + y^2: (lts:  + y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - x^2 + y - x*y - 2*x^2*y + y^2: (lts:  + y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x - x^2 + y - x*y - 2*x^2*y + y^2: (lts:  + y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x - x^2 + y - x*y - 2*x^2*y + y^2: (lts:  + y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 2), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1), rest 0
multipleDivide:  - x^2*y - x*z + y*z + y^2*z =  + (1 + y) * (x + x^2 + y*z) + ( - 1) * (y + y^2 + x*z) + (2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*y^3 - 2*y^4 - x*z - x^2*z + y*z + x*y*z + y^2*z: (lts:  + y^2*z) / (ltf[0]:  + y*z) = (quot:  + y), rest 0
mdiv s =  - x*y - x^2*y - 2*y^3 - 2*y^4 - x*z - x^2*z + y*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - x^3 - x*y - x^2*y - 2*y^3 - 2*y^4 - x*z - x^2*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - x^2*y - 2*y^3 - 2*y^4 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - x^2*y - 2*y^3 - 2*y^4 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x*y - x^2*y - 2*y^3 - 2*y^4 - x*z - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x^2*y + x*y^2 - 2*y^3 - 2*y^4 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x^2*y + x*y^2 - 2*y^3 - 2*y^4 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 - x^2*y + x*y^2 - 2*y^3 - 2*y^4 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - x^2*y + y^2 + x*y^2 - 2*y^3 - 2*y^4: (lts:  - 2*y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - x^2*y + y^2 + x*y^2 - 2*y^3 - 2*y^4: (lts:  - 2*y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - x^2*y + y^2 + x*y^2 - 2*y^3 - 2*y^4: (lts:  - 2*y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - x^2*y + y^2 + x*y^2 - 2*y^3 - 2*y^4: (lts:  - 2*y^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - x^2*y + y^2 + x*y^2 - 2*y^3 - 2*y^4: (lts:  - 2*y^4) / (ltf[4]:  - y^3) = (quot:  + 2*y), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x - 2*x^2 - x^3 + y - 3*x^2*y - 2*x^3*y + y^2 + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
multipleDivide:  - 2*y^3 - 2*y^4 - x*z - x^2*z + y*z + x*y*z + y^2*z =  + (1 + x + y) * (x + x^2 + y*z) + ( - 1 - x) * (y + y^2 + x*z) + ( - 1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (2*y) * (x^2 + x^3 - y^2 - y^3) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest = 0]
mdiv s =  - y^4 - y^5 - x^3*z - x^4*z + x*y^2*z: (lts:  + x*y^2*z) / (ltf[0]:  + y*z) = (quot:  + x*y), rest 0
mdiv s =  - x^2*y - x^3*y - y^4 - y^5 - x^3*z - x^4*z: (lts:  - x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2*y - x^3*y - y^4 - y^5 - x^3*z - x^4*z: (lts:  - x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2*y - x^3*y - y^4 - y^5 - x^3*z - x^4*z: (lts:  - x^4*z) / (ltf[2]:  + x*z) = (quot:  - x^3), rest 0
mdiv s =  - x^2*y + x^3*y^2 - y^4 - y^5 - x^3*z: (lts:  - x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2*y + x^3*y^2 - y^4 - y^5 - x^3*z: (lts:  - x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2*y + x^3*y^2 - y^4 - y^5 - x^3*z: (lts:  - x^3*z) / (ltf[2]:  + x*z) = (quot:  - x^2), rest 0
mdiv s = x^2*y^2 + x^3*y^2 - y^4 - y^5: (lts:  - y^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2*y^2 + x^3*y^2 - y^4 - y^5: (lts:  - y^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2*y^2 + x^3*y^2 - y^4 - y^5: (lts:  - y^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2*y^2 + x^3*y^2 - y^4 - y^5: (lts:  - y^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2*y^2 + x^3*y^2 - y^4 - y^5: (lts:  - y^5) / (ltf[4]:  - y^3) = (quot:  + y^2), rest 0
multipleDivide:  - y^4 - y^5 - x^3*z - x^4*z + x*y^2*z =  + (x*y) * (x + x^2 + y*z) + ( - x^2 - x^3) * (y + y^2 + x*z) + (y^2) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s = y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z - x*y*z + x^2*y*z + 6*x^3*y*z + 4*x^4*y*z: (lts:  + 4*x^4*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^4), rest 0
mdiv s =  - 4*x^5 - 4*x^6 + y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z - x*y*z + x^2*y*z + 6*x^3*y*z: (lts:  + 6*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 6*x^3), rest 0
mdiv s =  - 6*x^4 - 10*x^5 - 4*x^6 + y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z - x*y*z + x^2*y*z: (lts:  + x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + x^2), rest 0
mdiv s =  - x^3 - 7*x^4 - 10*x^5 - 4*x^6 + y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z - x*y*z: (lts:  - x*y*z) / (ltf[0]:  + y*z) = (quot:  - x), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 + y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z: (lts:  + 2*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 + y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z: (lts:  + 2*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 + y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z: (lts:  + 2*x^4*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^3), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - 2*x^3*y - 2*x^3*y^2 + y^3 + y^4 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - 2*x^3*y - 2*x^3*y^2 + y^3 + y^4 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - 2*x^3*y - 2*x^3*y^2 + y^3 + y^4 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 3*x^2), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - 3*x^2*y - 2*x^3*y - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4 + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - 3*x^2*y - 2*x^3*y - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4 + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - 3*x^2*y - 2*x^3*y - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4 + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4: (lts:  + y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4: (lts:  + y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4: (lts:  + y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4: (lts:  + y^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2 + y^3 + y^4: (lts:  + y^4) / (ltf[4]:  - y^3) = (quot:  - y), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 2*x^2*y - x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 2*x^2*y - x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 2*x^2*y - x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 - 7*x^4 - 10*x^5 - 4*x^6 - x*y - 2*x^2*y - x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x^2), rest 0
mdiv s = x^2 - x^3 - 8*x^4 - 10*x^5 - 4*x^6 - x*y - x^2*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - x^3 - 8*x^4 - 10*x^5 - 4*x^6 - x*y - x^2*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - x^3 - 8*x^4 - 10*x^5 - 4*x^6 - x*y - x^2*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 - x^3 - 8*x^4 - 10*x^5 - 4*x^6 - x*y - x^2*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 8*x^4 - 10*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + x), rest 0
multipleDivide: y^3 + y^4 + x^2*z + 3*x^3*z + 2*x^4*z - x*y*z + x^2*y*z + 6*x^3*y*z + 4*x^4*y*z =  + ( - x + x^2 + 6*x^3 + 4*x^4) * (x + x^2 + y*z) + (x + 3*x^2 + 2*x^3) * (y + y^2 + x*z) + (x + x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - y) * (x^2 + x^3 - y^2 - y^3) + (x) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - 4*x^4*y - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4*y - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^4*y - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[2]:  + x*z) = (quot:  + 10*x^3), rest 0
mdiv s =  - 10*x^3*y - 4*x^4*y - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z: (lts:  + 8*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 10*x^3*y - 4*x^4*y - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z: (lts:  + 8*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 10*x^3*y - 4*x^4*y - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z: (lts:  + 8*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 8*x^2), rest 0
mdiv s =  - 8*x^2*y - 10*x^3*y - 4*x^4*y - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 8*x^2*y - 10*x^3*y - 4*x^4*y - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 8*x^2*y - 10*x^3*y - 4*x^4*y - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 2*x), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 10*x^3*y - 4*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 10*x^3*y - 4*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 10*x^3*y - 4*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 10*x^3*y - 4*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x^3), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 8*x^3*y - 2*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 8*x^3*y - 2*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 8*x^3*y - 2*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 8*x^3*y - 2*x^4*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 4*x^2), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 4*x^3*y - 2*x^4*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 4*x^3*y - 2*x^4*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 4*x^3*y - 2*x^4*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 4*x^3*y - 2*x^4*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2*x), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2), rest 0
multipleDivide:  - 4*x^4*y - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z + 10*x^4*z =  + (2*x + 8*x^2 + 10*x^3) * (y + y^2 + x*z) + (2*x + 4*x^2 + 2*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/2 + 1/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 4*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z + 2*x^3*z + 4*x^2*y*z: (lts:  + 4*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^2), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 4*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 4*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 4*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z + 2*x^3*z: (lts:  + 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 2*x^2), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x^2*y - 6*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x^2*y - 6*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x^2*y - 6*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 2*x), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 2*x^2*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 2*x^2*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 2*x^2*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 2*x^2*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x*y), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 4*x^2*y - 2*x^3*y - 4*x^2*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 4*x^2*y - 2*x^3*y - 4*x^2*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 4*x^2*y - 2*x^3*y - 4*x^2*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - 2*x*y - 4*x^2*y - 2*x^3*y - 4*x^2*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - y), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - y^2 - x*y^2 - 4*x^2*y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - y^2 - x*y^2 - 4*x^2*y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - y^2 - x*y^2 - 4*x^2*y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - y^2 - x*y^2 - 4*x^2*y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - y^2 - x*y^2 - 4*x^2*y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
mdiv s =  - x^2 - 5*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 5*x^3 - 4*x^4 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x), rest 0
mdiv s =  - 3*x^2 - 7*x^3 - 4*x^4 + x*y - x^2*y - 2*x^3*y + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 7*x^3 - 4*x^4 + x*y - x^2*y - 2*x^3*y + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 7*x^3 - 4*x^4 + x*y - x^2*y - 2*x^3*y + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 7*x^3 - 4*x^4 + x*y - x^2*y - 2*x^3*y + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s = 1/2*x - 5/2*x^2 - 7*x^3 - 4*x^4 - 1/2*y + 1/2*x*y - x^2*y - 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x - 5/2*x^2 - 7*x^3 - 4*x^4 - 1/2*y + 1/2*x*y - x^2*y - 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x - 5/2*x^2 - 7*x^3 - 4*x^4 - 1/2*y + 1/2*x*y - x^2*y - 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x - 5/2*x^2 - 7*x^3 - 4*x^4 - 1/2*y + 1/2*x*y - x^2*y - 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x - 5/2*x^2 - 7*x^3 - 4*x^4 - 1/2*y + 1/2*x*y - x^2*y - 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x - 5/2*x^2 - 7*x^3 - 4*x^4 - 1/2*y + 1/2*x*y - x^2*y - 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 2), rest 0
multipleDivide:  - 4*x^2*y^2 - 4*x^2*y^3 + 2*x^2*z + 2*x^3*z + 4*x^2*y*z =  + (4*x^2) * (x + x^2 + y*z) + (2*x + 2*x^2) * (y + y^2 + x*z) + ( - 1/2 + 2*x - y + 2*x*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * (x^2 + x^3 - y^2 - y^3) + ( - 1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^3*y + 2*x^3*y^2 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3*y + 2*x^3*y^2 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3*y + 2*x^3*y^2 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 3*x^2), rest 0
mdiv s = 3*x^2*y + 2*x^3*y + 3*x^2*y^2 + 2*x^3*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^2*y + 2*x^3*y + 3*x^2*y^2 + 2*x^3*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^2*y + 2*x^3*y + 3*x^2*y^2 + 2*x^3*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s = x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x^2), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y + x^3*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y + x^3*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y + x^3*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y + x^3*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3/2*x^3 + x^4: (lts:  + x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1/2), rest 0
multipleDivide: 2*x^3*y + 2*x^3*y^2 - x^2*z - 3*x^3*z =  + ( - x - 3*x^2) * (y + y^2 + x*z) + ( - x - x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/4) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1/2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^2*y + 2*x^3*y + x*z + x^2*z - y*z - x*y*z - y^2*z: (lts:  - y^2*z) / (ltf[0]:  + y*z) = (quot:  - y), rest 0
mdiv s = x*y + 3*x^2*y + 2*x^3*y + x*z + x^2*z - y*z - x*y*z: (lts:  - x*y*z) / (ltf[0]:  + y*z) = (quot:  - x), rest 0
mdiv s = x^2 + x^3 + x*y + 3*x^2*y + 2*x^3*y + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + 2*x^2 + x^3 + x*y + 3*x^2*y + 2*x^3*y + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + x*y + 3*x^2*y + 2*x^3*y + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + x*y + 3*x^2*y + 2*x^3*y + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + 2*x^2 + x^3 + 3*x^2*y + 2*x^3*y - x*y^2 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + 3*x^2*y + 2*x^3*y - x*y^2 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + 3*x^2*y + 2*x^3*y - x*y^2 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1), rest 0
multipleDivide: 2*x^2*y + 2*x^3*y + x*z + x^2*z - y*z - x*y*z - y^2*z =  + ( - 1 - x - y) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest = 0]
mdiv s = 2*x^2*y^3 + 2*x*y^2*z + x*z^2 + x^2*z^2 - y*z^2 - x*y*z^2 - y^2*z^2: (lts:  - y^2*z^2) / (ltf[0]:  + y*z) = (quot:  - y*z), rest 0
mdiv s = 2*x^2*y^3 + x*y*z + x^2*y*z + 2*x*y^2*z + x*z^2 + x^2*z^2 - y*z^2 - x*y*z^2: (lts:  - x*y*z^2) / (ltf[0]:  + y*z) = (quot:  - x*z), rest 0
mdiv s = 2*x^2*y^3 + x^2*z + x^3*z + x*y*z + x^2*y*z + 2*x*y^2*z + x*z^2 + x^2*z^2 - y*z^2: (lts:  - y*z^2) / (ltf[0]:  + y*z) = (quot:  - z), rest 0
mdiv s = 2*x^2*y^3 + x*z + 2*x^2*z + x^3*z + x*y*z + x^2*y*z + 2*x*y^2*z + x*z^2 + x^2*z^2: (lts:  + x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2*y^3 + x*z + 2*x^2*z + x^3*z + x*y*z + x^2*y*z + 2*x*y^2*z + x*z^2 + x^2*z^2: (lts:  + x^2*z^2) / (ltf[1]:  + z^2) = (quot:  + x^2), rest 0
mdiv s =  - x^3*y + 2*x^2*y^3 + x*z + x^2*z + x^3*z + x*y*z + x^2*y*z + 2*x*y^2*z + x*z^2: (lts:  + x*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3*y + 2*x^2*y^3 + x*z + x^2*z + x^3*z + x*y*z + x^2*y*z + 2*x*y^2*z + x*z^2: (lts:  + x*z^2) / (ltf[1]:  + z^2) = (quot:  + x), rest 0
mdiv s =  - x^2*y - x^3*y + 2*x^2*y^3 + x^2*z + x^3*z + x*y*z + x^2*y*z + 2*x*y^2*z: (lts:  + 2*x*y^2*z) / (ltf[0]:  + y*z) = (quot:  + 2*x*y), rest 0
mdiv s =  - 3*x^2*y - 3*x^3*y + 2*x^2*y^3 + x^2*z + x^3*z + x*y*z + x^2*y*z: (lts:  + x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + x^2), rest 0
mdiv s =  - x^3 - x^4 - 3*x^2*y - 3*x^3*y + 2*x^2*y^3 + x^2*z + x^3*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3*x^2*y - 3*x^3*y + 2*x^2*y^3 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3*x^2*y - 3*x^3*y + 2*x^2*y^3 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3*x^2*y - 3*x^3*y + 2*x^2*y^3 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[2]:  + x*z) = (quot:  + x^2), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 4*x^2*y - 3*x^3*y - x^2*y^2 + 2*x^2*y^3 + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 4*x^2*y - 3*x^3*y - x^2*y^2 + 2*x^2*y^3 + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 4*x^2*y - 3*x^3*y - x^2*y^2 + 2*x^2*y^3 + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 4*x^2*y - 3*x^3*y - x*y^2 - x^2*y^2 + 2*x^2*y^3: (lts:  + 2*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 4*x^2*y - 3*x^3*y - x*y^2 - x^2*y^2 + 2*x^2*y^3: (lts:  + 2*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 4*x^2*y - 3*x^3*y - x*y^2 - x^2*y^2 + 2*x^2*y^3: (lts:  + 2*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 4*x^2*y - 3*x^3*y - x*y^2 - x^2*y^2 + 2*x^2*y^3: (lts:  + 2*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - x*y), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 3*x^2*y - 2*x^3*y - 2*x*y^2 - 2*x^2*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 3*x^2*y - 2*x^3*y - 2*x*y^2 - 2*x^2*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 3*x^2*y - 2*x^3*y - 2*x*y^2 - 2*x^2*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x*y - 3*x^2*y - 2*x^3*y - 2*x*y^2 - 2*x^2*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2*y), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y + 1/2*y^2 - 3/2*x*y^2 - 2*x^2*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y + 1/2*y^2 - 3/2*x*y^2 - 2*x^2*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y + 1/2*y^2 - 3/2*x*y^2 - 2*x^2*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y + 1/2*y^2 - 3/2*x*y^2 - 2*x^2*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y + 1/2*y^2 - 3/2*x*y^2 - 2*x^2*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[4]:  - y^3) = (quot:  - 1/2), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y - 3/2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y - 3/2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y - 3/2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 - 3/2*x*y - 7/2*x^2*y - 2*x^3*y - 3/2*x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s =  - 3/2*x^2 - 5/2*x^3 - x^4 - 1/2*x*y - 5/2*x^2*y - 2*x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 5/2*x^3 - x^4 - 1/2*x*y - 5/2*x^2*y - 2*x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 5/2*x^3 - x^4 - 1/2*x*y - 5/2*x^2*y - 2*x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 5/2*x^3 - x^4 - 1/2*x*y - 5/2*x^2*y - 2*x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 5/2*x^3 - x^4 + 1/4*y - 1/4*x*y - 5/2*x^2*y - 2*x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 5/2*x^3 - x^4 + 1/4*y - 1/4*x*y - 5/2*x^2*y - 2*x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 5/2*x^3 - x^4 + 1/4*y - 1/4*x*y - 5/2*x^2*y - 2*x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 5/2*x^3 - x^4 + 1/4*y - 1/4*x*y - 5/2*x^2*y - 2*x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 5/2*x^3 - x^4 + 1/4*y - 1/4*x*y - 5/2*x^2*y - 2*x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 5/2*x^3 - x^4 + 1/4*y - 1/4*x*y - 5/2*x^2*y - 2*x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1/2), rest 0
multipleDivide: 2*x^2*y^3 + 2*x*y^2*z + x*z^2 + x^2*z^2 - y*z^2 - x*y*z^2 - y^2*z^2 =  + (x + x^2 + 2*x*y - z - x*z - y*z) * (x + x^2 + y*z) + (x + x^2) * (x*y + z + z^2) + (x + x^2) * (y + y^2 + x*z) + (1/4 + x + 1/2*y - x*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/2) * (x^2 + x^3 - y^2 - y^3) + (1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1/4) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1/2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*y^3 + 2*y^4 + x*z + x^2*z - y*z - x*y*z - y^2*z: (lts:  - y^2*z) / (ltf[0]:  + y*z) = (quot:  - y), rest 0
mdiv s = x*y + x^2*y + 2*y^3 + 2*y^4 + x*z + x^2*z - y*z - x*y*z: (lts:  - x*y*z) / (ltf[0]:  + y*z) = (quot:  - x), rest 0
mdiv s = x^2 + x^3 + x*y + x^2*y + 2*y^3 + 2*y^4 + x*z + x^2*z - y*z: (lts:  - y*z) / (ltf[0]:  + y*z) = (quot:  - 1), rest 0
mdiv s = x + 2*x^2 + x^3 + x*y + x^2*y + 2*y^3 + 2*y^4 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + x*y + x^2*y + 2*y^3 + 2*y^4 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + x*y + x^2*y + 2*y^3 + 2*y^4 + x*z + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s = x + 2*x^2 + x^3 + x^2*y - x*y^2 + 2*y^3 + 2*y^4 + x*z: (lts:  + x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + x^2*y - x*y^2 + 2*y^3 + 2*y^4 + x*z: (lts:  + x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 + x^2*y - x*y^2 + 2*y^3 + 2*y^4 + x*z: (lts:  + x*z) / (ltf[2]:  + x*z) = (quot:  + 1), rest 0
mdiv s = x + 2*x^2 + x^3 - y + x^2*y - y^2 - x*y^2 + 2*y^3 + 2*y^4: (lts:  + 2*y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + x^2*y - y^2 - x*y^2 + 2*y^3 + 2*y^4: (lts:  + 2*y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + x^2*y - y^2 - x*y^2 + 2*y^3 + 2*y^4: (lts:  + 2*y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + x^2*y - y^2 - x*y^2 + 2*y^3 + 2*y^4: (lts:  + 2*y^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + x^2*y - y^2 - x*y^2 + 2*y^3 + 2*y^4: (lts:  + 2*y^4) / (ltf[4]:  - y^3) = (quot:  - 2*y), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x + 2*x^2 + x^3 - y + 3*x^2*y + 2*x^3*y - y^2 - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + x^3 - 1/2*y + 1/2*x*y + 3*x^2*y + 2*x^3*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1), rest 0
multipleDivide: 2*y^3 + 2*y^4 + x*z + x^2*z - y*z - x*y*z - y^2*z =  + ( - 1 - x - y) * (x + x^2 + y*z) + (1 + x) * (y + y^2 + x*z) + (1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 2*y) * (x^2 + x^3 - y^2 - y^3) + ( - 1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + [Rest = 0]
mdiv s = 2*x^3 + 2*x^4 - x*y - x^2*y + y^2 - x*y^2 + y^3: (lts:  + y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - x*y - x^2*y + y^2 - x*y^2 + y^3: (lts:  + y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - x*y - x^2*y + y^2 - x*y^2 + y^3: (lts:  + y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - x*y - x^2*y + y^2 - x*y^2 + y^3: (lts:  + y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - x*y - x^2*y + y^2 - x*y^2 + y^3: (lts:  + y^3) / (ltf[4]:  - y^3) = (quot:  - 1), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1), rest 0
multipleDivide: 2*x^3 + 2*x^4 - x*y - x^2*y + y^2 - x*y^2 + y^3 =  + (1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * (x^2 + x^3 - y^2 - y^3) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = x - x^2 - 6*x^3 - 4*x^4 - y + x*y - 2*x^2*y - 12*x^3*y - 8*x^4*y - y^2: (lts:  - y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - x^2 - 6*x^3 - 4*x^4 - y + x*y - 2*x^2*y - 12*x^3*y - 8*x^4*y - y^2: (lts:  - y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - x^2 - 6*x^3 - 4*x^4 - y + x*y - 2*x^2*y - 12*x^3*y - 8*x^4*y - y^2: (lts:  - y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - x^2 - 6*x^3 - 4*x^4 - y + x*y - 2*x^2*y - 12*x^3*y - 8*x^4*y - y^2: (lts:  - y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x - x^2 - 6*x^3 - 4*x^4 - y + x*y - 2*x^2*y - 12*x^3*y - 8*x^4*y - y^2: (lts:  - y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x - x^2 - 6*x^3 - 4*x^4 - y + x*y - 2*x^2*y - 12*x^3*y - 8*x^4*y - y^2: (lts:  - y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 2), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 8*x^3 - 4*x^4 - 8*x^2*y - 16*x^3*y - 8*x^4*y: (lts:  - 8*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 2*x), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 8*x^2*y - 8*x^3*y: (lts:  - 8*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 2), rest 0
multipleDivide: x - x^2 - 6*x^3 - 4*x^4 - y + x*y - 2*x^2*y - 12*x^3*y - 8*x^4*y - y^2 =  + ( - 2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (2 + 2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^5 - 2*x^6 + 2*x^4*y + 2*x^5*y - 2*x^2*y^2 - 8*x^3*y^2 - 8*x^4*y^2: (lts:  - 8*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^5 - 2*x^6 + 2*x^4*y + 2*x^5*y - 2*x^2*y^2 - 8*x^3*y^2 - 8*x^4*y^2: (lts:  - 8*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^5 - 2*x^6 + 2*x^4*y + 2*x^5*y - 2*x^2*y^2 - 8*x^3*y^2 - 8*x^4*y^2: (lts:  - 8*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^5 - 2*x^6 + 2*x^4*y + 2*x^5*y - 2*x^2*y^2 - 8*x^3*y^2 - 8*x^4*y^2: (lts:  - 8*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 4*x^3), rest 0
mdiv s =  - 4*x^4 - 6*x^5 - 2*x^6 + 4*x^3*y + 6*x^4*y + 2*x^5*y - 2*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 6*x^5 - 2*x^6 + 4*x^3*y + 6*x^4*y + 2*x^5*y - 2*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 6*x^5 - 2*x^6 + 4*x^3*y + 6*x^4*y + 2*x^5*y - 2*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 6*x^5 - 2*x^6 + 4*x^3*y + 6*x^4*y + 2*x^5*y - 2*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x^2), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + 2*x^2*y + 6*x^3*y + 6*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + 2*x^2*y + 6*x^3*y + 6*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + 2*x^2*y + 6*x^3*y + 6*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + 2*x^2*y + 6*x^3*y + 6*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + 2*x^2*y + 6*x^3*y + 6*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + 2*x^2*y + 6*x^3*y + 6*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + 2*x^2*y + 6*x^3*y + 6*x^4*y + 2*x^5*y: (lts:  + 2*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2*y), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 6*x^4 - 6*x^5 - 2*x^6 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4*x), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 5/2*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4), rest 0
mdiv s =  - 1/2*x^2 - 3*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3*x^3 - 13/2*x^4 - 6*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2*x), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1/4), rest 0
multipleDivide:  - 2*x^5 - 2*x^6 + 2*x^4*y + 2*x^5*y - 2*x^2*y^2 - 8*x^3*y^2 - 8*x^4*y^2 =  + (2*x^2 + 4*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/4 + 1/2*x - 1/2*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/4 - 1/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^3 - 2*x^4 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1), rest 0
multipleDivide:  - 2*x^3 - 2*x^4 - 2*x^2*y^2 =  + ( - 1/2 + x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = x^4 + x^5 - x^3*y - x^4*y + x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^4 + x^5 - x^3*y - x^4*y + x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^4 + x^5 - x^3*y - x^4*y + x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^4 + x^5 - x^3*y - x^4*y + x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x^2), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^3 + 2*x^4 + x^5 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4*x), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 5/2*x^4 + x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1/4), rest 0
multipleDivide: x^4 + x^5 - x^3*y - x^4*y + x^2*y^2 + 2*x^3*y^2 =  + ( - x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/4) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/4 + 1/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s = x*y^2 + x^2*y^2 + x^2*z + x^3*z - y^2*z: (lts:  - y^2*z) / (ltf[0]:  + y*z) = (quot:  - y), rest 0
mdiv s = x*y + x^2*y + x*y^2 + x^2*y^2 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y + x^2*y + x*y^2 + x^2*y^2 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y + x^2*y + x*y^2 + x^2*y^2 + x^2*z + x^3*z: (lts:  + x^3*z) / (ltf[2]:  + x*z) = (quot:  + x^2), rest 0
mdiv s = x*y + x*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y + x*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y + x*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
multipleDivide: x*y^2 + x^2*y^2 + x^2*z + x^3*z - y^2*z =  + ( - y) * (x + x^2 + y*z) + (x + x^2) * (y + y^2 + x*z) + [Rest = 0]
mdiv s = x*y^4 + y^3*z + x^2*z^2 + x^3*z^2 - y^2*z^2: (lts:  - y^2*z^2) / (ltf[0]:  + y*z) = (quot:  - y*z), rest 0
mdiv s = x*y^4 + x*y*z + x^2*y*z + y^3*z + x^2*z^2 + x^3*z^2: (lts:  + x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y^4 + x*y*z + x^2*y*z + y^3*z + x^2*z^2 + x^3*z^2: (lts:  + x^3*z^2) / (ltf[1]:  + z^2) = (quot:  + x^3), rest 0
mdiv s =  - x^4*y + x*y^4 - x^3*z + x*y*z + x^2*y*z + y^3*z + x^2*z^2: (lts:  + x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^4*y + x*y^4 - x^3*z + x*y*z + x^2*y*z + y^3*z + x^2*z^2: (lts:  + x^2*z^2) / (ltf[1]:  + z^2) = (quot:  + x^2), rest 0
mdiv s =  - x^3*y - x^4*y + x*y^4 - x^2*z - x^3*z + x*y*z + x^2*y*z + y^3*z: (lts:  + y^3*z) / (ltf[0]:  + y*z) = (quot:  + y^2), rest 0
mdiv s =  - x^3*y - x^4*y - x*y^2 - x^2*y^2 + x*y^4 - x^2*z - x^3*z + x*y*z + x^2*y*z: (lts:  + x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + x^2), rest 0
mdiv s =  - x^3 - x^4 - x^3*y - x^4*y - x*y^2 - x^2*y^2 + x*y^4 - x^2*z - x^3*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^3*y - x^4*y - x*y^2 - x^2*y^2 + x*y^4 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^3*y - x^4*y - x*y^2 - x^2*y^2 + x*y^4 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^3*y - x^4*y - x*y^2 - x^2*y^2 + x*y^4 - x^2*z - x^3*z: (lts:  - x^3*z) / (ltf[2]:  + x*z) = (quot:  - x^2), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x^2*y - x^3*y - x^4*y - x*y^2 + x*y^4 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x^2*y - x^3*y - x^4*y - x*y^2 + x*y^4 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x^2*y - x^3*y - x^4*y - x*y^2 + x*y^4 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + x*y^4: (lts:  + x*y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + x*y^4: (lts:  + x*y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + x*y^4: (lts:  + x*y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + x*y^4: (lts:  + x*y^4) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2*y^2), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*y^3 - 1/2*x*y^3 - 1/2*y^4: (lts:  - 1/2*y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*y^3 - 1/2*x*y^3 - 1/2*y^4: (lts:  - 1/2*y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*y^3 - 1/2*x*y^3 - 1/2*y^4: (lts:  - 1/2*y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*y^3 - 1/2*x*y^3 - 1/2*y^4: (lts:  - 1/2*y^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + x^2*y - x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*y^3 - 1/2*x*y^3 - 1/2*y^4: (lts:  - 1/2*y^4) / (ltf[4]:  - y^3) = (quot:  + 1/2*y), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + 1/2*x^2*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*x*y^3: (lts:  - 1/2*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + 1/2*x^2*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*x*y^3: (lts:  - 1/2*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + 1/2*x^2*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*x*y^3: (lts:  - 1/2*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + x*y + 1/2*x^2*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2 + 1/2*x^2*y^2 - 1/2*x*y^3: (lts:  - 1/2*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4*y), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 1/4*y^2 + 3/4*x*y^2 + 1/2*x^2*y^2 + 1/4*y^3: (lts:  + 1/4*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 1/4*y^2 + 3/4*x*y^2 + 1/2*x^2*y^2 + 1/4*y^3: (lts:  + 1/4*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 1/4*y^2 + 3/4*x*y^2 + 1/2*x^2*y^2 + 1/4*y^3: (lts:  + 1/4*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 1/4*y^2 + 3/4*x*y^2 + 1/2*x^2*y^2 + 1/4*y^3: (lts:  + 1/4*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 1/4*y^2 + 3/4*x*y^2 + 1/2*x^2*y^2 + 1/4*y^3: (lts:  + 1/4*y^3) / (ltf[4]:  - y^3) = (quot:  - 1/4), rest 0
mdiv s =  - 3/4*x^2 - 7/4*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 3/4*x*y^2 + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/4*x^2 - 7/4*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 3/4*x*y^2 + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/4*x^2 - 7/4*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 3/4*x*y^2 + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/4*x^2 - 7/4*x^3 - x^4 + 3/4*x*y + 1/4*x^2*y - 3/2*x^3*y - x^4*y + 3/4*x*y^2 + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4*x), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 + 1/2*x*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 + 1/2*x*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 + 1/2*x*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4 + 1/2*x*y - 3/2*x^3*y - x^4*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4), rest 0
mdiv s = 1/4*x - 1/4*x^2 - 3/2*x^3 - x^4 - 1/4*y + 1/4*x*y - 3/2*x^3*y - x^4*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 - 3/2*x^3 - x^4 - 1/4*y + 1/4*x*y - 3/2*x^3*y - x^4*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 - 3/2*x^3 - x^4 - 1/4*y + 1/4*x*y - 3/2*x^3*y - x^4*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 - 3/2*x^3 - x^4 - 1/4*y + 1/4*x*y - 3/2*x^3*y - x^4*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 - 3/2*x^3 - x^4 - 1/4*y + 1/4*x*y - 3/2*x^3*y - x^4*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 - 3/2*x^3 - x^4 - 1/4*y + 1/4*x*y - 3/2*x^3*y - x^4*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - 3/2*x^2*y - 5/2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4*x), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 3/2*x^3 - 1/2*x^4 - 3/2*x^2*y - 3/2*x^3*y: (lts:  - 3/2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 3/8), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 3/4*x^3 - 1/2*x^4: (lts:  - 1/2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1/4), rest 0
multipleDivide: x*y^4 + y^3*z + x^2*z^2 + x^3*z^2 - y^2*z^2 =  + (x + x^2 + y^2 - y*z) * (x + x^2 + y*z) + (x^2 + x^3) * (x*y + z + z^2) + ( - x - x^2) * (y + y^2 + x*z) + ( - 1/4 - 1/4*x + 1/4*y - 1/2*y^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/4 + 1/2*y) * (x^2 + x^3 - y^2 - y^3) + ( - 1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (3/8 + 1/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1/4) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = y^4 + y^5 + x^3*z + x^4*z - x*y^2*z: (lts:  - x*y^2*z) / (ltf[0]:  + y*z) = (quot:  - x*y), rest 0
mdiv s = x^2*y + x^3*y + y^4 + y^5 + x^3*z + x^4*z: (lts:  + x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2*y + x^3*y + y^4 + y^5 + x^3*z + x^4*z: (lts:  + x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2*y + x^3*y + y^4 + y^5 + x^3*z + x^4*z: (lts:  + x^4*z) / (ltf[2]:  + x*z) = (quot:  + x^3), rest 0
mdiv s = x^2*y - x^3*y^2 + y^4 + y^5 + x^3*z: (lts:  + x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2*y - x^3*y^2 + y^4 + y^5 + x^3*z: (lts:  + x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2*y - x^3*y^2 + y^4 + y^5 + x^3*z: (lts:  + x^3*z) / (ltf[2]:  + x*z) = (quot:  + x^2), rest 0
mdiv s =  - x^2*y^2 - x^3*y^2 + y^4 + y^5: (lts:  + y^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2*y^2 - x^3*y^2 + y^4 + y^5: (lts:  + y^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2*y^2 - x^3*y^2 + y^4 + y^5: (lts:  + y^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2*y^2 - x^3*y^2 + y^4 + y^5: (lts:  + y^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2*y^2 - x^3*y^2 + y^4 + y^5: (lts:  + y^5) / (ltf[4]:  - y^3) = (quot:  - y^2), rest 0
multipleDivide: y^4 + y^5 + x^3*z + x^4*z - x*y^2*z =  + ( - x*y) * (x + x^2 + y*z) + (x^2 + x^3) * (y + y^2 + x*z) + ( - y^2) * (x^2 + x^3 - y^2 - y^3) + [Rest = 0]
mdiv s =  - 2*x^3 - 2*x^4 + x*y + x^2*y - y^2 + x*y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + x*y + x^2*y - y^2 + x*y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + x*y + x^2*y - y^2 + x*y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + x*y + x^2*y - y^2 + x*y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + x*y + x^2*y - y^2 + x*y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1), rest 0
multipleDivide:  - 2*x^3 - 2*x^4 + x*y + x^2*y - y^2 + x*y^2 - y^3 =  + ( - 1/2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * (x^2 + x^3 - y^2 - y^3) + ( - 1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = x^2 + x^3 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 6*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 6*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 6*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 6*x^2*y^2 - 4*x^3*y^2: (lts:  - 4*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x^2), rest 0
mdiv s = x^2 - x^3 - 2*x^4 - x*y - x^2*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - x^3 - 2*x^4 - x*y - x^2*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - x^3 - 2*x^4 - x*y - x^2*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 - x^3 - 2*x^4 - x*y - x^2*y - x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x - 1/2*x^2 - 3*x^3 - 2*x^4 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 4*x^3 - 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1), rest 0
multipleDivide: x^2 + x^3 - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 6*x^2*y^2 - 4*x^3*y^2 =  + ( - 1/2 + 2*x + 2*x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - 4*x^7 - 4*x^8 + 4*x^5*y^2 - 2*x^2*y^3 - 8*x^3*y^3 - 10*x^4*y^3: (lts:  - 10*x^4*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 4*x^5*y^2 - 2*x^2*y^3 - 8*x^3*y^3 - 10*x^4*y^3: (lts:  - 10*x^4*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 4*x^5*y^2 - 2*x^2*y^3 - 8*x^3*y^3 - 10*x^4*y^3: (lts:  - 10*x^4*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 4*x^5*y^2 - 2*x^2*y^3 - 8*x^3*y^3 - 10*x^4*y^3: (lts:  - 10*x^4*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 5*x^3*y), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 5*x^4*y - 5*x^5*y + 5*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 2*x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 5*x^4*y - 5*x^5*y + 5*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 2*x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 5*x^4*y - 5*x^5*y + 5*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 2*x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 5*x^4*y - 5*x^5*y + 5*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 2*x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/2*x^2*y), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 3/2*x^3*y - 13/2*x^4*y - 5*x^5*y + 3/2*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 3/2*x^3*y - 13/2*x^4*y - 5*x^5*y + 3/2*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 3/2*x^3*y - 13/2*x^4*y - 5*x^5*y + 3/2*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 3/2*x^3*y - 13/2*x^4*y - 5*x^5*y + 3/2*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4*x*y), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 1/4*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/4*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 1/4*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/4*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 1/4*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/4*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 - 1/4*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/4*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/8*y), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y - 1/8*y^2 + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y - 1/8*y^2 + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y - 1/8*y^2 + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y - 1/8*y^2 + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y - 1/8*y^2 + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[4]:  - y^3) = (quot:  + 1/8), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2: (lts:  + 4*x^5*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2: (lts:  + 4*x^5*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2: (lts:  + 4*x^5*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 13/2*x^4*y - 5*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 5*x^4*y^2 + 4*x^5*y^2: (lts:  + 4*x^5*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x^4), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 17/2*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 3*x^4*y^2: (lts:  + 3*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 17/2*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 3*x^4*y^2: (lts:  + 3*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 17/2*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 3*x^4*y^2: (lts:  + 3*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 7/4*x^3*y - 17/2*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 13/2*x^3*y^2 + 3*x^4*y^2: (lts:  + 3*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/2*x^3), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 3/2*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 13/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 5*x^3*y^2: (lts:  + 5*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 3/2*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 13/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 5*x^3*y^2: (lts:  + 5*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 3/2*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 13/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 5*x^3*y^2: (lts:  + 5*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 3/2*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 1/8*x^2*y - 13/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 + 7/4*x^2*y^2 + 5*x^3*y^2: (lts:  + 5*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 5/2*x^2), rest 0
mdiv s =  - 1/8*x^2 + 19/8*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 21/8*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 - 3/4*x^2*y^2: (lts:  - 3/4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 + 19/8*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 21/8*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 - 3/4*x^2*y^2: (lts:  - 3/4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 + 19/8*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 21/8*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 - 3/4*x^2*y^2: (lts:  - 3/4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 + 19/8*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/8*x*y - 21/8*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/8*x*y^2 - 3/4*x^2*y^2: (lts:  - 3/4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/8*x), rest 0
mdiv s =  - 1/2*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/2*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/2*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/2*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 + 1/2*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y + 1/2*x*y^2: (lts:  + 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4), rest 0
mdiv s = 1/4*x - 1/4*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*y + 1/4*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*y + 1/4*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*y + 1/4*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*y + 1/4*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*y + 1/4*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/4*x - 1/4*x^2 + 2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*y + 1/4*x*y - 9/4*x^2*y - 23/4*x^3*y - 10*x^4*y - 7*x^5*y - 1/4*y^2: (lts:  - 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1/2), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 15/4*x^2*y - 27/4*x^3*y - 10*x^4*y - 7*x^5*y: (lts:  - 7*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 15/4*x^2*y - 27/4*x^3*y - 10*x^4*y - 7*x^5*y: (lts:  - 7*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 15/4*x^2*y - 27/4*x^3*y - 10*x^4*y - 7*x^5*y: (lts:  - 7*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 15/4*x^2*y - 27/4*x^3*y - 10*x^4*y - 7*x^5*y: (lts:  - 7*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 15/4*x^2*y - 27/4*x^3*y - 10*x^4*y - 7*x^5*y: (lts:  - 7*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 15/4*x^2*y - 27/4*x^3*y - 10*x^4*y - 7*x^5*y: (lts:  - 7*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 15/4*x^2*y - 27/4*x^3*y - 10*x^4*y - 7*x^5*y: (lts:  - 7*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  + 7/4*y), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 + 3/2*x^3 + 4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y + 29/4*x^3*y + 15/2*x^4*y: (lts:  + 15/2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 15/8*x), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 9/4*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8 - 1/4*x^2*y - 1/4*x^3*y: (lts:  - 1/4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/16), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8: (lts:  - 4*x^8) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8: (lts:  - 4*x^8) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8: (lts:  - 4*x^8) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8: (lts:  - 4*x^8) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8: (lts:  - 4*x^8) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8: (lts:  - 4*x^8) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 7/2*x^5 + 2*x^6 - 4*x^7 - 4*x^8: (lts:  - 4*x^8) / (ltf[6]:  - 4*x^5) = (quot:  + x^3), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 11/2*x^5 + 10*x^6 + 6*x^7: (lts:  + 6*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 11/2*x^5 + 10*x^6 + 6*x^7: (lts:  + 6*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 11/2*x^5 + 10*x^6 + 6*x^7: (lts:  + 6*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 11/2*x^5 + 10*x^6 + 6*x^7: (lts:  + 6*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 11/2*x^5 + 10*x^6 + 6*x^7: (lts:  + 6*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 11/2*x^5 + 10*x^6 + 6*x^7: (lts:  + 6*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 + 1/4*x^4 + 11/2*x^5 + 10*x^6 + 6*x^7: (lts:  + 6*x^7) / (ltf[6]:  - 4*x^5) = (quot:  - 3/2*x^2), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 - 11/4*x^4 - 13/2*x^5 - 5*x^6: (lts:  - 5*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 - 11/4*x^4 - 13/2*x^5 - 5*x^6: (lts:  - 5*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 - 11/4*x^4 - 13/2*x^5 - 5*x^6: (lts:  - 5*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 - 11/4*x^4 - 13/2*x^5 - 5*x^6: (lts:  - 5*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 - 11/4*x^4 - 13/2*x^5 - 5*x^6: (lts:  - 5*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 - 11/4*x^4 - 13/2*x^5 - 5*x^6: (lts:  - 5*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 - 17/8*x^3 - 11/4*x^4 - 13/2*x^5 - 5*x^6: (lts:  - 5*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + 5/4*x), rest 0
mdiv s =  - 7/8*x^2 + 3/8*x^3 + 29/4*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 + 3/8*x^3 + 29/4*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 + 3/8*x^3 + 29/4*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 + 3/8*x^3 + 29/4*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 + 3/8*x^3 + 29/4*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 + 3/8*x^3 + 29/4*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 7/8*x^2 + 3/8*x^3 + 29/4*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 3/2), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 31/8*x^2 - 93/8*x^3 - 31/4*x^4: (lts:  - 31/4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 31/8), rest 0
multipleDivide:  - 4*x^7 - 4*x^8 + 4*x^5*y^2 - 2*x^2*y^3 - 8*x^3*y^3 - 10*x^4*y^3 =  + ( - 1/4 + 3/8*x - 5/2*x^2 - 3/2*x^3 - 2*x^4 - 1/8*y + 1/4*x*y + 3/2*x^2*y + 5*x^3*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/8) * (x^2 + x^3 - y^2 - y^3) + ( - 1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 3/2 + 5/4*x - 3/2*x^2 + x^3 + 7/4*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/16 - 15/8*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 31/8) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y^2 + 2*x^3*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y^2 + 2*x^3*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y^2 + 2*x^3*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y^2 + 2*x^3*y^2 - 4*x^2*y^3: (lts:  - 4*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x*y), rest 0
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y - 2*x^3*y + 2*x*y^2 + 2*x^3*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y - 2*x^3*y + 2*x*y^2 + 2*x^3*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y - 2*x^3*y + 2*x*y^2 + 2*x^3*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 - 2*x^2*y - 2*x^3*y + 2*x*y^2 + 2*x^3*y^2 + 2*x*y^3: (lts:  + 2*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - y), rest 0
mdiv s =  - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y - y^2 + x*y^2 + 2*x^3*y^2 - y^3: (lts:  - y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y - y^2 + x*y^2 + 2*x^3*y^2 - y^3: (lts:  - y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y - y^2 + x*y^2 + 2*x^3*y^2 - y^3: (lts:  - y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y - y^2 + x*y^2 + 2*x^3*y^2 - y^3: (lts:  - y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y - y^2 + x*y^2 + 2*x^3*y^2 - y^3: (lts:  - y^3) / (ltf[4]:  - y^3) = (quot:  + 1), rest 0
mdiv s =  - x^2 - x^3 - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y + x*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y + x*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y + x*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 - 4*x^5 - 4*x^6 + x*y - x^2*y - 2*x^3*y + x*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x^2), rest 0
mdiv s =  - x^2 + x^4 - 4*x^5 - 4*x^6 + x*y - 2*x^2*y - 3*x^3*y + x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + x^4 - 4*x^5 - 4*x^6 + x*y - 2*x^2*y - 3*x^3*y + x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + x^4 - 4*x^5 - 4*x^6 + x*y - 2*x^2*y - 3*x^3*y + x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 + x^4 - 4*x^5 - 4*x^6 + x*y - 2*x^2*y - 3*x^3*y + x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2*x), rest 0
mdiv s =  - 3/2*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 + 3/2*x*y - 3/2*x^2*y - 3*x^3*y + 3/2*x*y^2: (lts:  + 3/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 + 3/2*x*y - 3/2*x^2*y - 3*x^3*y + 3/2*x*y^2: (lts:  + 3/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 + 3/2*x*y - 3/2*x^2*y - 3*x^3*y + 3/2*x*y^2: (lts:  + 3/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 + 3/2*x*y - 3/2*x^2*y - 3*x^3*y + 3/2*x*y^2: (lts:  + 3/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/4), rest 0
mdiv s = 3/4*x - 3/4*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 - 3/4*y + 3/4*x*y - 3/2*x^2*y - 3*x^3*y - 3/4*y^2: (lts:  - 3/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/4*x - 3/4*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 - 3/4*y + 3/4*x*y - 3/2*x^2*y - 3*x^3*y - 3/4*y^2: (lts:  - 3/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/4*x - 3/4*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 - 3/4*y + 3/4*x*y - 3/2*x^2*y - 3*x^3*y - 3/4*y^2: (lts:  - 3/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/4*x - 3/4*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 - 3/4*y + 3/4*x*y - 3/2*x^2*y - 3*x^3*y - 3/4*y^2: (lts:  - 3/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3/4*x - 3/4*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 - 3/4*y + 3/4*x*y - 3/2*x^2*y - 3*x^3*y - 3/4*y^2: (lts:  - 3/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3/4*x - 3/4*x^2 - 1/2*x^3 + x^4 - 4*x^5 - 4*x^6 - 3/4*y + 3/4*x*y - 3/2*x^2*y - 3*x^3*y - 3/4*y^2: (lts:  - 3/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 3/2), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 2*x^3 + x^4 - 4*x^5 - 4*x^6 - 6*x^2*y - 6*x^3*y: (lts:  - 6*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 3/2), rest 0
mdiv s = x^3 + x^4 - 4*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3 + x^4 - 4*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^3 + x^4 - 4*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^3 + x^4 - 4*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^3 + x^4 - 4*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^3 + x^4 - 4*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^3 + x^4 - 4*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + x), rest 0
mdiv s = 3*x^3 + 9*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^3 + 9*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^3 + 9*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^3 + 9*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3*x^3 + 9*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3*x^3 + 9*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3*x^3 + 9*x^4 + 6*x^5: (lts:  + 6*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 3/2), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 6*x^4: (lts:  - 6*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 3), rest 0
multipleDivide:  - 4*x^5 - 4*x^6 - 2*x^2*y^2 + 2*x^3*y^2 - 4*x^2*y^3 =  + ( - 3/4 + 1/2*x - x^2 - y + 2*x*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * (x^2 + x^3 - y^2 - y^3) + ( - 3/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 3/2 + x) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (3/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 3) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^6 + 2*x^7 - 2*x^4*y^2 + x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 - 2*x^4*y^2 + x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 - 2*x^4*y^2 + x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 - 2*x^4*y^2 + x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/2*x^2*y), rest 0
mdiv s = 2*x^6 + 2*x^7 + 3/2*x^3*y + 3/2*x^4*y - 3/2*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 + 3/2*x^3*y + 3/2*x^4*y - 3/2*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 + 3/2*x^3*y + 3/2*x^4*y - 3/2*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 + 3/2*x^3*y + 3/2*x^4*y - 3/2*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/2*x^2*y^3: (lts:  - 1/2*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4*x*y), rest 0
mdiv s = 2*x^6 + 2*x^7 - 1/4*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/4*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 - 1/4*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/4*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 - 1/4*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/4*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 - 1/4*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/4*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 + 1/4*x*y^3: (lts:  + 1/4*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/8*y), rest 0
mdiv s = 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y - 1/8*y^2 + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y - 1/8*y^2 + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y - 1/8*y^2 + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y - 1/8*y^2 + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y - 1/8*y^2 + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2 - 1/8*y^3: (lts:  - 1/8*y^3) / (ltf[4]:  - y^3) = (quot:  + 1/8), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2: (lts:  - 2*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2: (lts:  - 2*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2: (lts:  - 2*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 5/4*x^3*y + 3/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 3/2*x^3*y^2 - 2*x^4*y^2: (lts:  - 2*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x^3), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 9/4*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 1/2*x^3*y^2: (lts:  - 1/2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 9/4*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 1/2*x^3*y^2: (lts:  - 1/2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 9/4*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 1/2*x^3*y^2: (lts:  - 1/2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 1/8*x^3 - x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y - 1/8*x^2*y + 9/4*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - 5/4*x^2*y^2 - 1/2*x^3*y^2: (lts:  - 1/2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4*x^2), rest 0
mdiv s =  - 1/8*x^2 - 3/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y + 1/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 3/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y + 1/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 3/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y + 1/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x^2 - 3/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 1/8*x*y + 1/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 1/8*x*y^2 - x^2*y^2: (lts:  - x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2*x), rest 0
mdiv s =  - 5/8*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 5/8*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 5/8*x*y^2: (lts:  + 5/8*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 5/8*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 5/8*x*y^2: (lts:  + 5/8*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 5/8*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 5/8*x*y^2: (lts:  + 5/8*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 + 5/8*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y + 5/8*x*y^2: (lts:  + 5/8*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 5/16), rest 0
mdiv s = 5/16*x - 5/16*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/16*y + 5/16*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y - 5/16*y^2: (lts:  - 5/16*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/16*x - 5/16*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/16*y + 5/16*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y - 5/16*y^2: (lts:  - 5/16*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/16*x - 5/16*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/16*y + 5/16*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y - 5/16*y^2: (lts:  - 5/16*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/16*x - 5/16*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/16*y + 5/16*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y - 5/16*y^2: (lts:  - 5/16*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/16*x - 5/16*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/16*y + 5/16*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y - 5/16*y^2: (lts:  - 5/16*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 5/16*x - 5/16*x^2 - 7/8*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/16*y + 5/16*x*y + 5/8*x^2*y + 5/2*x^3*y + 5/2*x^4*y - 5/16*y^2: (lts:  - 5/16*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 5/8), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 3/2*x^3 - 5/4*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y + 5/4*x^3*y + 5/2*x^4*y: (lts:  + 5/2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 5/8*x), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 5/4*x^2 - 11/4*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7 - 5/4*x^2*y - 5/4*x^3*y: (lts:  - 5/4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 5/16), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7: (lts:  + 2*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7: (lts:  + 2*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7: (lts:  + 2*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7: (lts:  + 2*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7: (lts:  + 2*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7: (lts:  + 2*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 5/2*x^4 - x^5 + 2*x^6 + 2*x^7: (lts:  + 2*x^7) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2*x^2), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 7/2*x^4 - 5*x^5 - 3*x^6: (lts:  - 3*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 7/2*x^4 - 5*x^5 - 3*x^6: (lts:  - 3*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 7/2*x^4 - 5*x^5 - 3*x^6: (lts:  - 3*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 7/2*x^4 - 5*x^5 - 3*x^6: (lts:  - 3*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 7/2*x^4 - 5*x^5 - 3*x^6: (lts:  - 3*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 7/2*x^4 - 5*x^5 - 3*x^6: (lts:  - 3*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 17/8*x^3 - 7/2*x^4 - 5*x^5 - 3*x^6: (lts:  - 3*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + 3/4*x), rest 0
mdiv s =  - 5/8*x^2 - 5/8*x^3 + 5/2*x^4 + 5/2*x^5: (lts:  + 5/2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 5/8*x^3 + 5/2*x^4 + 5/2*x^5: (lts:  + 5/2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 5/8*x^3 + 5/2*x^4 + 5/2*x^5: (lts:  + 5/2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 5/8*x^3 + 5/2*x^4 + 5/2*x^5: (lts:  + 5/2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 5/8*x^3 + 5/2*x^4 + 5/2*x^5: (lts:  + 5/2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 5/8*x^3 + 5/2*x^4 + 5/2*x^5: (lts:  + 5/2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 5/8*x^2 - 5/8*x^3 + 5/2*x^4 + 5/2*x^5: (lts:  + 5/2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 5/8), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 15/8*x^2 - 45/8*x^3 - 15/4*x^4: (lts:  - 15/4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 15/8), rest 0
multipleDivide: 2*x^6 + 2*x^7 - 2*x^4*y^2 + x^2*y^3 + 3*x^3*y^3 =  + ( - 5/16 + 1/2*x + 1/4*x^2 + x^3 - 1/8*y + 1/4*x*y - 3/2*x^2*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/8) * (x^2 + x^3 - y^2 - y^3) + ( - 5/8) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 5/8 + 3/4*x - 1/2*x^2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (5/16 - 5/8*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 15/8) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z + y*z - x*y*z - 6*x^2*y*z - 4*x^3*y*z: (lts:  - 4*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  - 4*x^3), rest 0
mdiv s = 4*x^4 + 4*x^5 - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z + y*z - x*y*z - 6*x^2*y*z: (lts:  - 6*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - 6*x^2), rest 0
mdiv s = 6*x^3 + 10*x^4 + 4*x^5 - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z + y*z - x*y*z: (lts:  - x*y*z) / (ltf[0]:  + y*z) = (quot:  - x), rest 0
mdiv s = x^2 + 7*x^3 + 10*x^4 + 4*x^5 - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z + y*z: (lts:  + y*z) / (ltf[0]:  + y*z) = (quot:  + 1), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 2*x^2), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 - x*y + x^2*y + 2*x^2*y^2 - x*z - 3*x^2*z: (lts:  - 3*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 - x*y + x^2*y + 2*x^2*y^2 - x*z - 3*x^2*z: (lts:  - 3*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 - x*y + x^2*y + 2*x^2*y^2 - x*z - 3*x^2*z: (lts:  - 3*x^2*z) / (ltf[2]:  + x*z) = (quot:  - 3*x), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 + 2*x*y + x^2*y + 3*x*y^2 + 2*x^2*y^2 - x*z: (lts:  - x*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 + 2*x*y + x^2*y + 3*x*y^2 + 2*x^2*y^2 - x*z: (lts:  - x*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 + 2*x*y + x^2*y + 3*x*y^2 + 2*x^2*y^2 - x*z: (lts:  - x*z) / (ltf[2]:  + x*z) = (quot:  - 1), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 + y + 2*x*y + x^2*y + y^2 + 3*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 + y + 2*x*y + x^2*y + y^2 + 3*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 + y + 2*x*y + x^2*y + y^2 + 3*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x + 7*x^3 + 10*x^4 + 4*x^5 + y + 2*x*y + x^2*y + y^2 + 3*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x), rest 0
mdiv s =  - x + x^2 + 8*x^3 + 10*x^4 + 4*x^5 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x + x^2 + 8*x^3 + 10*x^4 + 4*x^5 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x + x^2 + 8*x^3 + 10*x^4 + 4*x^5 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x + x^2 + 8*x^3 + 10*x^4 + 4*x^5 + y + x*y + y^2 + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1), rest 0
multipleDivide:  - x*y - x^2*y - x*z - 3*x^2*z - 2*x^3*z + y*z - x*y*z - 6*x^2*y*z - 4*x^3*y*z =  + (1 - x - 6*x^2 - 4*x^3) * (x + x^2 + y*z) + ( - 1 - 3*x - 2*x^2) * (y + y^2 + x*z) + ( - 1 - x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - x*y^3 - y^2*z - x*z^2 - 3*x^2*z^2 - 2*x^3*z^2 + y*z^2 - x*y*z^2 - 6*x^2*y*z^2 - 4*x^3*y*z^2: (lts:  - 4*x^3*y*z^2) / (ltf[0]:  + y*z) = (quot:  - 4*x^3*z), rest 0
mdiv s =  - x*y^3 + 4*x^4*z + 4*x^5*z - y^2*z - x*z^2 - 3*x^2*z^2 - 2*x^3*z^2 + y*z^2 - x*y*z^2 - 6*x^2*y*z^2: (lts:  - 6*x^2*y*z^2) / (ltf[0]:  + y*z) = (quot:  - 6*x^2*z), rest 0
mdiv s =  - x*y^3 + 6*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2 - 3*x^2*z^2 - 2*x^3*z^2 + y*z^2 - x*y*z^2: (lts:  - x*y*z^2) / (ltf[0]:  + y*z) = (quot:  - x*z), rest 0
mdiv s =  - x*y^3 + x^2*z + 7*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2 - 3*x^2*z^2 - 2*x^3*z^2 + y*z^2: (lts:  + y*z^2) / (ltf[0]:  + y*z) = (quot:  + z), rest 0
mdiv s =  - x*y^3 - x*z + 7*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2 - 3*x^2*z^2 - 2*x^3*z^2: (lts:  - 2*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y^3 - x*z + 7*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2 - 3*x^2*z^2 - 2*x^3*z^2: (lts:  - 2*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  - 2*x^3), rest 0
mdiv s = 2*x^4*y - x*y^3 - x*z + 9*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2 - 3*x^2*z^2: (lts:  - 3*x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^4*y - x*y^3 - x*z + 9*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2 - 3*x^2*z^2: (lts:  - 3*x^2*z^2) / (ltf[1]:  + z^2) = (quot:  - 3*x^2), rest 0
mdiv s = 3*x^3*y + 2*x^4*y - x*y^3 - x*z + 3*x^2*z + 9*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2: (lts:  - x*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^3*y + 2*x^4*y - x*y^3 - x*z + 3*x^2*z + 9*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z - x*z^2: (lts:  - x*z^2) / (ltf[1]:  + z^2) = (quot:  - x), rest 0
mdiv s = x^2*y + 3*x^3*y + 2*x^4*y - x*y^3 + 3*x^2*z + 9*x^3*z + 10*x^4*z + 4*x^5*z - y^2*z: (lts:  - y^2*z) / (ltf[0]:  + y*z) = (quot:  - y), rest 0
mdiv s = x*y + 2*x^2*y + 3*x^3*y + 2*x^4*y - x*y^3 + 3*x^2*z + 9*x^3*z + 10*x^4*z + 4*x^5*z: (lts:  + 4*x^5*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y + 2*x^2*y + 3*x^3*y + 2*x^4*y - x*y^3 + 3*x^2*z + 9*x^3*z + 10*x^4*z + 4*x^5*z: (lts:  + 4*x^5*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y + 2*x^2*y + 3*x^3*y + 2*x^4*y - x*y^3 + 3*x^2*z + 9*x^3*z + 10*x^4*z + 4*x^5*z: (lts:  + 4*x^5*z) / (ltf[2]:  + x*z) = (quot:  + 4*x^4), rest 0
mdiv s = x*y + 2*x^2*y + 3*x^3*y - 2*x^4*y - 4*x^4*y^2 - x*y^3 + 3*x^2*z + 9*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y + 2*x^2*y + 3*x^3*y - 2*x^4*y - 4*x^4*y^2 - x*y^3 + 3*x^2*z + 9*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y + 2*x^2*y + 3*x^3*y - 2*x^4*y - 4*x^4*y^2 - x*y^3 + 3*x^2*z + 9*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[2]:  + x*z) = (quot:  + 10*x^3), rest 0
mdiv s = x*y + 2*x^2*y - 7*x^3*y - 2*x^4*y - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3 + 3*x^2*z + 9*x^3*z: (lts:  + 9*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y + 2*x^2*y - 7*x^3*y - 2*x^4*y - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3 + 3*x^2*z + 9*x^3*z: (lts:  + 9*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y + 2*x^2*y - 7*x^3*y - 2*x^4*y - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3 + 3*x^2*z + 9*x^3*z: (lts:  + 9*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 9*x^2), rest 0
mdiv s = x*y - 7*x^2*y - 7*x^3*y - 2*x^4*y - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3 + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y - 7*x^2*y - 7*x^3*y - 2*x^4*y - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3 + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y - 7*x^2*y - 7*x^3*y - 2*x^4*y - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3 + 3*x^2*z: (lts:  + 3*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 3*x), rest 0
mdiv s =  - 2*x*y - 7*x^2*y - 7*x^3*y - 2*x^4*y - 3*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x*y - 7*x^2*y - 7*x^3*y - 2*x^4*y - 3*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x*y - 7*x^2*y - 7*x^3*y - 2*x^4*y - 3*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x*y - 7*x^2*y - 7*x^3*y - 2*x^4*y - 3*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 - x*y^3: (lts:  - x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2*y), rest 0
mdiv s =  - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y + 1/2*y^2 - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y + 1/2*y^2 - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y + 1/2*y^2 - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y + 1/2*y^2 - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y + 1/2*y^2 - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 1/2*y^3: (lts:  + 1/2*y^3) / (ltf[4]:  - y^3) = (quot:  - 1/2), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 5/2*x*y - 15/2*x^2*y - 7*x^3*y - 2*x^4*y - 5/2*x*y^2 - 9*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x^3), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 2*x^4 - 2*x^5 - 5/2*x*y - 15/2*x^2*y - 5*x^3*y - 5/2*x*y^2 - 9*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 2*x^4 - 2*x^5 - 5/2*x*y - 15/2*x^2*y - 5*x^3*y - 5/2*x*y^2 - 9*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 2*x^4 - 2*x^5 - 5/2*x*y - 15/2*x^2*y - 5*x^3*y - 5/2*x*y^2 - 9*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 1/2*x^3 - 2*x^4 - 2*x^5 - 5/2*x*y - 15/2*x^2*y - 5*x^3*y - 5/2*x*y^2 - 9*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 4*x^2), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 6*x^4 - 2*x^5 - 5/2*x*y - 7/2*x^2*y - x^3*y - 5/2*x*y^2 - 5*x^2*y^2: (lts:  - 5*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 6*x^4 - 2*x^5 - 5/2*x*y - 7/2*x^2*y - x^3*y - 5/2*x*y^2 - 5*x^2*y^2: (lts:  - 5*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 6*x^4 - 2*x^5 - 5/2*x*y - 7/2*x^2*y - x^3*y - 5/2*x*y^2 - 5*x^2*y^2: (lts:  - 5*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 6*x^4 - 2*x^5 - 5/2*x*y - 7/2*x^2*y - x^3*y - 5/2*x*y^2 - 5*x^2*y^2: (lts:  - 5*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 5/2*x), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4), rest 0
mdiv s =  - 3/2*x^2 - 11/2*x^3 - 6*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 11/2*x^3 - 6*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 11/2*x^3 - 6*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 11/2*x^3 - 6*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 11/2*x^3 - 6*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 11/2*x^3 - 6*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 11/2*x^3 - 6*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1/2), rest 0
multipleDivide:  - x*y^3 - y^2*z - x*z^2 - 3*x^2*z^2 - 2*x^3*z^2 + y*z^2 - x*y*z^2 - 6*x^2*y*z^2 - 4*x^3*y*z^2 =  + ( - y + z - x*z - 6*x^2*z - 4*x^3*z) * (x + x^2 + y*z) + ( - x - 3*x^2 - 2*x^3) * (x*y + z + z^2) + (3*x + 9*x^2 + 10*x^3 + 4*x^4) * (y + y^2 + x*z) + (5/2*x + 4*x^2 + 2*x^3 + 1/2*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/2) * (x^2 + x^3 - y^2 - y^3) + (1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/4) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1/2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z + x*y*z - x^2*y*z - 6*x^3*y*z - 4*x^4*y*z: (lts:  - 4*x^4*y*z) / (ltf[0]:  + y*z) = (quot:  - 4*x^4), rest 0
mdiv s = 4*x^5 + 4*x^6 - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z + x*y*z - x^2*y*z - 6*x^3*y*z: (lts:  - 6*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  - 6*x^3), rest 0
mdiv s = 6*x^4 + 10*x^5 + 4*x^6 - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z + x*y*z - x^2*y*z: (lts:  - x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - x^2), rest 0
mdiv s = x^3 + 7*x^4 + 10*x^5 + 4*x^6 - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z + x*y*z: (lts:  + x*y*z) / (ltf[0]:  + y*z) = (quot:  + x), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z: (lts:  - 2*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z: (lts:  - 2*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z: (lts:  - 2*x^4*z) / (ltf[2]:  + x*z) = (quot:  - 2*x^3), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + 2*x^3*y + 2*x^3*y^2 - y^3 - y^4 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + 2*x^3*y + 2*x^3*y^2 - y^3 - y^4 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + 2*x^3*y + 2*x^3*y^2 - y^3 - y^4 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 3*x^2), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + 3*x^2*y + 2*x^3*y + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + 3*x^2*y + 2*x^3*y + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + 3*x^2*y + 2*x^3*y + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4: (lts:  - y^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4: (lts:  - y^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4: (lts:  - y^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4: (lts:  - y^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2 - y^3 - y^4: (lts:  - y^4) / (ltf[4]:  - y^3) = (quot:  + y), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 2*x^2*y + x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 2*x^2*y + x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 2*x^2*y + x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 + 7*x^4 + 10*x^5 + 4*x^6 + x*y + 2*x^2*y + x^3*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x^2), rest 0
mdiv s =  - x^2 + x^3 + 8*x^4 + 10*x^5 + 4*x^6 + x*y + x^2*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + x^3 + 8*x^4 + 10*x^5 + 4*x^6 + x*y + x^2*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + x^3 + 8*x^4 + 10*x^5 + 4*x^6 + x*y + x^2*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 + x^3 + 8*x^4 + 10*x^5 + 4*x^6 + x*y + x^2*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - x), rest 0
multipleDivide:  - y^3 - y^4 - x^2*z - 3*x^3*z - 2*x^4*z + x*y*z - x^2*y*z - 6*x^3*y*z - 4*x^4*y*z =  + (x - x^2 - 6*x^3 - 4*x^4) * (x + x^2 + y*z) + ( - x - 3*x^2 - 2*x^3) * (y + y^2 + x*z) + ( - x - x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (y) * (x^2 + x^3 - y^2 - y^3) + ( - x) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - x + x^2 + 6*x^3 + 4*x^4 + y - x*y + 2*x^2*y + 12*x^3*y + 8*x^4*y + y^2: (lts:  + y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x + x^2 + 6*x^3 + 4*x^4 + y - x*y + 2*x^2*y + 12*x^3*y + 8*x^4*y + y^2: (lts:  + y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x + x^2 + 6*x^3 + 4*x^4 + y - x*y + 2*x^2*y + 12*x^3*y + 8*x^4*y + y^2: (lts:  + y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x + x^2 + 6*x^3 + 4*x^4 + y - x*y + 2*x^2*y + 12*x^3*y + 8*x^4*y + y^2: (lts:  + y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x + x^2 + 6*x^3 + 4*x^4 + y - x*y + 2*x^2*y + 12*x^3*y + 8*x^4*y + y^2: (lts:  + y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x + x^2 + 6*x^3 + 4*x^4 + y - x*y + 2*x^2*y + 12*x^3*y + 8*x^4*y + y^2: (lts:  + y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 2), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 8*x^2*y + 16*x^3*y + 8*x^4*y: (lts:  + 8*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 2*x), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 8*x^2*y + 8*x^3*y: (lts:  + 8*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 2), rest 0
multipleDivide:  - x + x^2 + 6*x^3 + 4*x^4 + y - x*y + 2*x^2*y + 12*x^3*y + 8*x^4*y + y^2 =  + (2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 2 - 2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - x^2 - x^3 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 6*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 6*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 6*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - x^3 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 6*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x^2), rest 0
mdiv s =  - x^2 + x^3 + 2*x^4 + x*y + x^2*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 + x^3 + 2*x^4 + x*y + x^2*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 + x^3 + 2*x^4 + x*y + x^2*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 + x^3 + 2*x^4 + x*y + x^2*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1), rest 0
multipleDivide:  - x^2 - x^3 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 6*x^2*y^2 + 4*x^3*y^2 =  + (1/2 - 2*x - 2*x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 4*x^6 + 12*x^7 + 8*x^8 - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 8*x^3*y^2 + 10*x^4*y^2: (lts:  + 10*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^6 + 12*x^7 + 8*x^8 - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 8*x^3*y^2 + 10*x^4*y^2: (lts:  + 10*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^6 + 12*x^7 + 8*x^8 - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 8*x^3*y^2 + 10*x^4*y^2: (lts:  + 10*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^6 + 12*x^7 + 8*x^8 - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 8*x^3*y^2 + 10*x^4*y^2: (lts:  + 10*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 5*x^3), rest 0
mdiv s = 5*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 5*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 5*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 5*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 5*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/2*x^2), rest 0
mdiv s = 3/2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 3/2*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 3/2*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 3/2*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 3/2*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4*x), rest 0
mdiv s = 1/4*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 1/4*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 1/4*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 1/4*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/4*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - 1/4*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/8), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 1/8*y - 1/8*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 1/8*y - 1/8*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 1/8*y - 1/8*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 1/8*y - 1/8*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 1/8*y - 1/8*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 + 7/4*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 1/8*y - 1/8*x*y - 7/4*x^2*y - 13/2*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1/4), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y: (lts:  + 16*x^8*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y: (lts:  + 16*x^8*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y: (lts:  + 16*x^8*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y: (lts:  + 16*x^8*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y: (lts:  + 16*x^8*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y: (lts:  + 16*x^8*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y: (lts:  + 16*x^8*y) / (ltf[6]:  - 4*x^5) = (quot:  - 4*x^3*y), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 12*x^5*y - 28*x^6*y - 16*x^7*y: (lts:  - 16*x^7*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 12*x^5*y - 28*x^6*y - 16*x^7*y: (lts:  - 16*x^7*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 12*x^5*y - 28*x^6*y - 16*x^7*y: (lts:  - 16*x^7*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 12*x^5*y - 28*x^6*y - 16*x^7*y: (lts:  - 16*x^7*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 12*x^5*y - 28*x^6*y - 16*x^7*y: (lts:  - 16*x^7*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 12*x^5*y - 28*x^6*y - 16*x^7*y: (lts:  - 16*x^7*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y - 5*x^4*y - 12*x^5*y - 28*x^6*y - 16*x^7*y: (lts:  - 16*x^7*y) / (ltf[6]:  - 4*x^5) = (quot:  + 4*x^2*y), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y + 3*x^4*y + 20*x^5*y + 12*x^6*y: (lts:  + 12*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y + 3*x^4*y + 20*x^5*y + 12*x^6*y: (lts:  + 12*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y + 3*x^4*y + 20*x^5*y + 12*x^6*y: (lts:  + 12*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y + 3*x^4*y + 20*x^5*y + 12*x^6*y: (lts:  + 12*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y + 3*x^4*y + 20*x^5*y + 12*x^6*y: (lts:  + 12*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y + 3*x^4*y + 20*x^5*y + 12*x^6*y: (lts:  + 12*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 6*x^3*y + 3*x^4*y + 20*x^5*y + 12*x^6*y: (lts:  + 12*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  - 3*x*y), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 12*x^3*y - 21*x^4*y - 10*x^5*y: (lts:  - 10*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 12*x^3*y - 21*x^4*y - 10*x^5*y: (lts:  - 10*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 12*x^3*y - 21*x^4*y - 10*x^5*y: (lts:  - 10*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 12*x^3*y - 21*x^4*y - 10*x^5*y: (lts:  - 10*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 12*x^3*y - 21*x^4*y - 10*x^5*y: (lts:  - 10*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 12*x^3*y - 21*x^4*y - 10*x^5*y: (lts:  - 10*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 - x^2*y - 12*x^3*y - 21*x^4*y - 10*x^5*y: (lts:  - 10*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  + 5/2*y), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 13/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 8*x^3*y + 4*x^4*y: (lts:  + 4*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - x), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8: (lts:  + 8*x^8) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8: (lts:  + 8*x^8) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8: (lts:  + 8*x^8) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8: (lts:  + 8*x^8) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8: (lts:  + 8*x^8) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8: (lts:  + 8*x^8) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + 5*x^5 + 4*x^6 + 12*x^7 + 8*x^8: (lts:  + 8*x^8) / (ltf[6]:  - 4*x^5) = (quot:  - 2*x^3), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + x^5 - 12*x^6 - 8*x^7: (lts:  - 8*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + x^5 - 12*x^6 - 8*x^7: (lts:  - 8*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + x^5 - 12*x^6 - 8*x^7: (lts:  - 8*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + x^5 - 12*x^6 - 8*x^7: (lts:  - 8*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + x^5 - 12*x^6 - 8*x^7: (lts:  - 8*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + x^5 - 12*x^6 - 8*x^7: (lts:  - 8*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 9/2*x^4 + x^5 - 12*x^6 - 8*x^7: (lts:  - 8*x^7) / (ltf[6]:  - 4*x^5) = (quot:  + 2*x^2), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 17/2*x^4 + 17*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 17/2*x^4 + 17*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 17/2*x^4 + 17*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 17/2*x^4 + 17*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 17/2*x^4 + 17*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 17/2*x^4 + 17*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 2*x^3 + 17/2*x^4 + 17*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - 2*x), rest 0
mdiv s =  - 3/2*x^2 - 6*x^3 - 15/2*x^4 - 3*x^5: (lts:  - 3*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 6*x^3 - 15/2*x^4 - 3*x^5: (lts:  - 3*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 6*x^3 - 15/2*x^4 - 3*x^5: (lts:  - 3*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 6*x^3 - 15/2*x^4 - 3*x^5: (lts:  - 3*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 6*x^3 - 15/2*x^4 - 3*x^5: (lts:  - 3*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 6*x^3 - 15/2*x^4 - 3*x^5: (lts:  - 3*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 6*x^3 - 15/2*x^4 - 3*x^5: (lts:  - 3*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 3/4), rest 0
multipleDivide: 4*x^6 + 12*x^7 + 8*x^8 - 4*x^5*y + 4*x^6*y + 24*x^7*y + 16*x^8*y + 2*x^2*y^2 + 8*x^3*y^2 + 10*x^4*y^2 =  + (1/8 - 1/4*x - 3/2*x^2 - 5*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/4) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (3/4 - 2*x + 2*x^2 - 2*x^3 + 5/2*y - 3*x*y + 4*x^2*y - 4*x^3*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1 - x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s = 4*x^4 + 12*x^5 + 8*x^6 + 2*x^2*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 12*x^5 + 8*x^6 + 2*x^2*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^4 + 12*x^5 + 8*x^6 + 2*x^2*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 12*x^5 + 8*x^6 + 2*x^2*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 - 2*x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 - 2*x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 - 2*x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 - 2*x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y - 2*x*y^2: (lts:  - 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1), rest 0
mdiv s =  - x + x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + y - x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + y^2: (lts:  + y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x + x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + y - x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + y^2: (lts:  + y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x + x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + y - x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + y^2: (lts:  + y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x + x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + y - x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + y^2: (lts:  + y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x + x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + y - x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + y^2: (lts:  + y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x + x^2 + 2*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + y - x*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + y^2: (lts:  + y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 2), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y + 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y: (lts:  + 16*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y + 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y: (lts:  + 16*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y + 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y: (lts:  + 16*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y + 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y: (lts:  + 16*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y + 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y: (lts:  + 16*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y + 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y: (lts:  + 16*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y + 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y: (lts:  + 16*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  - 4*x*y), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y - 6*x^3*y - 28*x^4*y - 16*x^5*y: (lts:  - 16*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y - 6*x^3*y - 28*x^4*y - 16*x^5*y: (lts:  - 16*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y - 6*x^3*y - 28*x^4*y - 16*x^5*y: (lts:  - 16*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y - 6*x^3*y - 28*x^4*y - 16*x^5*y: (lts:  - 16*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y - 6*x^3*y - 28*x^4*y - 16*x^5*y: (lts:  - 16*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y - 6*x^3*y - 28*x^4*y - 16*x^5*y: (lts:  - 16*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 6*x^2*y - 6*x^3*y - 28*x^4*y - 16*x^5*y: (lts:  - 16*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  + 4*y), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 4*x^2 + 4*x^3 + 4*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 26*x^3*y + 12*x^4*y: (lts:  + 12*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 3*x), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 4*x^2 - 2*x^3 - 2*x^4 + 12*x^5 + 8*x^6 + 14*x^2*y + 14*x^3*y: (lts:  + 14*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 7/2), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 2*x^4 + 12*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 2*x^4 + 12*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 2*x^4 + 12*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 2*x^4 + 12*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 2*x^4 + 12*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 2*x^4 + 12*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 9*x^3 - 2*x^4 + 12*x^5 + 8*x^6: (lts:  + 8*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - 2*x), rest 0
mdiv s =  - 3*x^2 - 13*x^3 - 18*x^4 - 8*x^5: (lts:  - 8*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 13*x^3 - 18*x^4 - 8*x^5: (lts:  - 8*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 13*x^3 - 18*x^4 - 8*x^5: (lts:  - 8*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 13*x^3 - 18*x^4 - 8*x^5: (lts:  - 8*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 13*x^3 - 18*x^4 - 8*x^5: (lts:  - 8*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 13*x^3 - 18*x^4 - 8*x^5: (lts:  - 8*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^2 - 13*x^3 - 18*x^4 - 8*x^5: (lts:  - 8*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 2), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1), rest 0
multipleDivide: 4*x^4 + 12*x^5 + 8*x^6 + 2*x^2*y - 2*x^3*y + 4*x^4*y + 24*x^5*y + 16*x^6*y + 4*x^2*y^2 =  + (1 - 2*x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (2 - 2*x + 4*y - 4*x*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 7/2 - 3*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/2*x^2), rest 0
mdiv s =  - 3/2*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 3/2*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 3/2*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 3/2*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 3/2*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/2*x^2*y^2: (lts:  + 1/2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4*x), rest 0
mdiv s = 1/4*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 - 1/4*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/4*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 - 1/4*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/4*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 - 1/4*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/4*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 - 1/4*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - 1/4*x*y^2: (lts:  - 1/4*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/8), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 1/8*y - 1/8*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 1/8*y - 1/8*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 1/8*y - 1/8*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 1/8*y - 1/8*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 1/8*y - 1/8*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/8*x + 1/8*x^2 - 5/4*x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 1/8*y - 1/8*x*y + 5/4*x^2*y + 3/2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y + 1/8*y^2: (lts:  + 1/8*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1/4), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y: (lts:  - 8*x^7*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y: (lts:  - 8*x^7*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y: (lts:  - 8*x^7*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y: (lts:  - 8*x^7*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y: (lts:  - 8*x^7*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y: (lts:  - 8*x^7*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y: (lts:  - 8*x^7*y) / (ltf[6]:  - 4*x^5) = (quot:  + 2*x^2*y), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 6*x^4*y + 14*x^5*y + 8*x^6*y: (lts:  + 8*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 6*x^4*y + 14*x^5*y + 8*x^6*y: (lts:  + 8*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 6*x^4*y + 14*x^5*y + 8*x^6*y: (lts:  + 8*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 6*x^4*y + 14*x^5*y + 8*x^6*y: (lts:  + 8*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 6*x^4*y + 14*x^5*y + 8*x^6*y: (lts:  + 8*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 6*x^4*y + 14*x^5*y + 8*x^6*y: (lts:  + 8*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y + 2*x^3*y + 6*x^4*y + 14*x^5*y + 8*x^6*y: (lts:  + 8*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  - 2*x*y), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y - 2*x^3*y - 10*x^4*y - 6*x^5*y: (lts:  - 6*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y - 2*x^3*y - 10*x^4*y - 6*x^5*y: (lts:  - 6*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y - 2*x^3*y - 10*x^4*y - 6*x^5*y: (lts:  - 6*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y - 2*x^3*y - 10*x^4*y - 6*x^5*y: (lts:  - 6*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y - 2*x^3*y - 10*x^4*y - 6*x^5*y: (lts:  - 6*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y - 2*x^3*y - 10*x^4*y - 6*x^5*y: (lts:  - 6*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^2*y - 2*x^3*y - 10*x^4*y - 6*x^5*y: (lts:  - 6*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  + 3/2*y), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/2*x^2 - x^3 - 3/2*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 10*x^3*y + 5*x^4*y: (lts:  + 5*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 5/4*x), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 7/2*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7 + 5*x^2*y + 5*x^3*y: (lts:  + 5*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 5/4), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4 - 2*x^5 - 6*x^6 - 4*x^7: (lts:  - 4*x^7) / (ltf[6]:  - 4*x^5) = (quot:  + x^2), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 2*x^4 + 6*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 2*x^4 + 6*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 2*x^4 + 6*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 2*x^4 + 6*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 2*x^4 + 6*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 2*x^4 + 6*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 2*x^4 + 6*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - x), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5: (lts:  - 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1), rest 0
multipleDivide:  - 2*x^5 - 6*x^6 - 4*x^7 + 2*x^4*y - 2*x^5*y - 12*x^6*y - 8*x^7*y - x^2*y^2 - 3*x^3*y^2 =  + (1/8 - 1/4*x + 3/2*x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/4) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1 - x + x^2 + 3/2*y - 2*x*y + 2*x^2*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 5/4 - 5/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s = 4*x^6 + 4*x^7 - 2*x^2*y*z - 8*x^3*y*z - 10*x^4*y*z: (lts:  - 10*x^4*y*z) / (ltf[0]:  + y*z) = (quot:  - 10*x^4), rest 0
mdiv s = 10*x^5 + 14*x^6 + 4*x^7 - 2*x^2*y*z - 8*x^3*y*z: (lts:  - 8*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  - 8*x^3), rest 0
mdiv s = 8*x^4 + 18*x^5 + 14*x^6 + 4*x^7 - 2*x^2*y*z: (lts:  - 2*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - 2*x^2), rest 0
mdiv s = 2*x^3 + 10*x^4 + 18*x^5 + 14*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 10*x^4 + 18*x^5 + 14*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 10*x^4 + 18*x^5 + 14*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 10*x^4 + 18*x^5 + 14*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 10*x^4 + 18*x^5 + 14*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^3 + 10*x^4 + 18*x^5 + 14*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 10*x^4 + 18*x^5 + 14*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[6]:  - 4*x^5) = (quot:  - x^2), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 8*x^4 + 10*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - x), rest 0
multipleDivide: 4*x^6 + 4*x^7 - 2*x^2*y*z - 8*x^3*y*z - 10*x^4*y*z =  + ( - 2*x^2 - 8*x^3 - 10*x^4) * (x + x^2 + y*z) + ( - x - x^2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s = 4*x^6*y + 4*x^5*z - 2*x^2*z^2 - 8*x^3*z^2 - 10*x^4*z^2: (lts:  - 10*x^4*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^6*y + 4*x^5*z - 2*x^2*z^2 - 8*x^3*z^2 - 10*x^4*z^2: (lts:  - 10*x^4*z^2) / (ltf[1]:  + z^2) = (quot:  - 10*x^4), rest 0
mdiv s = 10*x^5*y + 4*x^6*y + 10*x^4*z + 4*x^5*z - 2*x^2*z^2 - 8*x^3*z^2: (lts:  - 8*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 10*x^5*y + 4*x^6*y + 10*x^4*z + 4*x^5*z - 2*x^2*z^2 - 8*x^3*z^2: (lts:  - 8*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  - 8*x^3), rest 0
mdiv s = 8*x^4*y + 10*x^5*y + 4*x^6*y + 8*x^3*z + 10*x^4*z + 4*x^5*z - 2*x^2*z^2: (lts:  - 2*x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 8*x^4*y + 10*x^5*y + 4*x^6*y + 8*x^3*z + 10*x^4*z + 4*x^5*z - 2*x^2*z^2: (lts:  - 2*x^2*z^2) / (ltf[1]:  + z^2) = (quot:  - 2*x^2), rest 0
mdiv s = 2*x^3*y + 8*x^4*y + 10*x^5*y + 4*x^6*y + 2*x^2*z + 8*x^3*z + 10*x^4*z + 4*x^5*z: (lts:  + 4*x^5*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3*y + 8*x^4*y + 10*x^5*y + 4*x^6*y + 2*x^2*z + 8*x^3*z + 10*x^4*z + 4*x^5*z: (lts:  + 4*x^5*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3*y + 8*x^4*y + 10*x^5*y + 4*x^6*y + 2*x^2*z + 8*x^3*z + 10*x^4*z + 4*x^5*z: (lts:  + 4*x^5*z) / (ltf[2]:  + x*z) = (quot:  + 4*x^4), rest 0
mdiv s = 2*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z + 10*x^4*z: (lts:  + 10*x^4*z) / (ltf[2]:  + x*z) = (quot:  + 10*x^3), rest 0
mdiv s =  - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z: (lts:  + 8*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z: (lts:  + 8*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z + 8*x^3*z: (lts:  + 8*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 8*x^2), rest 0
mdiv s =  - 8*x^2*y - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 8*x^2*y - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 8*x^2*y - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 2*x), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x*y - 8*x^2*y - 8*x^3*y + 4*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 10*x^3*y^2 - 4*x^4*y^2: (lts:  - 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x^3), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 6*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 6*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 6*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 8*x^2*y - 6*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 8*x^2*y^2 - 8*x^3*y^2: (lts:  - 8*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 4*x^2), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^3 - 6*x^4 - 2*x^5 - 2*x*y - 4*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y - 2*x*y^2 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y: (lts:  + 4*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y: (lts:  + 4*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y: (lts:  + 4*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y: (lts:  + 4*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y: (lts:  + 4*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y: (lts:  + 4*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y + 6*x^4*y + 10*x^5*y + 4*x^6*y: (lts:  + 4*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  - x*y), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 6*x^4 - 2*x^5 - 2*x^2*y - 4*x^3*y - 2*x^4*y: (lts:  - 2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2*x), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 5*x^3 - 5*x^4 - 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2), rest 0
multipleDivide: 4*x^6*y + 4*x^5*z - 2*x^2*z^2 - 8*x^3*z^2 - 10*x^4*z^2 =  + ( - 2*x^2 - 8*x^3 - 10*x^4) * (x*y + z + z^2) + (2*x + 8*x^2 + 10*x^3 + 4*x^4) * (y + y^2 + x*z) + (2*x + 4*x^2 + 2*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/2 - x*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/2 + 1/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s = 4*x^4*y + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4*y + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^4*y + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z - 10*x^4*z: (lts:  - 10*x^4*z) / (ltf[2]:  + x*z) = (quot:  - 10*x^3), rest 0
mdiv s = 10*x^3*y + 4*x^4*y + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z: (lts:  - 8*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 10*x^3*y + 4*x^4*y + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z: (lts:  - 8*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 10*x^3*y + 4*x^4*y + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z: (lts:  - 8*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 8*x^2), rest 0
mdiv s = 8*x^2*y + 10*x^3*y + 4*x^4*y + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 8*x^2*y + 10*x^3*y + 4*x^4*y + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 8*x^2*y + 10*x^3*y + 4*x^4*y + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  - 2*x), rest 0
mdiv s = 2*x*y + 8*x^2*y + 10*x^3*y + 4*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x*y + 8*x^2*y + 10*x^3*y + 4*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x*y + 8*x^2*y + 10*x^3*y + 4*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x*y + 8*x^2*y + 10*x^3*y + 4*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 10*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x^3), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 8*x^3*y + 2*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 8*x^3*y + 2*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 8*x^3*y + 2*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 + 2*x*y + 8*x^2*y + 8*x^3*y + 2*x^4*y + 2*x*y^2 + 8*x^2*y^2 + 8*x^3*y^2: (lts:  + 8*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 4*x^2), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 4*x^3*y + 2*x^4*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 4*x^3*y + 2*x^4*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 4*x^3*y + 2*x^4*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 6*x^4 + 2*x^5 + 2*x*y + 4*x^2*y + 4*x^3*y + 2*x^4*y + 2*x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 6*x^4 + 2*x^5 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2*x), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 5*x^3 + 5*x^4 + 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2), rest 0
multipleDivide: 4*x^4*y + 4*x^4*y^2 - 2*x^2*z - 8*x^3*z - 10*x^4*z =  + ( - 2*x - 8*x^2 - 10*x^3) * (y + y^2 + x*z) + ( - 2*x - 4*x^2 - 2*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/2 - 1/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s = 2*x^5 + 2*x^6 - 2*x^4*y - 2*x^5*y + 2*x^2*y^2 + 8*x^3*y^2 + 8*x^4*y^2: (lts:  + 8*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^5 + 2*x^6 - 2*x^4*y - 2*x^5*y + 2*x^2*y^2 + 8*x^3*y^2 + 8*x^4*y^2: (lts:  + 8*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^5 + 2*x^6 - 2*x^4*y - 2*x^5*y + 2*x^2*y^2 + 8*x^3*y^2 + 8*x^4*y^2: (lts:  + 8*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^5 + 2*x^6 - 2*x^4*y - 2*x^5*y + 2*x^2*y^2 + 8*x^3*y^2 + 8*x^4*y^2: (lts:  + 8*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 4*x^3), rest 0
mdiv s = 4*x^4 + 6*x^5 + 2*x^6 - 4*x^3*y - 6*x^4*y - 2*x^5*y + 2*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 6*x^5 + 2*x^6 - 4*x^3*y - 6*x^4*y - 2*x^5*y + 2*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^4 + 6*x^5 + 2*x^6 - 4*x^3*y - 6*x^4*y - 2*x^5*y + 2*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^4 + 6*x^5 + 2*x^6 - 4*x^3*y - 6*x^4*y - 2*x^5*y + 2*x^2*y^2 + 4*x^3*y^2: (lts:  + 4*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x^2), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - 2*x^2*y - 6*x^3*y - 6*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - 2*x^2*y - 6*x^3*y - 6*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - 2*x^2*y - 6*x^3*y - 6*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - 2*x^2*y - 6*x^3*y - 6*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - 2*x^2*y - 6*x^3*y - 6*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - 2*x^2*y - 6*x^3*y - 6*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - 2*x^2*y - 6*x^3*y - 6*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2*y), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^3 + 6*x^4 + 6*x^5 + 2*x^6 - x^2*y - 2*x^3*y - x^4*y: (lts:  - x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4*x), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 5/2*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4), rest 0
mdiv s = 1/2*x^2 + 3*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 3*x^3 + 13/2*x^4 + 6*x^5 + 2*x^6: (lts:  + 2*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2*x), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 + 2*x^3 + 5/2*x^4 + x^5: (lts:  + x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1/4), rest 0
multipleDivide: 2*x^5 + 2*x^6 - 2*x^4*y - 2*x^5*y + 2*x^2*y^2 + 8*x^3*y^2 + 8*x^4*y^2 =  + ( - 2*x^2 - 4*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/4 - 1/2*x + 1/2*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/4 + 1/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s = 4*x^7 + 4*x^8 - 4*x^5*y^2 + 2*x^2*y^3 + 8*x^3*y^3 + 10*x^4*y^3: (lts:  + 10*x^4*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 - 4*x^5*y^2 + 2*x^2*y^3 + 8*x^3*y^3 + 10*x^4*y^3: (lts:  + 10*x^4*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 - 4*x^5*y^2 + 2*x^2*y^3 + 8*x^3*y^3 + 10*x^4*y^3: (lts:  + 10*x^4*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 - 4*x^5*y^2 + 2*x^2*y^3 + 8*x^3*y^3 + 10*x^4*y^3: (lts:  + 10*x^4*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 5*x^3*y), rest 0
mdiv s = 4*x^7 + 4*x^8 + 5*x^4*y + 5*x^5*y - 5*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 2*x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 5*x^4*y + 5*x^5*y - 5*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 2*x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 5*x^4*y + 5*x^5*y - 5*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 2*x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 5*x^4*y + 5*x^5*y - 5*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 2*x^2*y^3 + 3*x^3*y^3: (lts:  + 3*x^3*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/2*x^2*y), rest 0
mdiv s = 4*x^7 + 4*x^8 + 3/2*x^3*y + 13/2*x^4*y + 5*x^5*y - 3/2*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 3/2*x^3*y + 13/2*x^4*y + 5*x^5*y - 3/2*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 3/2*x^3*y + 13/2*x^4*y + 5*x^5*y - 3/2*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 3/2*x^3*y + 13/2*x^4*y + 5*x^5*y - 3/2*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4*x*y), rest 0
mdiv s = 4*x^7 + 4*x^8 + 1/4*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/4*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 1/4*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/4*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 1/4*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/4*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 + 1/4*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/4*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/8*y), rest 0
mdiv s = 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y + 1/8*y^2 - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y + 1/8*y^2 - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y + 1/8*y^2 - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y + 1/8*y^2 - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y + 1/8*y^2 - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[4]:  - y^3) = (quot:  - 1/8), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2: (lts:  - 4*x^5*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2: (lts:  - 4*x^5*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2: (lts:  - 4*x^5*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 13/2*x^4*y + 5*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 5*x^4*y^2 - 4*x^5*y^2: (lts:  - 4*x^5*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x^4), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 17/2*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 3*x^4*y^2: (lts:  - 3*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 17/2*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 3*x^4*y^2: (lts:  - 3*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 17/2*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 3*x^4*y^2: (lts:  - 3*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 7/4*x^3*y + 17/2*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 13/2*x^3*y^2 - 3*x^4*y^2: (lts:  - 3*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/2*x^3), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 3/2*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 13/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 5*x^3*y^2: (lts:  - 5*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 3/2*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 13/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 5*x^3*y^2: (lts:  - 5*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 3/2*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 13/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 5*x^3*y^2: (lts:  - 5*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 3/2*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 1/8*x^2*y + 13/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 - 7/4*x^2*y^2 - 5*x^3*y^2: (lts:  - 5*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 5/2*x^2), rest 0
mdiv s = 1/8*x^2 - 19/8*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 21/8*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 + 3/4*x^2*y^2: (lts:  + 3/4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 - 19/8*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 21/8*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 + 3/4*x^2*y^2: (lts:  + 3/4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x^2 - 19/8*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 21/8*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 + 3/4*x^2*y^2: (lts:  + 3/4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 - 19/8*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/8*x*y + 21/8*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/8*x*y^2 + 3/4*x^2*y^2: (lts:  + 3/4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/8*x), rest 0
mdiv s = 1/2*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/2*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/2*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/2*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 - 1/2*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*y - 1/4*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*y - 1/4*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*y - 1/4*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*y - 1/4*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*y - 1/4*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/4*x + 1/4*x^2 - 2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*y - 1/4*x*y + 9/4*x^2*y + 23/4*x^3*y + 10*x^4*y + 7*x^5*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1/2), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 15/4*x^2*y + 27/4*x^3*y + 10*x^4*y + 7*x^5*y: (lts:  + 7*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 15/4*x^2*y + 27/4*x^3*y + 10*x^4*y + 7*x^5*y: (lts:  + 7*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 15/4*x^2*y + 27/4*x^3*y + 10*x^4*y + 7*x^5*y: (lts:  + 7*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 15/4*x^2*y + 27/4*x^3*y + 10*x^4*y + 7*x^5*y: (lts:  + 7*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 15/4*x^2*y + 27/4*x^3*y + 10*x^4*y + 7*x^5*y: (lts:  + 7*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 15/4*x^2*y + 27/4*x^3*y + 10*x^4*y + 7*x^5*y: (lts:  + 7*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 15/4*x^2*y + 27/4*x^3*y + 10*x^4*y + 7*x^5*y: (lts:  + 7*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  - 7/4*y), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 - 3/2*x^3 - 4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y - 29/4*x^3*y - 15/2*x^4*y: (lts:  - 15/2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 15/8*x), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 9/4*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8 + 1/4*x^2*y + 1/4*x^3*y: (lts:  + 1/4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/16), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8: (lts:  + 4*x^8) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8: (lts:  + 4*x^8) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8: (lts:  + 4*x^8) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8: (lts:  + 4*x^8) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8: (lts:  + 4*x^8) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8: (lts:  + 4*x^8) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 7/2*x^5 - 2*x^6 + 4*x^7 + 4*x^8: (lts:  + 4*x^8) / (ltf[6]:  - 4*x^5) = (quot:  - x^3), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 11/2*x^5 - 10*x^6 - 6*x^7: (lts:  - 6*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 11/2*x^5 - 10*x^6 - 6*x^7: (lts:  - 6*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 11/2*x^5 - 10*x^6 - 6*x^7: (lts:  - 6*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 11/2*x^5 - 10*x^6 - 6*x^7: (lts:  - 6*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 11/2*x^5 - 10*x^6 - 6*x^7: (lts:  - 6*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 11/2*x^5 - 10*x^6 - 6*x^7: (lts:  - 6*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 - 1/4*x^4 - 11/2*x^5 - 10*x^6 - 6*x^7: (lts:  - 6*x^7) / (ltf[6]:  - 4*x^5) = (quot:  + 3/2*x^2), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 + 11/4*x^4 + 13/2*x^5 + 5*x^6: (lts:  + 5*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 + 11/4*x^4 + 13/2*x^5 + 5*x^6: (lts:  + 5*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 + 11/4*x^4 + 13/2*x^5 + 5*x^6: (lts:  + 5*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 + 11/4*x^4 + 13/2*x^5 + 5*x^6: (lts:  + 5*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 + 11/4*x^4 + 13/2*x^5 + 5*x^6: (lts:  + 5*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 + 11/4*x^4 + 13/2*x^5 + 5*x^6: (lts:  + 5*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 + 17/8*x^3 + 11/4*x^4 + 13/2*x^5 + 5*x^6: (lts:  + 5*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - 5/4*x), rest 0
mdiv s = 7/8*x^2 - 3/8*x^3 - 29/4*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 - 3/8*x^3 - 29/4*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 - 3/8*x^3 - 29/4*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 7/8*x^2 - 3/8*x^3 - 29/4*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 - 3/8*x^3 - 29/4*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 7/8*x^2 - 3/8*x^3 - 29/4*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 7/8*x^2 - 3/8*x^3 - 29/4*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 3/2), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 31/8*x^2 + 93/8*x^3 + 31/4*x^4: (lts:  + 31/4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 31/8), rest 0
multipleDivide: 4*x^7 + 4*x^8 - 4*x^5*y^2 + 2*x^2*y^3 + 8*x^3*y^3 + 10*x^4*y^3 =  + (1/4 - 3/8*x + 5/2*x^2 + 3/2*x^3 + 2*x^4 + 1/8*y - 1/4*x*y - 3/2*x^2*y - 5*x^3*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/8) * (x^2 + x^3 - y^2 - y^3) + (1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (3/2 - 5/4*x + 3/2*x^2 - x^3 - 7/4*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/16 + 15/8*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (31/8) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - 4*x^6 - 12*x^7 - 8*x^8 + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 8*x^3*y^2 - 10*x^4*y^2: (lts:  - 10*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^6 - 12*x^7 - 8*x^8 + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 8*x^3*y^2 - 10*x^4*y^2: (lts:  - 10*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^6 - 12*x^7 - 8*x^8 + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 8*x^3*y^2 - 10*x^4*y^2: (lts:  - 10*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^6 - 12*x^7 - 8*x^8 + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 8*x^3*y^2 - 10*x^4*y^2: (lts:  - 10*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 5*x^3), rest 0
mdiv s =  - 5*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 5*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 5*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 5*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 5*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 3*x^3*y^2: (lts:  - 3*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/2*x^2), rest 0
mdiv s =  - 3/2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 3/2*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 3/2*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 3/2*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 3/2*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4*x), rest 0
mdiv s =  - 1/4*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 1/4*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 1/4*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 1/4*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + 1/4*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/8), rest 0
mdiv s = 1/8*x - 1/8*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 1/8*y + 1/8*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 1/8*y + 1/8*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 1/8*y + 1/8*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 1/8*y + 1/8*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 1/8*y + 1/8*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 - 7/4*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 1/8*y + 1/8*x*y + 7/4*x^2*y + 13/2*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1/4), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y: (lts:  - 16*x^8*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y: (lts:  - 16*x^8*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y: (lts:  - 16*x^8*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y: (lts:  - 16*x^8*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y: (lts:  - 16*x^8*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y: (lts:  - 16*x^8*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y: (lts:  - 16*x^8*y) / (ltf[6]:  - 4*x^5) = (quot:  + 4*x^3*y), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 12*x^5*y + 28*x^6*y + 16*x^7*y: (lts:  + 16*x^7*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 12*x^5*y + 28*x^6*y + 16*x^7*y: (lts:  + 16*x^7*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 12*x^5*y + 28*x^6*y + 16*x^7*y: (lts:  + 16*x^7*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 12*x^5*y + 28*x^6*y + 16*x^7*y: (lts:  + 16*x^7*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 12*x^5*y + 28*x^6*y + 16*x^7*y: (lts:  + 16*x^7*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 12*x^5*y + 28*x^6*y + 16*x^7*y: (lts:  + 16*x^7*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y + 5*x^4*y + 12*x^5*y + 28*x^6*y + 16*x^7*y: (lts:  + 16*x^7*y) / (ltf[6]:  - 4*x^5) = (quot:  - 4*x^2*y), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y - 3*x^4*y - 20*x^5*y - 12*x^6*y: (lts:  - 12*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y - 3*x^4*y - 20*x^5*y - 12*x^6*y: (lts:  - 12*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y - 3*x^4*y - 20*x^5*y - 12*x^6*y: (lts:  - 12*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y - 3*x^4*y - 20*x^5*y - 12*x^6*y: (lts:  - 12*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y - 3*x^4*y - 20*x^5*y - 12*x^6*y: (lts:  - 12*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y - 3*x^4*y - 20*x^5*y - 12*x^6*y: (lts:  - 12*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 6*x^3*y - 3*x^4*y - 20*x^5*y - 12*x^6*y: (lts:  - 12*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  + 3*x*y), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 12*x^3*y + 21*x^4*y + 10*x^5*y: (lts:  + 10*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 12*x^3*y + 21*x^4*y + 10*x^5*y: (lts:  + 10*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 12*x^3*y + 21*x^4*y + 10*x^5*y: (lts:  + 10*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 12*x^3*y + 21*x^4*y + 10*x^5*y: (lts:  + 10*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 12*x^3*y + 21*x^4*y + 10*x^5*y: (lts:  + 10*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 12*x^3*y + 21*x^4*y + 10*x^5*y: (lts:  + 10*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 + x^2*y + 12*x^3*y + 21*x^4*y + 10*x^5*y: (lts:  + 10*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  - 5/2*y), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 13/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 8*x^3*y - 4*x^4*y: (lts:  - 4*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + x), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8 - 4*x^2*y - 4*x^3*y: (lts:  - 4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8: (lts:  - 8*x^8) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8: (lts:  - 8*x^8) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8: (lts:  - 8*x^8) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8: (lts:  - 8*x^8) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8: (lts:  - 8*x^8) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8: (lts:  - 8*x^8) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - 5*x^5 - 4*x^6 - 12*x^7 - 8*x^8: (lts:  - 8*x^8) / (ltf[6]:  - 4*x^5) = (quot:  + 2*x^3), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - x^5 + 12*x^6 + 8*x^7: (lts:  + 8*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - x^5 + 12*x^6 + 8*x^7: (lts:  + 8*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - x^5 + 12*x^6 + 8*x^7: (lts:  + 8*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - x^5 + 12*x^6 + 8*x^7: (lts:  + 8*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - x^5 + 12*x^6 + 8*x^7: (lts:  + 8*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - x^5 + 12*x^6 + 8*x^7: (lts:  + 8*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 9/2*x^4 - x^5 + 12*x^6 + 8*x^7: (lts:  + 8*x^7) / (ltf[6]:  - 4*x^5) = (quot:  - 2*x^2), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 17/2*x^4 - 17*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 17/2*x^4 - 17*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 17/2*x^4 - 17*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 17/2*x^4 - 17*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 17/2*x^4 - 17*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 17/2*x^4 - 17*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 2*x^3 - 17/2*x^4 - 17*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + 2*x), rest 0
mdiv s = 3/2*x^2 + 6*x^3 + 15/2*x^4 + 3*x^5: (lts:  + 3*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 6*x^3 + 15/2*x^4 + 3*x^5: (lts:  + 3*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 6*x^3 + 15/2*x^4 + 3*x^5: (lts:  + 3*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 6*x^3 + 15/2*x^4 + 3*x^5: (lts:  + 3*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 6*x^3 + 15/2*x^4 + 3*x^5: (lts:  + 3*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 6*x^3 + 15/2*x^4 + 3*x^5: (lts:  + 3*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 6*x^3 + 15/2*x^4 + 3*x^5: (lts:  + 3*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 3/4), rest 0
multipleDivide:  - 4*x^6 - 12*x^7 - 8*x^8 + 4*x^5*y - 4*x^6*y - 24*x^7*y - 16*x^8*y - 2*x^2*y^2 - 8*x^3*y^2 - 10*x^4*y^2 =  + ( - 1/8 + 1/4*x + 3/2*x^2 + 5*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/4) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 3/4 + 2*x - 2*x^2 + 2*x^3 - 5/2*y + 3*x*y - 4*x^2*y + 4*x^3*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1 + x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y: (lts:  + 6*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 3/2*x), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2), rest 0
multipleDivide:  - 2*x^4 - 2*x^5 + 2*x^2*y + 8*x^3*y + 6*x^4*y =  + (1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/2 - 3/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 6*x^3 - 4*x^4: (lts:  - 4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 2), rest 0
multipleDivide:  - 2*x^2 - 6*x^3 - 4*x^4 =  + ( - 2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 4*x^4 + 4*x^5 - 2*x^2*z - 2*x^3*z - 4*x^2*y*z: (lts:  - 4*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - 4*x^2), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 2*x^2), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 + 2*x^2*y + 2*x^2*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 + 2*x^2*y + 2*x^2*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 + 2*x^2*y + 2*x^2*y^2 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  - 2*x), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 + 2*x*y + 2*x^2*y + 2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 + 2*x*y + 2*x^2*y + 2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 + 2*x*y + 2*x^2*y + 2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 + 2*x*y + 2*x^2*y + 2*x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5 + x*y + x^2*y + x*y^2: (lts:  + x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2), rest 0
mdiv s = 1/2*x + 3/2*x^2 + 5*x^3 + 8*x^4 + 4*x^5 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + 5*x^3 + 8*x^4 + 4*x^5 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + 5*x^3 + 8*x^4 + 4*x^5 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + 5*x^3 + 8*x^4 + 4*x^5 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + 5*x^3 + 8*x^4 + 4*x^5 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/2*x + 3/2*x^2 + 5*x^3 + 8*x^4 + 4*x^5 - 1/2*y + 1/2*x*y + x^2*y - 1/2*y^2: (lts:  - 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 4*x^3 + 8*x^4 + 4*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 8*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1), rest 0
multipleDivide: 4*x^4 + 4*x^5 - 2*x^2*z - 2*x^3*z - 4*x^2*y*z =  + ( - 4*x^2) * (x + x^2 + y*z) + ( - 2*x - 2*x^2) * (y + y^2 + x*z) + ( - 1/2 - x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 4*x^4*y^2 + 4*x^3*y*z - 2*x^2*z^2 - 2*x^3*z^2 - 4*x^2*y*z^2: (lts:  - 4*x^2*y*z^2) / (ltf[0]:  + y*z) = (quot:  - 4*x^2*z), rest 0
mdiv s = 4*x^4*y^2 + 4*x^3*z + 4*x^4*z + 4*x^3*y*z - 2*x^2*z^2 - 2*x^3*z^2: (lts:  - 2*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^4*y^2 + 4*x^3*z + 4*x^4*z + 4*x^3*y*z - 2*x^2*z^2 - 2*x^3*z^2: (lts:  - 2*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  - 2*x^3), rest 0
mdiv s = 2*x^4*y + 4*x^4*y^2 + 6*x^3*z + 4*x^4*z + 4*x^3*y*z - 2*x^2*z^2: (lts:  - 2*x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^4*y + 4*x^4*y^2 + 6*x^3*z + 4*x^4*z + 4*x^3*y*z - 2*x^2*z^2: (lts:  - 2*x^2*z^2) / (ltf[1]:  + z^2) = (quot:  - 2*x^2), rest 0
mdiv s = 2*x^3*y + 2*x^4*y + 4*x^4*y^2 + 2*x^2*z + 6*x^3*z + 4*x^4*z + 4*x^3*y*z: (lts:  + 4*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 4*x^3), rest 0
mdiv s =  - 4*x^4 - 4*x^5 + 2*x^3*y + 2*x^4*y + 4*x^4*y^2 + 2*x^2*z + 6*x^3*z + 4*x^4*z: (lts:  + 4*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 + 2*x^3*y + 2*x^4*y + 4*x^4*y^2 + 2*x^2*z + 6*x^3*z + 4*x^4*z: (lts:  + 4*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 + 2*x^3*y + 2*x^4*y + 4*x^4*y^2 + 2*x^2*z + 6*x^3*z + 4*x^4*z: (lts:  + 4*x^4*z) / (ltf[2]:  + x*z) = (quot:  + 4*x^3), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 2*x^3*y + 2*x^4*y - 4*x^3*y^2 + 4*x^4*y^2 + 2*x^2*z + 6*x^3*z: (lts:  + 6*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 2*x^3*y + 2*x^4*y - 4*x^3*y^2 + 4*x^4*y^2 + 2*x^2*z + 6*x^3*z: (lts:  + 6*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 2*x^3*y + 2*x^4*y - 4*x^3*y^2 + 4*x^4*y^2 + 2*x^2*z + 6*x^3*z: (lts:  + 6*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 6*x^2), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 6*x^2*y - 2*x^3*y + 2*x^4*y - 6*x^2*y^2 - 4*x^3*y^2 + 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 6*x^2*y - 2*x^3*y + 2*x^4*y - 6*x^2*y^2 - 4*x^3*y^2 + 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 6*x^2*y - 2*x^3*y + 2*x^4*y - 6*x^2*y^2 - 4*x^3*y^2 + 4*x^4*y^2 + 2*x^2*z: (lts:  + 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  + 2*x), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 2*x*y - 6*x^2*y - 2*x^3*y + 2*x^4*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 2*x*y - 6*x^2*y - 2*x^3*y + 2*x^4*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 2*x*y - 6*x^2*y - 2*x^3*y + 2*x^4*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 4*x^5 - 2*x*y - 6*x^2*y - 2*x^3*y + 2*x^4*y - 2*x*y^2 - 6*x^2*y^2 - 4*x^3*y^2 + 4*x^4*y^2: (lts:  + 4*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x^3), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 6*x^2*y - 4*x^3*y - 2*x*y^2 - 6*x^2*y^2 - 6*x^3*y^2: (lts:  - 6*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 6*x^2*y - 4*x^3*y - 2*x*y^2 - 6*x^2*y^2 - 6*x^3*y^2: (lts:  - 6*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 6*x^2*y - 4*x^3*y - 2*x*y^2 - 6*x^2*y^2 - 6*x^3*y^2: (lts:  - 6*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^4 - 2*x^5 - 2*x*y - 6*x^2*y - 4*x^3*y - 2*x*y^2 - 6*x^2*y^2 - 6*x^3*y^2: (lts:  - 6*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3*x^2), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 - 2*x*y - 3*x^2*y - x^3*y - 2*x*y^2 - 3*x^2*y^2: (lts:  - 3*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 - 2*x*y - 3*x^2*y - x^3*y - 2*x*y^2 - 3*x^2*y^2: (lts:  - 3*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 - 2*x*y - 3*x^2*y - x^3*y - 2*x*y^2 - 3*x^2*y^2: (lts:  - 3*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 5*x^4 - 2*x^5 - 2*x*y - 3*x^2*y - x^3*y - 2*x*y^2 - 3*x^2*y^2: (lts:  - 3*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/2*x), rest 0
mdiv s =  - 3/2*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 - 1/2*x*y - 3/2*x^2*y - x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 - 1/2*x*y - 3/2*x^2*y - x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 - 1/2*x*y - 3/2*x^2*y - x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 - 1/2*x*y - 3/2*x^2*y - x^3*y - 1/2*x*y^2: (lts:  - 1/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 + 1/4*y - 1/4*x*y - 3/2*x^2*y - x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 + 1/4*y - 1/4*x*y - 3/2*x^2*y - x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 + 1/4*y - 1/4*x*y - 3/2*x^2*y - x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 + 1/4*y - 1/4*x*y - 3/2*x^2*y - x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 + 1/4*y - 1/4*x*y - 3/2*x^2*y - x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/4*x - 7/4*x^2 - 9/2*x^3 - 5*x^4 - 2*x^5 + 1/4*y - 1/4*x*y - 3/2*x^2*y - x^3*y + 1/4*y^2: (lts:  + 1/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 4*x^3 - 5*x^4 - 2*x^5: (lts:  - 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2), rest 0
multipleDivide: 4*x^4*y^2 + 4*x^3*y*z - 2*x^2*z^2 - 2*x^3*z^2 - 4*x^2*y*z^2 =  + (4*x^3 - 4*x^2*z) * (x + x^2 + y*z) + ( - 2*x^2 - 2*x^3) * (x*y + z + z^2) + (2*x + 6*x^2 + 4*x^3) * (y + y^2 + x*z) + (1/4 + 3/2*x + 3*x^2 - 2*x^3) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s = 4*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z - 2*x^3*z - 4*x^2*y*z: (lts:  - 4*x^2*y*z) / (ltf[0]:  + y*z) = (quot:  - 4*x^2), rest 0
mdiv s = 4*x^3 + 4*x^4 + 4*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 4*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 4*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z - 2*x^3*z: (lts:  - 2*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 2*x^2), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x^2*y + 6*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x^2*y + 6*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x^2*y + 6*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z: (lts:  - 2*x^2*z) / (ltf[2]:  + x*z) = (quot:  - 2*x), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 2*x^2*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 2*x^2*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 2*x^2*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 2*x^2*y + 2*x*y^2 + 6*x^2*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x*y), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 4*x^2*y + 2*x^3*y + 4*x^2*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 4*x^2*y + 2*x^3*y + 4*x^2*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 4*x^2*y + 2*x^3*y + 4*x^2*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + 2*x*y + 4*x^2*y + 2*x^3*y + 4*x^2*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + y), rest 0
mdiv s = 4*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + y^2 + x*y^2 + 4*x^2*y^2 + y^3: (lts:  + y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + y^2 + x*y^2 + 4*x^2*y^2 + y^3: (lts:  + y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + y^2 + x*y^2 + 4*x^2*y^2 + y^3: (lts:  + y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + y^2 + x*y^2 + 4*x^2*y^2 + y^3: (lts:  + y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + y^2 + x*y^2 + 4*x^2*y^2 + y^3: (lts:  + y^3) / (ltf[4]:  - y^3) = (quot:  - 1), rest 0
mdiv s = x^2 + 5*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 5*x^3 + 4*x^4 + x*y + 3*x^2*y + 2*x^3*y + x*y^2 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x), rest 0
mdiv s = 3*x^2 + 7*x^3 + 4*x^4 - x*y + x^2*y + 2*x^3*y - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 7*x^3 + 4*x^4 - x*y + x^2*y + 2*x^3*y - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 7*x^3 + 4*x^4 - x*y + x^2*y + 2*x^3*y - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 7*x^3 + 4*x^4 - x*y + x^2*y + 2*x^3*y - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x + 5/2*x^2 + 7*x^3 + 4*x^4 + 1/2*y - 1/2*x*y + x^2*y + 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 5/2*x^2 + 7*x^3 + 4*x^4 + 1/2*y - 1/2*x*y + x^2*y + 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 5/2*x^2 + 7*x^3 + 4*x^4 + 1/2*y - 1/2*x*y + x^2*y + 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 5/2*x^2 + 7*x^3 + 4*x^4 + 1/2*y - 1/2*x*y + x^2*y + 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 5/2*x^2 + 7*x^3 + 4*x^4 + 1/2*y - 1/2*x*y + x^2*y + 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x + 5/2*x^2 + 7*x^3 + 4*x^4 + 1/2*y - 1/2*x*y + x^2*y + 2*x^3*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 4*x^2 + 8*x^3 + 4*x^4 + 4*x^2*y + 4*x^3*y: (lts:  + 4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 2), rest 0
multipleDivide: 4*x^2*y^2 + 4*x^2*y^3 - 2*x^2*z - 2*x^3*z - 4*x^2*y*z =  + ( - 4*x^2) * (x + x^2 + y*z) + ( - 2*x - 2*x^2) * (y + y^2 + x*z) + (1/2 - 2*x + y - 2*x*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * (x^2 + x^3 - y^2 - y^3) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^3 + 2*x^4 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4 - x*y - x^2*y - x*y^2: (lts:  - x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/2), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x + 1/2*x^2 + 3*x^3 + 2*x^4 + 1/2*y - 1/2*x*y - x^2*y + 1/2*y^2: (lts:  + 1/2*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 1), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 4*x^3 + 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1), rest 0
multipleDivide: 2*x^3 + 2*x^4 + 2*x^2*y^2 =  + (1/2 - x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y^2 - 2*x^3*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y^2 - 2*x^3*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y^2 - 2*x^3*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y^2 - 2*x^3*y^2 + 4*x^2*y^3: (lts:  + 4*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 2*x*y), rest 0
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y + 2*x^3*y - 2*x*y^2 - 2*x^3*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y + 2*x^3*y - 2*x*y^2 - 2*x^3*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y + 2*x^3*y - 2*x*y^2 - 2*x^3*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 + 2*x^2*y + 2*x^3*y - 2*x*y^2 - 2*x^3*y^2 - 2*x*y^3: (lts:  - 2*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + y), rest 0
mdiv s = 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y + y^2 - x*y^2 - 2*x^3*y^2 + y^3: (lts:  + y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y + y^2 - x*y^2 - 2*x^3*y^2 + y^3: (lts:  + y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y + y^2 - x*y^2 - 2*x^3*y^2 + y^3: (lts:  + y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y + y^2 - x*y^2 - 2*x^3*y^2 + y^3: (lts:  + y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y + y^2 - x*y^2 - 2*x^3*y^2 + y^3: (lts:  + y^3) / (ltf[4]:  - y^3) = (quot:  - 1), rest 0
mdiv s = x^2 + x^3 + 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y - x*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y - x*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y - x*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 4*x^5 + 4*x^6 - x*y + x^2*y + 2*x^3*y - x*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x^2), rest 0
mdiv s = x^2 - x^4 + 4*x^5 + 4*x^6 - x*y + 2*x^2*y + 3*x^3*y - x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 - x^4 + 4*x^5 + 4*x^6 - x*y + 2*x^2*y + 3*x^3*y - x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 - x^4 + 4*x^5 + 4*x^6 - x*y + 2*x^2*y + 3*x^3*y - x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 - x^4 + 4*x^5 + 4*x^6 - x*y + 2*x^2*y + 3*x^3*y - x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2*x), rest 0
mdiv s = 3/2*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 - 3/2*x*y + 3/2*x^2*y + 3*x^3*y - 3/2*x*y^2: (lts:  - 3/2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 - 3/2*x*y + 3/2*x^2*y + 3*x^3*y - 3/2*x*y^2: (lts:  - 3/2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 - 3/2*x*y + 3/2*x^2*y + 3*x^3*y - 3/2*x*y^2: (lts:  - 3/2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 - 3/2*x*y + 3/2*x^2*y + 3*x^3*y - 3/2*x*y^2: (lts:  - 3/2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/4), rest 0
mdiv s =  - 3/4*x + 3/4*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 + 3/4*y - 3/4*x*y + 3/2*x^2*y + 3*x^3*y + 3/4*y^2: (lts:  + 3/4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/4*x + 3/4*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 + 3/4*y - 3/4*x*y + 3/2*x^2*y + 3*x^3*y + 3/4*y^2: (lts:  + 3/4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/4*x + 3/4*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 + 3/4*y - 3/4*x*y + 3/2*x^2*y + 3*x^3*y + 3/4*y^2: (lts:  + 3/4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/4*x + 3/4*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 + 3/4*y - 3/4*x*y + 3/2*x^2*y + 3*x^3*y + 3/4*y^2: (lts:  + 3/4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3/4*x + 3/4*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 + 3/4*y - 3/4*x*y + 3/2*x^2*y + 3*x^3*y + 3/4*y^2: (lts:  + 3/4*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3/4*x + 3/4*x^2 + 1/2*x^3 - x^4 + 4*x^5 + 4*x^6 + 3/4*y - 3/4*x*y + 3/2*x^2*y + 3*x^3*y + 3/4*y^2: (lts:  + 3/4*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 3/2), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 3*x^2 + 2*x^3 - x^4 + 4*x^5 + 4*x^6 + 6*x^2*y + 6*x^3*y: (lts:  + 6*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 3/2), rest 0
mdiv s =  - x^3 - x^4 + 4*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 + 4*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 + 4*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 + 4*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 + 4*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 + 4*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 + 4*x^5 + 4*x^6: (lts:  + 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - x), rest 0
mdiv s =  - 3*x^3 - 9*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 9*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 9*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 9*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 9*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 9*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3*x^3 - 9*x^4 - 6*x^5: (lts:  - 6*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 3/2), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 6*x^4: (lts:  + 6*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 3), rest 0
multipleDivide: 4*x^5 + 4*x^6 + 2*x^2*y^2 - 2*x^3*y^2 + 4*x^2*y^3 =  + (3/4 - 1/2*x + x^2 + y - 2*x*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1) * (x^2 + x^3 - y^2 - y^3) + (3/2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (3/2 - x) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 3/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (3) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - 4*x^4 - 12*x^5 - 8*x^6 - 2*x^2*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 12*x^5 - 8*x^6 - 2*x^2*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 12*x^5 - 8*x^6 - 2*x^2*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^4 - 12*x^5 - 8*x^6 - 2*x^2*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 2*x), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 + 2*x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 + 2*x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 + 2*x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 + 2*x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y + 2*x*y^2: (lts:  + 2*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1), rest 0
mdiv s = x - x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - y + x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - y^2: (lts:  - y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x - x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - y + x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - y^2: (lts:  - y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x - x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - y + x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - y^2: (lts:  - y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x - x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - y + x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - y^2: (lts:  - y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x - x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - y + x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - y^2: (lts:  - y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x - x^2 - 2*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - y + x*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - y^2: (lts:  - y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 2), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y - 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y: (lts:  - 16*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y - 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y: (lts:  - 16*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y - 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y: (lts:  - 16*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y - 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y: (lts:  - 16*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y - 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y: (lts:  - 16*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y - 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y: (lts:  - 16*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y - 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y: (lts:  - 16*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  + 4*x*y), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y + 6*x^3*y + 28*x^4*y + 16*x^5*y: (lts:  + 16*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y + 6*x^3*y + 28*x^4*y + 16*x^5*y: (lts:  + 16*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y + 6*x^3*y + 28*x^4*y + 16*x^5*y: (lts:  + 16*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y + 6*x^3*y + 28*x^4*y + 16*x^5*y: (lts:  + 16*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y + 6*x^3*y + 28*x^4*y + 16*x^5*y: (lts:  + 16*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y + 6*x^3*y + 28*x^4*y + 16*x^5*y: (lts:  + 16*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 6*x^2*y + 6*x^3*y + 28*x^4*y + 16*x^5*y: (lts:  + 16*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  - 4*y), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 4*x^2 - 4*x^3 - 4*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 26*x^3*y - 12*x^4*y: (lts:  - 12*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 3*x), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 4*x^2 + 2*x^3 + 2*x^4 - 12*x^5 - 8*x^6 - 14*x^2*y - 14*x^3*y: (lts:  - 14*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 7/2), rest 0
mdiv s = 3*x^2 + 9*x^3 + 2*x^4 - 12*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 2*x^4 - 12*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 2*x^4 - 12*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 2*x^4 - 12*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 2*x^4 - 12*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 2*x^4 - 12*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 9*x^3 + 2*x^4 - 12*x^5 - 8*x^6: (lts:  - 8*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + 2*x), rest 0
mdiv s = 3*x^2 + 13*x^3 + 18*x^4 + 8*x^5: (lts:  + 8*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 13*x^3 + 18*x^4 + 8*x^5: (lts:  + 8*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 13*x^3 + 18*x^4 + 8*x^5: (lts:  + 8*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^2 + 13*x^3 + 18*x^4 + 8*x^5: (lts:  + 8*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 13*x^3 + 18*x^4 + 8*x^5: (lts:  + 8*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3*x^2 + 13*x^3 + 18*x^4 + 8*x^5: (lts:  + 8*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3*x^2 + 13*x^3 + 18*x^4 + 8*x^5: (lts:  + 8*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 2), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1), rest 0
multipleDivide:  - 4*x^4 - 12*x^5 - 8*x^6 - 2*x^2*y + 2*x^3*y - 4*x^4*y - 24*x^5*y - 16*x^6*y - 4*x^2*y^2 =  + ( - 1 + 2*x) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 2) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 2 + 2*x - 4*y + 4*x*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (7/2 + 3*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y: (lts:  - 6*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 3/2*x), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 3*x^3 + 5*x^4 + 2*x^5 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 4*x^3 + 5*x^4 + 2*x^5: (lts:  + 2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1/2), rest 0
multipleDivide: 2*x^4 + 2*x^5 - 2*x^2*y - 8*x^3*y - 6*x^4*y =  + ( - 1/2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (1/2 + 3/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - x^2 - 3*x^3 - 2*x^4: (lts:  - 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1), rest 0
multipleDivide:  - 2*x^3 - 2*x^4 + 2*x^2*y + 2*x^3*y =  + ( - 1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - 2*x^5 - 2*x^6 + x^2*y*z + 3*x^3*y*z: (lts:  + 3*x^3*y*z) / (ltf[0]:  + y*z) = (quot:  + 3*x^3), rest 0
mdiv s =  - 3*x^4 - 5*x^5 - 2*x^6 + x^2*y*z: (lts:  + x^2*y*z) / (ltf[0]:  + y*z) = (quot:  + x^2), rest 0
mdiv s =  - x^3 - 4*x^4 - 5*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3 - 4*x^4 - 5*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^3 - 4*x^4 - 5*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^3 - 4*x^4 - 5*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^3 - 4*x^4 - 5*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^3 - 4*x^4 - 5*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^3 - 4*x^4 - 5*x^5 - 2*x^6: (lts:  - 2*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2*x), rest 0
multipleDivide:  - 2*x^5 - 2*x^6 + x^2*y*z + 3*x^3*y*z =  + (x^2 + 3*x^3) * (x + x^2 + y*z) + (1/2*x) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + [Rest = 0]
mdiv s =  - 2*x^5*y - 2*x^4*z + x^2*z^2 + 3*x^3*z^2: (lts:  + 3*x^3*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^5*y - 2*x^4*z + x^2*z^2 + 3*x^3*z^2: (lts:  + 3*x^3*z^2) / (ltf[1]:  + z^2) = (quot:  + 3*x^3), rest 0
mdiv s =  - 3*x^4*y - 2*x^5*y - 3*x^3*z - 2*x^4*z + x^2*z^2: (lts:  + x^2*z^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^4*y - 2*x^5*y - 3*x^3*z - 2*x^4*z + x^2*z^2: (lts:  + x^2*z^2) / (ltf[1]:  + z^2) = (quot:  + x^2), rest 0
mdiv s =  - x^3*y - 3*x^4*y - 2*x^5*y - x^2*z - 3*x^3*z - 2*x^4*z: (lts:  - 2*x^4*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3*y - 3*x^4*y - 2*x^5*y - x^2*z - 3*x^3*z - 2*x^4*z: (lts:  - 2*x^4*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^3*y - 3*x^4*y - 2*x^5*y - x^2*z - 3*x^3*z - 2*x^4*z: (lts:  - 2*x^4*z) / (ltf[2]:  + x*z) = (quot:  - 2*x^3), rest 0
mdiv s = x^3*y - 3*x^4*y - 2*x^5*y + 2*x^3*y^2 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3*y - 3*x^4*y - 2*x^5*y + 2*x^3*y^2 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^3*y - 3*x^4*y - 2*x^5*y + 2*x^3*y^2 - x^2*z - 3*x^3*z: (lts:  - 3*x^3*z) / (ltf[2]:  + x*z) = (quot:  - 3*x^2), rest 0
mdiv s = 3*x^2*y + x^3*y - 3*x^4*y - 2*x^5*y + 3*x^2*y^2 + 2*x^3*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3*x^2*y + x^3*y - 3*x^4*y - 2*x^5*y + 3*x^2*y^2 + 2*x^3*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3*x^2*y + x^3*y - 3*x^4*y - 2*x^5*y + 3*x^2*y^2 + 2*x^3*y^2 - x^2*z: (lts:  - x^2*z) / (ltf[2]:  + x*z) = (quot:  - x), rest 0
mdiv s = x*y + 3*x^2*y + x^3*y - 3*x^4*y - 2*x^5*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x*y + 3*x^2*y + x^3*y - 3*x^4*y - 2*x^5*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x*y + 3*x^2*y + x^3*y - 3*x^4*y - 2*x^5*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x*y + 3*x^2*y + x^3*y - 3*x^4*y - 2*x^5*y + x*y^2 + 3*x^2*y^2 + 2*x^3*y^2: (lts:  + 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x^2), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y - 3*x^4*y - 2*x^5*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y - 3*x^4*y - 2*x^5*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y - 3*x^4*y - 2*x^5*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^3 + x^4 + x*y + 2*x^2*y - 3*x^4*y - 2*x^5*y + x*y^2 + 2*x^2*y^2: (lts:  + 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y - 3*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y - 3*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y - 3*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y - 3*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y - 3*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y - 3*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + x^2*y - 3*x^4*y - 2*x^5*y: (lts:  - 2*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2*y), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 2*x^3 + x^4 + 2*x^2*y + 4*x^3*y + 2*x^4*y: (lts:  + 2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2*x), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + x^3 + 2*x^2*y + 2*x^3*y: (lts:  + 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/2), rest 0
multipleDivide:  - 2*x^5*y - 2*x^4*z + x^2*z^2 + 3*x^3*z^2 =  + (x^2 + 3*x^3) * (x*y + z + z^2) + ( - x - 3*x^2 - 2*x^3) * (y + y^2 + x*z) + ( - x - x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/2*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/2 - 1/2*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^3*y - 2*x^3*y^2 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^3*y - 2*x^3*y^2 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^3*y - 2*x^3*y^2 + x^2*z + 3*x^3*z: (lts:  + 3*x^3*z) / (ltf[2]:  + x*z) = (quot:  + 3*x^2), rest 0
mdiv s =  - 3*x^2*y - 2*x^3*y - 3*x^2*y^2 - 2*x^3*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3*x^2*y - 2*x^3*y - 3*x^2*y^2 - 2*x^3*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3*x^2*y - 2*x^3*y - 3*x^2*y^2 - 2*x^3*y^2 + x^2*z: (lts:  + x^2*z) / (ltf[2]:  + x*z) = (quot:  + x), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x*y - 3*x^2*y - 2*x^3*y - x*y^2 - 3*x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x^2), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y - x^3*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y - x^3*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y - x^3*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^3 - x^4 - x*y - 2*x^2*y - x^3*y - x*y^2 - 2*x^2*y^2: (lts:  - 2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^2 - 2*x^3 - x^4 - x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/4), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 3/2*x^3 - x^4: (lts:  - x^4) / (ltf[8]:  + 2*x^4) = (quot:  - 1/2), rest 0
multipleDivide:  - 2*x^3*y - 2*x^3*y^2 + x^2*z + 3*x^3*z =  + (x + 3*x^2) * (y + y^2 + x*z) + (x + x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/4) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + ( - 1/2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s =  - x^4 - x^5 + x^3*y + x^4*y - x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^4 - x^5 + x^3*y + x^4*y - x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^4 - x^5 + x^3*y + x^4*y - x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^4 - x^5 + x^3*y + x^4*y - x^2*y^2 - 2*x^3*y^2: (lts:  - 2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + x^2), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - x^3 - 2*x^4 - x^5 + x^2*y + 2*x^3*y + x^4*y: (lts:  + x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4*x), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 3/2*x^3 - 5/2*x^4 - x^5 + x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 1/4), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 - 2*x^3 - 5/2*x^4 - x^5: (lts:  - x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 1/4), rest 0
multipleDivide:  - x^4 - x^5 + x^3*y + x^4*y - x^2*y^2 - 2*x^3*y^2 =  + (x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + (1/4) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 1/4 - 1/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s =  - 2*x^6 - 2*x^7 + 2*x^4*y^2 - x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 + 2*x^4*y^2 - x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 + 2*x^4*y^2 - x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 + 2*x^4*y^2 - x^2*y^3 - 3*x^3*y^3: (lts:  - 3*x^3*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 3/2*x^2*y), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 3/2*x^3*y - 3/2*x^4*y + 3/2*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 3/2*x^3*y - 3/2*x^4*y + 3/2*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 3/2*x^3*y - 3/2*x^4*y + 3/2*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 3/2*x^3*y - 3/2*x^4*y + 3/2*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/2*x^2*y^3: (lts:  + 1/2*x^2*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4*x*y), rest 0
mdiv s =  - 2*x^6 - 2*x^7 + 1/4*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/4*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 + 1/4*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/4*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 + 1/4*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/4*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 + 1/4*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/4*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 - 1/4*x*y^3: (lts:  - 1/4*x*y^3) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/8*y), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y + 1/8*y^2 - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y + 1/8*y^2 - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y + 1/8*y^2 - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y + 1/8*y^2 - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y + 1/8*y^2 - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2 + 1/8*y^3: (lts:  + 1/8*y^3) / (ltf[4]:  - y^3) = (quot:  - 1/8), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2: (lts:  + 2*x^4*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2: (lts:  + 2*x^4*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2: (lts:  + 2*x^4*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 5/4*x^3*y - 3/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 3/2*x^3*y^2 + 2*x^4*y^2: (lts:  + 2*x^4*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - x^3), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 9/4*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 1/2*x^3*y^2: (lts:  + 1/2*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 9/4*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 1/2*x^3*y^2: (lts:  + 1/2*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 9/4*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 1/2*x^3*y^2: (lts:  + 1/2*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 1/8*x^3 + x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y + 1/8*x^2*y - 9/4*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + 5/4*x^2*y^2 + 1/2*x^3*y^2: (lts:  + 1/2*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/4*x^2), rest 0
mdiv s = 1/8*x^2 + 3/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y - 1/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 3/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y - 1/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 3/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y - 1/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x^2 + 3/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 1/8*x*y - 1/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 1/8*x*y^2 + x^2*y^2: (lts:  + x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/2*x), rest 0
mdiv s = 5/8*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 5/8*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 5/8*x*y^2: (lts:  - 5/8*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 5/8*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 5/8*x*y^2: (lts:  - 5/8*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 5/8*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 5/8*x*y^2: (lts:  - 5/8*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 - 5/8*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y - 5/8*x*y^2: (lts:  - 5/8*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 5/16), rest 0
mdiv s =  - 5/16*x + 5/16*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/16*y - 5/16*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y + 5/16*y^2: (lts:  + 5/16*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 5/16*x + 5/16*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/16*y - 5/16*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y + 5/16*y^2: (lts:  + 5/16*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 5/16*x + 5/16*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/16*y - 5/16*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y + 5/16*y^2: (lts:  + 5/16*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 5/16*x + 5/16*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/16*y - 5/16*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y + 5/16*y^2: (lts:  + 5/16*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 5/16*x + 5/16*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/16*y - 5/16*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y + 5/16*y^2: (lts:  + 5/16*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 5/16*x + 5/16*x^2 + 7/8*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/16*y - 5/16*x*y - 5/8*x^2*y - 5/2*x^3*y - 5/2*x^4*y + 5/16*y^2: (lts:  + 5/16*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  + 5/8), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 3/2*x^3 + 5/4*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y - 5/4*x^3*y - 5/2*x^4*y: (lts:  - 5/2*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 5/8*x), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 5/4*x^2 + 11/4*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7 + 5/4*x^2*y + 5/4*x^3*y: (lts:  + 5/4*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  - 5/16), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7: (lts:  - 2*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7: (lts:  - 2*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7: (lts:  - 2*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7: (lts:  - 2*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7: (lts:  - 2*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7: (lts:  - 2*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 5/2*x^4 + x^5 - 2*x^6 - 2*x^7: (lts:  - 2*x^7) / (ltf[6]:  - 4*x^5) = (quot:  + 1/2*x^2), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 7/2*x^4 + 5*x^5 + 3*x^6: (lts:  + 3*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 7/2*x^4 + 5*x^5 + 3*x^6: (lts:  + 3*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 7/2*x^4 + 5*x^5 + 3*x^6: (lts:  + 3*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 7/2*x^4 + 5*x^5 + 3*x^6: (lts:  + 3*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 7/2*x^4 + 5*x^5 + 3*x^6: (lts:  + 3*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 7/2*x^4 + 5*x^5 + 3*x^6: (lts:  + 3*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 17/8*x^3 + 7/2*x^4 + 5*x^5 + 3*x^6: (lts:  + 3*x^6) / (ltf[6]:  - 4*x^5) = (quot:  - 3/4*x), rest 0
mdiv s = 5/8*x^2 + 5/8*x^3 - 5/2*x^4 - 5/2*x^5: (lts:  - 5/2*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 5/8*x^3 - 5/2*x^4 - 5/2*x^5: (lts:  - 5/2*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 5/8*x^3 - 5/2*x^4 - 5/2*x^5: (lts:  - 5/2*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 5/8*x^3 - 5/2*x^4 - 5/2*x^5: (lts:  - 5/2*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 5/8*x^3 - 5/2*x^4 - 5/2*x^5: (lts:  - 5/2*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 5/8*x^3 - 5/2*x^4 - 5/2*x^5: (lts:  - 5/2*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 5/8*x^2 + 5/8*x^3 - 5/2*x^4 - 5/2*x^5: (lts:  - 5/2*x^5) / (ltf[6]:  - 4*x^5) = (quot:  + 5/8), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 15/8*x^2 + 45/8*x^3 + 15/4*x^4: (lts:  + 15/4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 15/8), rest 0
multipleDivide:  - 2*x^6 - 2*x^7 + 2*x^4*y^2 - x^2*y^3 - 3*x^3*y^3 =  + (5/16 - 1/2*x - 1/4*x^2 - x^3 + 1/8*y - 1/4*x*y + 3/2*x^2*y) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/8) * (x^2 + x^3 - y^2 - y^3) + (5/8) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + (5/8 - 3/4*x + 1/2*x^2) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + ( - 5/16 + 5/8*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (15/8) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^5 + 6*x^6 + 4*x^7 - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^5 + 6*x^6 + 4*x^7 - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^5 + 6*x^6 + 4*x^7 - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^5 + 6*x^6 + 4*x^7 - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + x^2*y^2 + 3*x^3*y^2: (lts:  + 3*x^3*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 3/2*x^2), rest 0
mdiv s = 3/2*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 3/2*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 3/2*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 3/2*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 3/2*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 3/2*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/2*x^2*y^2: (lts:  - 1/2*x^2*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  + 1/4*x), rest 0
mdiv s =  - 1/4*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 + 1/4*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 + 1/4*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 + 1/4*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/4*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 + 1/4*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + 1/4*x*y^2: (lts:  + 1/4*x*y^2) / (ltf[3]:  - 2*x*y^2) = (quot:  - 1/8), rest 0
mdiv s = 1/8*x - 1/8*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 1/8*y + 1/8*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 1/8*y + 1/8*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 1/8*y + 1/8*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 1/8*y + 1/8*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 1/8*y + 1/8*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 1/8*x - 1/8*x^2 + 5/4*x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 1/8*y + 1/8*x*y - 5/4*x^2*y - 3/2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y - 1/8*y^2: (lts:  - 1/8*y^2) / (ltf[5]:  + 1/2*y^2) = (quot:  - 1/4), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y: (lts:  + 8*x^7*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y: (lts:  + 8*x^7*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y: (lts:  + 8*x^7*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y: (lts:  + 8*x^7*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y: (lts:  + 8*x^7*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y: (lts:  + 8*x^7*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y: (lts:  + 8*x^7*y) / (ltf[6]:  - 4*x^5) = (quot:  - 2*x^2*y), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 6*x^4*y - 14*x^5*y - 8*x^6*y: (lts:  - 8*x^6*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 6*x^4*y - 14*x^5*y - 8*x^6*y: (lts:  - 8*x^6*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 6*x^4*y - 14*x^5*y - 8*x^6*y: (lts:  - 8*x^6*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 6*x^4*y - 14*x^5*y - 8*x^6*y: (lts:  - 8*x^6*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 6*x^4*y - 14*x^5*y - 8*x^6*y: (lts:  - 8*x^6*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 6*x^4*y - 14*x^5*y - 8*x^6*y: (lts:  - 8*x^6*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y - 2*x^3*y - 6*x^4*y - 14*x^5*y - 8*x^6*y: (lts:  - 8*x^6*y) / (ltf[6]:  - 4*x^5) = (quot:  + 2*x*y), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y + 2*x^3*y + 10*x^4*y + 6*x^5*y: (lts:  + 6*x^5*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y + 2*x^3*y + 10*x^4*y + 6*x^5*y: (lts:  + 6*x^5*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y + 2*x^3*y + 10*x^4*y + 6*x^5*y: (lts:  + 6*x^5*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y + 2*x^3*y + 10*x^4*y + 6*x^5*y: (lts:  + 6*x^5*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y + 2*x^3*y + 10*x^4*y + 6*x^5*y: (lts:  + 6*x^5*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y + 2*x^3*y + 10*x^4*y + 6*x^5*y: (lts:  + 6*x^5*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 2*x^2*y + 2*x^3*y + 10*x^4*y + 6*x^5*y: (lts:  + 6*x^5*y) / (ltf[6]:  - 4*x^5) = (quot:  - 3/2*y), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + x^3 + 3/2*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 10*x^3*y - 5*x^4*y: (lts:  - 5*x^4*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 5/4*x), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s =  - 1/2*x^2 + 7/2*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7 - 5*x^2*y - 5*x^3*y: (lts:  - 5*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 5/4), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4 + 2*x^5 + 6*x^6 + 4*x^7: (lts:  + 4*x^7) / (ltf[6]:  - 4*x^5) = (quot:  - x^2), rest 0
mdiv s = 2*x^2 + 6*x^3 + 2*x^4 - 6*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 2*x^4 - 6*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 2*x^4 - 6*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 2*x^4 - 6*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 2*x^4 - 6*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 2*x^4 - 6*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 2*x^4 - 6*x^5 - 4*x^6: (lts:  - 4*x^6) / (ltf[6]:  - 4*x^5) = (quot:  + x), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 8*x^3 + 10*x^4 + 4*x^5: (lts:  + 4*x^5) / (ltf[6]:  - 4*x^5) = (quot:  - 1), rest 0
multipleDivide: 2*x^5 + 6*x^6 + 4*x^7 - 2*x^4*y + 2*x^5*y + 12*x^6*y + 8*x^7*y + x^2*y^2 + 3*x^3*y^2 =  + ( - 1/8 + 1/4*x - 3/2*x^2) * (x + x^2 - y - x*y - y^2 - 2*x*y^2) + ( - 1/4) * ( - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2) + ( - 1 + x - x^2 - 3/2*y + 2*x*y - 2*x^2*y) * ( - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5) + (5/4 + 5/4*x) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + [Rest = 0]
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = 2*x^2 + 6*x^3 + 4*x^4: (lts:  + 4*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 2), rest 0
multipleDivide: 2*x^2 + 6*x^3 + 4*x^4 =  + (2) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y: (lts:  - 2*x^3*y) / (ltf[7]:  - 4*x^3*y) = (quot:  + 1/2), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + y*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + z^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x*z) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[3]:  - 2*x*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[4]:  - y^3) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[5]:  + 1/2*y^2) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[6]:  - 4*x^5) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[7]:  - 4*x^3*y) = (quot: null), rest 0
mdiv s = x^2 + 3*x^3 + 2*x^4: (lts:  + 2*x^4) / (ltf[8]:  + 2*x^4) = (quot:  + 1), rest 0
multipleDivide: 2*x^3 + 2*x^4 - 2*x^2*y - 2*x^3*y =  + (1/2) * ( - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y) + (1) * (x^2 + 3*x^3 + 2*x^4) + [Rest = 0]
Groebner Basis:
GB: x + x^2 + y*z
GB: x*y + z + z^2
GB: y + y^2 + x*z
GB: x + x^2 - y - x*y - y^2 - 2*x*y^2
GB: x^2 + x^3 - y^2 - y^3
GB:  - 1/2*x - 3/2*x^2 - x^3 + 1/2*y - 1/2*x*y - 3*x^2*y - 2*x^3*y + 1/2*y^2
GB:  - 2*x^2 - 8*x^3 - 10*x^4 - 4*x^5
GB:  - 2*x^2 - 2*x^3 - 4*x^2*y - 4*x^3*y
GB: x^2 + 3*x^3 + 2*x^4
