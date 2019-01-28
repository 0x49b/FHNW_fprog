main = do putStrLn "give string to reverse"
          inp <- getLine
          putStrLn (reverse inp)
          putStrLn "again"
          continue <- getChar
          if continue == 'y' then main else return()
          putStrLn " "

{-
main = do putStrLn "give input to reverse:"
	      input <- getLine
          putStrLn (reverse input)
          putStrLn "again?"
          continue <- getChar
          if continue == 'y' then main else return()
          -}