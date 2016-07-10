a^2 + b^2 - c^2; a - A11*m^2 - A12*m*n - A13*n^2; b - A21*m^2 - A22*m*n - A23*n^2; c - A31*m^2 - A32*m*n - A33*n^2
isolated Signature: /c.01
isolated variable: c with Coefficient 1
remaining RelationSet: a^2 + b^2 - c^2; a - A11*m^2 - A12*m*n - A13*n^2; b - A21*m^2 - A22*m*n - A23*n^2
substitute by Polynomial:  - A31*m^2 - A32*m*n - A33*n^2
isolated Signature: /b.01
isolated variable: b with Coefficient 1
remaining RelationSet: a^2 + b^2 - A31^2*m^4 - 2*A31*A32*m^3*n - A32^2*m^2*n^2 - 2*A31*A33*m^2*n^2 - 2*A32*A33*m*n^3 - A33^2*n^4; a - A11*m^2 - A12*m*n - A13*n^2
substitute by Polynomial:  - A21*m^2 - A22*m*n - A23*n^2
isolated Signature: /a.01
isolated variable: a with Coefficient 1
remaining RelationSet: a^2 + A21^2*m^4 - A31^2*m^4 + 2*A21*A22*m^3*n - 2*A31*A32*m^3*n + A22^2*m^2*n^2 + 2*A21*A23*m^2*n^2 - A32^2*m^2*n^2 - 2*A31*A33*m^2*n^2 + 2*A22*A23*m*n^3 - 2*A32*A33*m*n^3 + A23^2*n^4 - A33^2*n^4
substitute by Polynomial:  - A11*m^2 - A12*m*n - A13*n^2
simplified and grouped: 
 + m^4*(A11^2 + A21^2 - A31^2)
 + 2*m^3*n*(A11*A12 + A21*A22 - A31*A32)
 + m^2*n^2*(A12^2 + 2*A11*A13 + A22^2 + 2*A21*A23 - A32^2 - 2*A31*A33)
 + 2*m*n^3*(A12*A13 + A22*A23 - A32*A33)
 + n^4*(A13^2 + A23^2 - A33^2)
