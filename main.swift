import Foundation;let q: String = "\"";let c: String = ",";let s = "\\";let p = ["import Foundation;let q: String = ",";let c: String = ",",",";let s = ",";let p = [","]","var result = p[0]  + q + s + q + q + p[1] + q + p[2] + q + p[3] + q + s + s + q + p[4]","for l in p { result += q + l + q + c }","for l in p[5...7] { result += l + ",";","}","result += p[8] + q + p[9] + q + p[10] + p[9] + p[11] + p[9] + p[12] + q + p[13] + q + p[14]","try! result.write(toFile: ","main.swift",", atomically: true, encoding: .utf8)",];
var result = p[0]  + q + s + q + q + p[1] + q + p[2] + q + p[3] + q + s + s + q + p[4];
for l in p { result += q + l + q + c };
for l in p[5...7] { result += l + ";"};
result += p[8] + q + p[9] + q + p[10] + p[9] + p[11] + p[9] + p[12] + q + p[13] + q + p[14];
try! result.write(toFile: "main.swift", atomically: true, encoding: .utf8)
