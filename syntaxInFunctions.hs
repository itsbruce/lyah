factorial :: (Integral a) => a -> a
factorial = let go x n
                    | n < 0 = error "No valid factorial for negatives"
                    | n > 0 = go (x * n) (n - 1)
                    | otherwise = x
	    in  go 1
