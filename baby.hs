doubleMe x = x + x

doubleSmallNumber x = if x > 100
	then x
	else doubleMe x

doubleBigNumber x
	| x > 99 = doubleMe x
	| otherwise = x


