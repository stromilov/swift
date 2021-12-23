import Foundation

class Fraction {
    var m: Int = 0     // числитель
    var n: UInt = 0    // знаменатель

    init() {
    }
    
    init(_ numerator: Int, _ denomenator: UInt) {
        self.m = numerator
        self.n = denomenator
    }

    
    
    func showNumber() {
        print("\(self.m)/\(self.n)")
    }
    
    func returnStringNumber() -> String {
        return "\(self.m)/\(self.n)"
    }

    // функция поиска наибольшего общего делителя
        func gcd(_ a: Int, _ b: Int) -> Int { return b==0 ? a : gcd( b, a%b ) }
    

    func plusFraction(_ secondFraction: Fraction) -> Fraction {
        let tempFraction = Fraction()
        
        tempFraction.m = self.m * Int(secondFraction.n) + Int(self.n) * secondFraction.m
        tempFraction.n = self.n * secondFraction.n

        let nod = gcd(tempFraction.m, Int(tempFraction.n))
        tempFraction.m /= nod
        tempFraction.n /= UInt(nod)
        
        return tempFraction
    }
    

    func minusFraction(_ secondFraction: Fraction) -> Fraction {
        let tempFraction = Fraction()

        tempFraction.m = self.m * Int(secondFraction.n) - Int(self.n) * secondFraction.m
        tempFraction.n = self.n * secondFraction.n

        let nod = gcd(tempFraction.m, Int(tempFraction.n))
        tempFraction.m /= nod
        tempFraction.n /= UInt(nod)
        
        return tempFraction
    }


    func multiFraction(_ secondFraction: Fraction) -> Fraction {
        let tempFraction = Fraction()

        tempFraction.m = self.m * secondFraction.m
        tempFraction.n = self.n * secondFraction.n

        let nod = gcd(tempFraction.m, Int(tempFraction.n))
        tempFraction.m /= nod
        tempFraction.n /= UInt(nod)


        return tempFraction
    }


    func divisionFraction(_ secondFraction: Fraction) -> Fraction {
        let tempFraction = Fraction()

        if secondFraction.m < 0 {
            self.m *= -1
        }

        tempFraction.m = self.m * Int(secondFraction.n)
        tempFraction.n = self.n * UInt(secondFraction.m)

        let nod = gcd(tempFraction.m, Int(tempFraction.n))
        tempFraction.m /= nod
        tempFraction.n /= UInt(nod)


        return tempFraction
    }


    func isEqualy(_ secondFraction: Fraction) -> Bool {

        if self.m == secondFraction.m && self.n == secondFraction.n {
            return true
        } else {
            return false
        }
    }
}

let frac1 = Fraction(3, 4)        //   3/4
let frac2 = Fraction(3, 4)        //   5/2


frac1.showNumber()
print(frac2.returnStringNumber())

frac1.plusFraction(frac2).showNumber()       //   3     5     29     13
                                             //   -  +  -  =  --  =  --
                                             //   4     3     12      4

frac1.minusFraction(frac2).showNumber()      //   3     5       11        7
                                             //   -  -  -  =  - --  =  - --
                                             //   4     3       12        4

frac1.multiFraction(frac2).showNumber()      //   3     5      5
                                             //   -  *  -  =   --
                                             //   4     3      4

frac1.divisionFraction(frac2).showNumber()   //   3     5      9
                                             //   -  :  -  =   --
                                             //   4     3      20

print(frac1.isEqualy(frac2))                 // false
