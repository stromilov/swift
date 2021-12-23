import Foundation


class Complex {
    var real: Float = 0
    var imaginary: Float = 0
}

enum PLanets: Int {
    case mars = 1
    case earth = 2
    case plus
    case mercury
    case saturn
    case venus
    case uran
    case neptun
    case jupyter

    var isInnerPLanet: Bool {
        switch self {
            case .mars, .mercury, .earth, .venus: return
                true
            default: return false
        }
    }

    func distance(to planet: PLanets) -> Double {
        return Double(arc4random())
    }
}

let p = PLanets.uran
print(p)
print(p.rawValue)
print(p.isInnerPLanet)
print(p.distance(to: .venus))

let arr = [1, 2, nil, 3, 4, nil, 5]
let res = arr.compactMap { $0 }

print(arr)
print(res)