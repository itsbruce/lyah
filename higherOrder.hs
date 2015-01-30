flip' :: (a -> b -> c) -> b -> a -> c
flip' f x = (`f` x)
