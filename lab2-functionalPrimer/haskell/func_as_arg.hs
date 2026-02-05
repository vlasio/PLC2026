--create inpFunc
inpFunc a b = [a..b] 

--Define applicatorFunc
--applicatorFunc inpFunc a b s = if s=='s' then sum (inpFunc a b) else (sum (inpFunc a b)) / (b-a+1)
applicatorFunc a b s
    | s == 's' = sum (inpFunc a b)
    | otherwise = (sum (inpFunc a b)) / (b - a + 1)

main = do
    let result = applicatorFunc 1 10 'd'
    putStrLn("sum = " ++ show(result))