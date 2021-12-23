/*Задание
Напишите переменные и константы всех базовых типов данных: 
int, UInt, float, double, string. 
У чисел вывести их минимальные и максимальные значения.

%d  - int Value 
%f  - float value
%ld - long value
%@  - string value and for many more.
%lu - UInt
*/


import Foundation


let temp: Float = 2

print("Type   |Max value                     |Min value                     |")
print("-------|------------------------------|------------------------------|")
print(String(format: "Int8   |%30d|%30d|", Int8.max, Int8.min))
print(String(format: "UInt8  |%30u|%30u|", UInt8.max, UInt8.min))
print(String(format: "Int16  |%30d|%30d|", Int16.max, Int16.min))
print(String(format: "UInt16 |%30d|%30d|", UInt16.max, UInt16.min))
print(String(format: "Int32  |%30d|%30d|", Int32.max, Int32.min))
print(String(format: "UInt32 |%30u|%30u|", UInt32.max, UInt32.min))
print(String(format: "Int64  |%30ld|%30ld|", Int64.max, Int64.min))
print(String(format: "UInt64 |%30llu|%30llu|", UInt64.max, UInt64.min))
print(String(format: "Int    |%30ld|%30ld|", Int.max, Int.min))
print(String(format: "UInt   |%30lu|%30ld|", UInt.max, UInt.min))
print("       |                              |                              |")
print(String(format: "Float  |%30.1e|%30.1e|", Float.greatestFiniteMagnitude, Float.leastNonzeroMagnitude))
print(String(format: "Double |%30e|%30e|", Double.greatestFiniteMagnitude, Double.leastNonzeroMagnitude))
print(String(format: "Float80|%f|", Float80.greatestFiniteMagnitude))
print(String(format: "utf8   |%30c|%30c|", "a".utf8.first!, "z".utf8.first!))

//NSLog("%.2f", temp)