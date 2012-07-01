data Month = January | February | March 
			| April | May | June | July 
		    | August | September | October
		    | November | December 

days January _ 	 = 31
days February n  = if isLeapYear n then 29 else 28
days March _	 = 31
days April _	 = 30
days May _ 		 = 31
days June _	 	 = 30
days July _		 = 31
days August _	 = 31
days September _ = 30
days October _	 = 31
days November _	 = 30
days December _	 = 31

isLeapYear n = if isCentury n then mod n 400 == 0 else mod n 4 == 0
isCentury n = mod n 100 == 0

getDays year = days January year + days February year + days March year + 
				days April year + days May year + days June year + 
				days July year + days August year + days September year + 
				days October year + days November year + days December year

main = print $ sum $ map getDays [1900..2000]