evens :: [Int] -> [Int]
evens [] = []
evens (i:is) | even i    = i : evens is
             | otherwise = evens is


isSpace :: Char -> Bool
isSpace ' ' = True
isSpace _   = False


countSpace :: [Char] -> Int
countSpace []     = 0
countSpace (c:cs) = (if isSpace c then 1 else 0) + countSpace cs 






-- Declaration of an Item 
data Item = Item { desc :: String, price :: Float }

total :: [Item] -> Float
total [] = 0
total (i:is) = price i + total is

-- Add 2 Items to the list of items
items = [(Item "toast" 3.50), (Item "ham" 7.00)]

totalOfItems = total items