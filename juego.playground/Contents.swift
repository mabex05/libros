//: Playground - noun: a place where people can play

import UIKit

var numero = 1...100

for var i = 0; i <= numero.count; i++
{
    switch i
    {
    case 30...40:
        if ((i % 2) == 0) && ((i % 5) == 0) //verifica que sean pares y divisibles entre 5
        {
            print("\(i): Par!!! Bingo!!! Viva Swift!!!")
        }else if ((i % 2) == 0) { //verifica que solo sean pares
            print("\(i): Par!!! Viva Swift!!!")
            
        }else if((i % 5) == 0) //verifica que solo sean divisibles entre 5
        {
            print("\(i): Impar!!! Bingo!!! Viva Swift!!!")
        }else if ((i % 2) != 0) && ((i % 5) != 0) //verifica que no sean pares ni divisibles 5
        {
            print("\(i): Impar!!! Viva Swift!!!")
        }
    default:
    
        if ((i % 2) == 0) && ((i % 5) == 0) //verifica que sean pares y divisibles entre 5
        {
            print("\(i): Par!!! Bingo!!!")
        }else if ((i % 2) == 0) { //verifica que solo sean pares
            print("\(i): Par!!!")
        
        }else if((i % 5) == 0) //verifica que solo sean divisibles entre 5 y por lo tanto impares
        {
            print("\(i): Impar!!! Bingo!!!")
        }else if ((i % 2) != 0) && ((i % 5) != 0) //verifica que no sean pares ni divisibles 5
    {
        print("\(i): Impar!!!")
    
    }
    }
}
