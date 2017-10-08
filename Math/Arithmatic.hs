module Math.Arithmatic where

{-# LANGUAGE NoMonomorphismRestriction #-}
{-# OPTIONS_GHC -fwarn-missing-signatures #-}
-- changed module name to reflect the directory structure
inc = (+1)
dec = (subtract 1)

fibon :: Int -> Int
fibon 0 = 0  -- omitted in first version
fibon 1 = 1
fibon n = fibon (n-2) + fibon (n-1)

triangle :: Int -> Int
triangle 1 = 1
triangle t = t + triangle (t-1)


add 0 b = b
add a b = add (dec a) (inc b)   -- recursive ? decrement first and incr 2nd until first = 0 
--add a b = add a b -- bad wrong 

multiply _ 0 = 0
multiply a b = add a (multiply a (dec b))

division _ 0 = error "divide by zero error"
division a 1 = 1
division a n | a > 0 = 1 + division (a-n) n
             | otherwise = 0 

power a 0 = 1
-- what if the power is negative ?
power a b = multiply a (power a (dec b))

logarithm _ 0 = 1
logarithm _ 1 = 0
logarithm base number = 1 + logarithm base (division number base)
