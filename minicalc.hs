

main = do putStrLn "Welcome to MiniCalc!"
          calc

calc = do putStrLn "Please enter the first Number:"
          one <- getLine
          let oneN = (read one) :: Int
          putStrLn "Please enter the seconf Number:"
          two <- getLine
          let twoN = (read two) :: Int
          putStrLn "Specify operator:"
          op <- getChar
          let result = oneN + twoN
          putStrLn ((show oneN) ++ (show op) ++ (show twoN) ++ " = " ++ (show result))
          putStrLn " "
          