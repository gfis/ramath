Input:
 - 2*y + x*y
 - x^2 + 2*y^2
mdiv s = x^3 - 4*y^2: (lts:  - 4*y^2) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s = x^3 - 4*y^2: (lts:  - 4*y^2) / (ltf[1]:  + 2*y^2) = (quot:  - 2), rest 0
mdiv s =  - 2*x^2 + x^3: (lts:  + x^3) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s =  - 2*x^2 + x^3: (lts:  + x^3) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
multipleDivide: x^3 - 4*y^2 =  + ( - 2) * ( - x^2 + 2*y^2) + [Rest =  - 2*x^2 + x^3]
adding [2] =  - 2*x^2 + x^3
mdiv s = x^3 - 4*y^2: (lts:  - 4*y^2) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s = x^3 - 4*y^2: (lts:  - 4*y^2) / (ltf[1]:  + 2*y^2) = (quot:  - 2), rest 0
mdiv s =  - 2*x^2 + x^3: (lts:  + x^3) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s =  - 2*x^2 + x^3: (lts:  + x^3) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s =  - 2*x^2 + x^3: (lts:  + x^3) / (ltf[2]:  + x^3) = (quot:  + 1), rest 0
multipleDivide: x^3 - 4*y^2 =  + ( - 2) * ( - x^2 + 2*y^2) + (1) * ( - 2*x^2 + x^3) + [Rest = 0]
multipleDivide: 0 =  + [Rest = 0]
mdiv s =  - x^3 + 4*y^2: (lts:  + 4*y^2) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s =  - x^3 + 4*y^2: (lts:  + 4*y^2) / (ltf[1]:  + 2*y^2) = (quot:  + 2), rest 0
mdiv s = 2*x^2 - x^3: (lts:  - x^3) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s = 2*x^2 - x^3: (lts:  - x^3) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s = 2*x^2 - x^3: (lts:  - x^3) / (ltf[2]:  + x^3) = (quot:  - 1), rest 0
multipleDivide:  - x^3 + 4*y^2 =  + (2) * ( - x^2 + 2*y^2) + ( - 1) * ( - 2*x^2 + x^3) + [Rest = 0]
mdiv s =  - x^5 + 4*x^2*y^2: (lts:  + 4*x^2*y^2) / (ltf[0]:  + x*y) = (quot:  + 4*x*y), rest 0
mdiv s =  - x^5 + 8*x*y^2: (lts:  + 8*x*y^2) / (ltf[0]:  + x*y) = (quot:  + 8*y), rest 0
mdiv s =  - x^5 + 16*y^2: (lts:  + 16*y^2) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s =  - x^5 + 16*y^2: (lts:  + 16*y^2) / (ltf[1]:  + 2*y^2) = (quot:  + 8), rest 0
mdiv s = 8*x^2 - x^5: (lts:  - x^5) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s = 8*x^2 - x^5: (lts:  - x^5) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s = 8*x^2 - x^5: (lts:  - x^5) / (ltf[2]:  + x^3) = (quot:  - x^2), rest 0
mdiv s = 8*x^2 - 2*x^4: (lts:  - 2*x^4) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s = 8*x^2 - 2*x^4: (lts:  - 2*x^4) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s = 8*x^2 - 2*x^4: (lts:  - 2*x^4) / (ltf[2]:  + x^3) = (quot:  - 2*x), rest 0
mdiv s = 8*x^2 - 4*x^3: (lts:  - 4*x^3) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s = 8*x^2 - 4*x^3: (lts:  - 4*x^3) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s = 8*x^2 - 4*x^3: (lts:  - 4*x^3) / (ltf[2]:  + x^3) = (quot:  - 4), rest 0
multipleDivide:  - x^5 + 4*x^2*y^2 =  + (8*y + 4*x*y) * ( - 2*y + x*y) + (8) * ( - x^2 + 2*y^2) + ( - 4 - 2*x - x^2) * ( - 2*x^2 + x^3) + [Rest = 0]
multipleDivide: 0 =  + [Rest = 0]
mdiv s = x^5 - 4*x^2*y^2: (lts:  - 4*x^2*y^2) / (ltf[0]:  + x*y) = (quot:  - 4*x*y), rest 0
mdiv s = x^5 - 8*x*y^2: (lts:  - 8*x*y^2) / (ltf[0]:  + x*y) = (quot:  - 8*y), rest 0
mdiv s = x^5 - 16*y^2: (lts:  - 16*y^2) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s = x^5 - 16*y^2: (lts:  - 16*y^2) / (ltf[1]:  + 2*y^2) = (quot:  - 8), rest 0
mdiv s =  - 8*x^2 + x^5: (lts:  + x^5) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s =  - 8*x^2 + x^5: (lts:  + x^5) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s =  - 8*x^2 + x^5: (lts:  + x^5) / (ltf[2]:  + x^3) = (quot:  + x^2), rest 0
mdiv s =  - 8*x^2 + 2*x^4: (lts:  + 2*x^4) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s =  - 8*x^2 + 2*x^4: (lts:  + 2*x^4) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s =  - 8*x^2 + 2*x^4: (lts:  + 2*x^4) / (ltf[2]:  + x^3) = (quot:  + 2*x), rest 0
mdiv s =  - 8*x^2 + 4*x^3: (lts:  + 4*x^3) / (ltf[0]:  + x*y) = (quot: null), rest 0
mdiv s =  - 8*x^2 + 4*x^3: (lts:  + 4*x^3) / (ltf[1]:  + 2*y^2) = (quot: null), rest 0
mdiv s =  - 8*x^2 + 4*x^3: (lts:  + 4*x^3) / (ltf[2]:  + x^3) = (quot:  + 4), rest 0
multipleDivide: x^5 - 4*x^2*y^2 =  + ( - 8*y - 4*x*y) * ( - 2*y + x*y) + ( - 8) * ( - x^2 + 2*y^2) + (4 + 2*x + x^2) * ( - 2*x^2 + x^3) + [Rest = 0]
Groebner Basis:
GB:  - 2*y + x*y
GB:  - x^2 + 2*y^2
GB:  - 2*x^2 + x^3
