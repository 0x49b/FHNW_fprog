main = do putStrLn "Please enter your name:"
          name <- getLine
          let msg = "Welcome to the real world " ++ name
          putStrLn msg