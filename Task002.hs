{-- Crypto-square

A crypto square is a really old and really bad way to "encrypt" text
We first take a message:
 => I hope no one reads this

We then Pad the message until its length is a square number
 => I hope no one reads this.

We then arrange it as a square:
 => I hop
 => e no 
 => one r
 => eads 
 => this.

We translate the matrix:
 => Ieoet
 =>   nah
 => hnedi
 => oo ss
 => p r .

And finally flattern the matrix to build a string:
 => Ieoet  nahhnedioo ssp r .

Tasks:
 1. Write an encoder
 2. Write a decoder
 3. Make it optionally work without spaces
--}

-- ideal!!!  cryptoSqr :: String -> Bool -> String