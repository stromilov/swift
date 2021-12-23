import Foundation

class Stroka {
    var naborBukv: String = ""

    init() {
    }

    init(slovo s:String) {
        self.naborBukv = s
    }

    func lengthOfString() -> Int {
        return self.naborBukv.count
    }

    func cleanString() {
        self.naborBukv = ""
    }

}


var str1 = Stroka()
var str2 = Stroka(slovo: "word")
print(str1.naborBukv)
print(str2.naborBukv)
print(str2.lengthOfString())
print(str2.cleanString())
print(str2.naborBukv)