import System.Environment
import Network.HTTP

-- :main Arg1 Arg2
-- :set args Arg1 Arg2
main :: IO ()
main = do
  [firstName, lastName] <- getArgs
  let query = "http://api.icndb.com/jokes/random?limitTo=%5Bnerdy%5D&firstName=" ++ firstName ++  "&lastName=" ++ lastName
  response  <- simpleHTTP (getRequest query)
  code <- getResponseCode response
  putStrLn $ show code
  content   <- getResponseBody response
  putStrLn content
