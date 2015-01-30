maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum: empty list"
maximum' [x] = x
maximum' (x : y : rest)
    | x > y = maximum' $ x : rest
    | otherwise = maximum' $ y : rest

replicate' :: (Num a, Ord a) => a -> b -> [b]
replicate' n x = go n []
    where go i xs
            | i < 1 = xs
            | otherwise = go (i - 1) $ x : xs

take' :: (Num a, Ord a) => a -> [b] -> [b]
take' _ [] = []
take' n _
    | n < 1 = []
take' n (x:xs) = x : take' (n - 1) xs
