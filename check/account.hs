data Account  = Account String [Mutation]
data Mutation = Deposit Int
              | Withdraw Int

newAccount :: String -> Account
newAccount accNum = Account accNum []

deposit, withdraw :: Int -> Account -> Account
deposit val (Account accNum mut)  = Account accNum ((Deposit val) : mut)
withdraw val (Account accNum mut) = Account accNum ((Withdraw val) : mut)

balance :: Account -> Int
balance (Account _ mut) = foldr (\mut result -> add mut result) 0 mut
                          where add (Deposit d) result = d + result
                                add (Withdraw w) result = result - w

toInt :: Mutation -> Int
toInt (Deposit val) = val
toInt (Withdraw val) = val * (-1)

balance' :: Account -> Int
balance' (Account _ mut) = sum (map toInt mut)


instance Show Account where
                        show (Account accNum mut) = accNum ++ " : " ++ ( show $ balance (Account accNum mut))