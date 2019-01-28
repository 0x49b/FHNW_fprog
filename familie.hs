data Familie = Familie String [Person] deriving (Show)
data Person = Person String Int deriving (Show)
        


newFamilie :: String -> Familie
newFamilie name = Familie name []

getFamilienname :: Familie -> String
getFamilienname (Familie name _) = name

addPerson :: String -> Int -> Familie -> Familie
addPerson name alter (Familie fname personen ) = Familie fname ((Person name alter):personen)

getAlter :: Familie -> Int
getAlter (Familie name personen) = foldr (\age result -> add age result) 0 personen
                                   where add (Person name alter) result = result + alter

getPersonenAlter :: Person -> Int
getPersonenAlter (Person name alter) = alter

getAlter2 :: Familie -> Int
getAlter2 (Familie name personen) = sum map (getPersonenAlter personen)


a1 = newFamilie "Thievent"
a2 = addPerson "Florian"  32 a1
a3 = addPerson "Dominique"  33 a2
