data Account = Account String [Mutation]
data Mutation = Deposit Int  -- add money
              | Withdraw Int -- get money
          

-- Create new Account
newAccount :: String -> Account
newAccount a = Account a []


-- Getters for Account
mutation :: Account -> [Mutation]
mutation (Account _ mutation) = mutation

accNum :: Account -> String
accNum (Account accNum _) = accNum


-- Make a deposit or withdraw
deposit, withdraw :: Int -> Account -> Account
deposit val (Account n m) = Account n (Deposit val:m)
withdraw val (Account n m ) = Account n (Withdraw val:m)

-- calculate balance based on mutations for account
balance :: Account -> Int
balance (Account n [] ) = 0
balance (Account n m ) = foldr (\mut result -> add mut result) 0 m 
                         where add (Deposit d) result = d+result
                               add (Withdraw w) result = result-w

-- Show instance
instance Show Account where
                      show (Account n m) = show n ++ " : " ++ (show (balance (Account n m)))

