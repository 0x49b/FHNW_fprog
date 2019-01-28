data BExpr = Const Bool
           | And BExpr BExpr
           | Not BExpr deriving (Show)

eval :: BExpr -> Bool
eval (And a b) = (eval a) && (eval b)
eval (Not a)   = not (eval a)
eval (Const a) = a


parseExpr :: BExpr -> 

-- expression

logicinf = do putStrLn "Type an expression or (:quit) to terminate:"
              expression <- getLine
              if expression == ":quit" then return () else do
              let result = (eval (parseBExpr expression)
              putStrLn ("Result: " ++ show result)
              putStrLn " "
              logicinf