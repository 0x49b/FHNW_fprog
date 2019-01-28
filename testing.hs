data N a = O Bool | P a deriving (Show)

f x y = (P x, P y)

a = f "Hi" False