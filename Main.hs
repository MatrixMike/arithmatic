{-# OPTIONS_GHC -fwarn-missing-signatures #-}
import Math.Arithmatic
-- 05.10.2017 20:40:51
-- create a small Main to use the module Math.Arithmatic

main :: IO ()
main = do
    print $ multiply 3 4
    print $ power 2 $ dec 5
    
    
