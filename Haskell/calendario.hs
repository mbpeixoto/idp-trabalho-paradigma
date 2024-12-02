data DayOfWeek
    = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
    deriving (Eq, Enum, Bounded, Show)

data Month
    = January | February | March     | April   | May      | June
    | July    | August   | September | October | November | December
    deriving (Eq, Enum, Bounded, Show)

next :: (Eq a, Enum a, Bounded a) => a -> a
next x | x == maxBound = minBound
       | otherwise     = succ x

pad :: Int -> String
pad day = case show day of
    [c] -> [' ', c]
    cs  -> cs

month :: Month -> DayOfWeek -> Int -> String
month m startDay maxDay = show m ++ " 2024\n" ++ week ++ spaces Sunday
  where
    week = "Su Mo Tu We Th Fr Sa\n"

    spaces currDay | startDay == currDay = days startDay 1
                   | otherwise           = "   " ++ spaces (next currDay)

    days Sunday    n | n > maxDay = "\n"
    days _         n | n > maxDay = "\n\n"
    days Saturday  n              = pad n ++ "\n" ++ days  Sunday    (succ n)
    days day       n              = pad n ++ " "  ++ days (next day) (succ n)

firstDayOfNextMonth :: DayOfWeek -> Int -> DayOfWeek
firstDayOfNextMonth startDay daysInMonth =
    iterate next startDay !! (daysInMonth `mod` 7)

year2024 :: String
year2024 = generateYear January Monday [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  where
    generateYear :: Month -> DayOfWeek -> [Int] -> String
    generateYear _ _ [] = ""
    generateYear m startDay (daysInMonth:rest) =
        month m startDay daysInMonth
        ++ generateYear (next m) (firstDayOfNextMonth startDay daysInMonth) rest

main :: IO ()
main = putStr year2024
