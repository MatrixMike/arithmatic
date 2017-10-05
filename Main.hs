{-# OPTIONS_GHC -fwarn-missing-signatures #-}
-- changed module name to reflect the directory structure
import Math2.Arithmatic
-- 05.10.2017 20:40:51
-- create a small Main to use the module Math.Arithmatic

main :: IO ()
main = do
    print $ multiply 3 4
    print $ power 2 $ dec 5
    
    
