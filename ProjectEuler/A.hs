import Data.Char

main = print . sum . map Data.Char.digitToInt . show $ 2 ^ 1000
