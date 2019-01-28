-- import Prelude hiding (foldr)

veryBigList = [1,2,3,4,5,6,7,8,9]


-- foldr f z []     = z
-- foldr f z (x:xs) = x `f` foldr f z xs
-- sum1 = foldr (+) 0 veryBigList 


sums :: Num a => [a] -> a
sums [] = 0
sums (x:xs) = foldr (+) x xs


suming = sums veryBigList