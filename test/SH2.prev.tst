IN_NUMBER,1, 	operStack=[], 	postfix=[]
IN_START,/, 	operStack=[], 	postfix=[1]
IN_START,/, 	operStack=[p/], 	postfix=[1]
IN_START,(, 	operStack=[p/, y(], 	postfix=[1]
IN_NUMBER,1, 	operStack=[p/, y(], 	postfix=[1]
IN_START,-, 	operStack=[p/, y(], 	postfix=[1, 1]
IN_START,-, 	operStack=[p/, y(, m-], 	postfix=[1, 1]
IN_NAME,x, 	operStack=[p/, y(, m-], 	postfix=[1, 1]
IN_START,-, 	operStack=[p/, y(, m-], 	postfix=[1, 1, x]
IN_START,-, 	operStack=[p/, y(, m-], 	postfix=[1, 1, x, -]
IN_NAME,x, 	operStack=[p/, y(, m-], 	postfix=[1, 1, x, -]
IN_START,*, 	operStack=[p/, y(, m-], 	postfix=[1, 1, x, -, x]
IN_OPERATOR,*, 	operStack=[p/, y(, m-], 	postfix=[1, 1, x, -, x]
IN_START,*, 	operStack=[p/, y(, m-, q^], 	postfix=[1, 1, x, -, x]
IN_NUMBER,2, 	operStack=[p/, y(, m-, q^], 	postfix=[1, 1, x, -, x]
IN_START,), 	operStack=[p/, y(, m-, q^], 	postfix=[1, 1, x, -, x, 2]
IN_CLOSE,), 	operStack=[p/], 	postfix=[1, 1, x, -, x, 2, ^, -]
result postfix=[1, 1, x, -, x, 2, ^, -, /]
[1, 1, x, -, x, 2, ^, -, /]
