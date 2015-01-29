factorial :: (Integral a) => a -> a
factorial = let facs = [ fac(x) | x <- [0..] ]
	        fac 0 = 1
                fac x = x * facs !! (fromIntegral (x - 1))
            in  (facs !!) . fromIntegral
