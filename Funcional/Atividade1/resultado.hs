import Text.Printf(printf)

imposto :: Float -> Float
imposto salario
    |salario > 4664.68 = 869.36 + 0.275*(salario - 4664.68)
    |salario >= 3751.06 = 636.13 + 0.225*(salario - 3751.06)
    |salario >= 2826.66 = 354.80 + 0.15*(salario - 2826.66)
    |salario >= 1903.99 = 142.80 + 0.075*(salario - 1903.99)
    |otherwise = 0
    
main = do
    input <- getLine
    let salario = read input :: Float
    let resultado = imposto salario
    printf "O valor do imposto de renda retido eh: R$ %.2f\n" resultado
    printf "O salario liquido eh: R$ %.2f" (salario - resultado)