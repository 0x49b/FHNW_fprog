data BExpr = Const Bool
           | And BExpr BExpr
           | Not BExpr deriving (Show)

e1 = And (Const False) (Not (And (Const True) (Const False)))

eval :: BExpr -> Bool
eval (And b1 b2) = (eval b1) && (eval b2)
eval (Not a)     = not (eval a)
eval (Const a)   = a 

infi = do 
          putStrLn "Enter an expression or ':quit' to terminate:"
          line <- getLine
          if line == ":quit" then return () else do
          --let result = eval (parseExpr line)
          let result = eval e1
          putStrLn (show result)
          infi