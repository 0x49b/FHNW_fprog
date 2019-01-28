data Account  = Account String [Mutation] 
data Mutation = Deposit Int
              | Withdraw Int

newAccount :: String -> Account
newAccount name = Account name []


deposit, withdraw :: Int -> Account -> Account
deposit val (Account name mut) = Account name ((Deposit val):mut)
withdraw val (Account name mut) = Account name ((Withdraw val):mut)


balance :: Account -> Int
balance (Account _ []) = 0
balance (Account _ mut) = foldr (\mut result -> add mut result) 0 mut
                          where add (Deposit d) result = d + result
                                add (Withdraw w) result = result - w

toInt :: Mutation -> Int
toInt (Deposit val) = val
toInt (Withdraw val) = val * (-1) 


balance' :: Account -> Int
balance' (Account _  mut) = sum (map toInt mut)

instance Show Account where
                      show (Account name mutation) = name ++ " : " ++ (show (balance' (Account name mutation))) 
