data K a = L a | M deriving (Show)
a = foldr (\c acc -> L c : acc) [M] "abc"