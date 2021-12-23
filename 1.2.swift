/*Задание
Создайте список товаров с различными характеристиками 
(количество, название). Используйте typealias.
*/

import Foundation


struct product {
    var name: String = "товар"
    var count: Int = 0
}

typealias товар = product

var списокПродуктов: [товар] = []
var a = product()
списокПродуктов.append(a)
a.name = "яблоко"
a.count = 4
списокПродуктов.append(a)

print(списокПродуктов[0].name, списокПродуктов[1])