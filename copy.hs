main = do content <- readFile "test.txt"
          writeFile "out.txt" content