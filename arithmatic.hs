import Control.Monad.Reader

{-# LANGUAGE NoMonomorphismRestriction #-}

inc = (+1)
dec = (subtract 1)

add 0 b = b
add a b = add (dec a) (inc b)

multiply _ 0 = 0
multiply a b = add a (multiply a (dec b))

division _ 0 = error "divide by zero error"
division a 1 = 1
division a n | a > 0 = 1 + division (a-n) n
             | otherwise = 0 

power a 0 = 1
power a b = multiply a (power a (dec b))

logarithm _ 0 = 1 
logarithm _ 1 = 0 
logarithm base number = 1 + logarithm base (division number base)

liveMain =  print $ power 5 5
