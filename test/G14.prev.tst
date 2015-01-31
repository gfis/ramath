Input:
 - x^3 + y
x^2*y - y^2
mdiv s =  - x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[0]:  + y) = (quot:  + x^3), rest 0
mdiv s = x^6 - x^2*y: (lts:  - x^2*y) / (ltf[0]:  + y) = (quot:  - x^2), rest 0
mdiv s =  - x^5 + x^6: (lts:  + x^6) / (ltf[0]:  + y) = (quot: null), rest 0
mdiv s =  - x^5 + x^6: (lts:  + x^6) / (ltf[1]:  - y^2) = (quot: null), rest 0
multipleDivide:  - x^2*y + x^3*y =  + ( - x^2 + x^3) * ( - x^3 + y) + [Rest =  - x^5 + x^6]
adding [2] =  - x^5 + x^6
mdiv s =  - x^2*y + x^3*y: (lts:  + x^3*y) / (ltf[0]:  + y) = (quot:  + x^3), rest 0
mdiv s = x^6 - x^2*y: (lts:  - x^2*y) / (ltf[0]:  + y) = (quot:  - x^2), rest 0
mdiv s =  - x^5 + x^6: (lts:  + x^6) / (ltf[0]:  + y) = (quot: null), rest 0
mdiv s =  - x^5 + x^6: (lts:  + x^6) / (ltf[1]:  - y^2) = (quot: null), rest 0
mdiv s =  - x^5 + x^6: (lts:  + x^6) / (ltf[2]:  + x^6) = (quot:  + 1), rest 0
multipleDivide:  - x^2*y + x^3*y =  + ( - x^2 + x^3) * ( - x^3 + y) + (1) * ( - x^5 + x^6) + [Rest = 0]
mdiv s =  - x^9 + x^5*y: (lts:  + x^5*y) / (ltf[0]:  + y) = (quot:  + x^5), rest 0
mdiv s = x^8 - x^9: (lts:  - x^9) / (ltf[0]:  + y) = (quot: null), rest 0
mdiv s = x^8 - x^9: (lts:  - x^9) / (ltf[1]:  - y^2) = (quot: null), rest 0
mdiv s = x^8 - x^9: (lts:  - x^9) / (ltf[2]:  + x^6) = (quot:  - x^3), rest 0
multipleDivide:  - x^9 + x^5*y =  + (x^5) * ( - x^3 + y) + ( - x^3) * ( - x^5 + x^6) + [Rest = 0]
mdiv s = x^2*y - x^3*y: (lts:  - x^3*y) / (ltf[0]:  + y) = (quot:  - x^3), rest 0
mdiv s =  - x^6 + x^2*y: (lts:  + x^2*y) / (ltf[0]:  + y) = (quot:  + x^2), rest 0
mdiv s = x^5 - x^6: (lts:  - x^6) / (ltf[0]:  + y) = (quot: null), rest 0
mdiv s = x^5 - x^6: (lts:  - x^6) / (ltf[1]:  - y^2) = (quot: null), rest 0
mdiv s = x^5 - x^6: (lts:  - x^6) / (ltf[2]:  + x^6) = (quot:  - 1), rest 0
multipleDivide: x^2*y - x^3*y =  + (x^2 - x^3) * ( - x^3 + y) + ( - 1) * ( - x^5 + x^6) + [Rest = 0]
mdiv s = x^8*y - x^5*y^2: (lts:  - x^5*y^2) / (ltf[0]:  + y) = (quot:  - x^5*y), rest 0
multipleDivide: x^8*y - x^5*y^2 =  + ( - x^5*y) * ( - x^3 + y) + [Rest = 0]
mdiv s = x^9 - x^5*y: (lts:  - x^5*y) / (ltf[0]:  + y) = (quot:  - x^5), rest 0
mdiv s =  - x^8 + x^9: (lts:  + x^9) / (ltf[0]:  + y) = (quot: null), rest 0
mdiv s =  - x^8 + x^9: (lts:  + x^9) / (ltf[1]:  - y^2) = (quot: null), rest 0
mdiv s =  - x^8 + x^9: (lts:  + x^9) / (ltf[2]:  + x^6) = (quot:  + x^3), rest 0
multipleDivide: x^9 - x^5*y =  + ( - x^5) * ( - x^3 + y) + (x^3) * ( - x^5 + x^6) + [Rest = 0]
mdiv s =  - x^8*y + x^5*y^2: (lts:  + x^5*y^2) / (ltf[0]:  + y) = (quot:  + x^5*y), rest 0
multipleDivide:  - x^8*y + x^5*y^2 =  + (x^5*y) * ( - x^3 + y) + [Rest = 0]
Groebner Basis:
GB:  - x^3 + y
GB: x^2*y - y^2
GB:  - x^5 + x^6
