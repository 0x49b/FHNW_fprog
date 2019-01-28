data BExpr = Const Bool
           | And BExpr BExpr
           | Not BExpr deriving (Show)

e1 = And (Const False) ( Not ( And (Const False) (Const True)))


eval :: BExpr -> Bool
eval (And a b) = (eval a) && (eval b)
eval (Not a)   = not (eval a)
eval (Const a) = a

main = do putStrLn "Enter an expression or ':quit' to terminate"
          expr <- getLine
          if expr == ":quit" then return () else do
          let result = eval( parseBExpr expr )
          --let result = eval e1
          putStrLn ("Result: " ++ (show result))
          putStrLn " "
          main