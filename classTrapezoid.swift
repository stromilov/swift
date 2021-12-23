import Foundation


struct Dot {
    /*
    структура точки содержит две координаты абсциссу и ординату
    */

    var x: Float = 0
    var y: Float = 0

    init() {
    }

    init(abscissa x: Float, ordinate y: Float) {
        self.x = x
        self.y = y
    }
}

// MARK: трапеция
class Trapezoid {
    /*      класс Трапеция

              B __________________ C
               /                   \
              /                      \
           A /_________________________\ D
    */

    var A = Dot()
    var B = Dot()
    var C = Dot()
    var D = Dot()

    init() {
    }

    init(A a: Dot, B b: Dot, C c: Dot, D d: Dot) {
        self.A = a
        self.B = b
        self.C = c
        self.D = d

    }

    init(dotAx Ax: Float, dotAy Ay: Float, dotBx Bx: Float, dotBy By: Float,
        dotCx Cx: Float, dotCy Cy: Float, dotDx Dx: Float, dotDy Dy: Float) {
             
        self.A.x = Ax
        self.A.y = Ay
        self.B.x = Bx
        self.B.y = By
        self.C.x = Cx
        self.C.y = Cy
        self.D.x = Dx
        self.D.y = Dy
    }

    func sideLenght(_ dot1: Dot, _ dot2: Dot) -> Float {
        return sqrt( pow( (dot1.x - dot2.x), 2) + pow( (dot1.y - dot2.y), 2) )
    }

    func isIsosceles() -> Bool {
        let AB = self.sideLenght(self.A, self.B)
        let CD = self.sideLenght(self.C, self.D)

        if AB == CD {
            return true
        } else {
            return false
        }
    }

    func perimeter() -> Float {
        let AB = self.sideLenght(self.A, self.B)
        let BC = self.sideLenght(self.B, self.C)
        let CD = self.sideLenght(self.C, self.D)
        let DA = self.sideLenght(self.D, self.A)

        return AB + BC + CD + DA
    }

    func square() -> Float {
        let AB = self.sideLenght(self.A, self.B)
        let BC = self.sideLenght(self.B, self.C)
        let CD = self.sideLenght(self.C, self.D)
        let DA = self.sideLenght(self.D, self.A)

        return ( (DA + BC) / 2 ) * sqrt( pow(AB, 2) - pow( (( pow((DA - BC), 2) + pow(AB,2) - pow(CD, 2)) / 2*(DA - BC)),2) )
    }

    func lengthOfSides() -> (Float, Float, Float, Float) {
        let AB = self.sideLenght(self.A, self.B)
        let BC = self.sideLenght(self.B, self.C)
        let CD = self.sideLenght(self.C, self.D)
        let DA = self.sideLenght(self.D, self.A)

        return (AB, BC, CD, DA)
    }
}


let trap1 = Trapezoid(dotAx: 2, dotAy: 3, dotBx: 0, dotBy: 5, dotCx: 3, dotCy:6, dotDx: 0, dotDy: 2)

let trap2 = Trapezoid()

let a = Dot(abscissa: 0, ordinate: 0)
let b = Dot(abscissa: 1, ordinate: 4)
let c = Dot(abscissa: 8, ordinate: 0)
let d = Dot(abscissa: 7, ordinate: 4)

let trap3 = Trapezoid(A: a, B: b, C: c, D: d)

print(trap1.A.x)
print(trap2.A, trap2.B)
print(trap3.isIsosceles())
print(trap3.perimeter())
print(trap3.square())
print(trap3.lengthOfSides())

var massivOfTrapezoids: [Trapezoid] = []

massivOfTrapezoids.append(Trapezoid())