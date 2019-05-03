import Foundation
let q: String = "\""
let c = ","
let s = " \\"
let p: [String] = [
    "import Foundation;let q: String = ", /* quote, slash, quote x 2*/
    ";let c: String = ", /* quote */
    ",", /* quote */
    ";let s: [String] = [",
    "]",
    "var result = p[0]  + q + s + q + q + p[1] + q + p[2] + q + p[3]",
    "for l in p { result += q + l + q + c }",
    "for l in p[4..6] { result += l + ", ";", "}",
    "result += p[7] + q + p[8] + q + p[9] + p[8] + p[10] + p[8]",
    "for l in p[11...] { result += l +", "}",
    "try! result.write(toFile: ", /* quote */ "main.swift", /* quote */ ", atomically: true, encoding: .utf8)",
]
var result = p[0]  + q + s + q + q + p[1] + q + p[2] + q + p[3]
for l in p { result += q + l + q + c }
for l in p[4...6] { result += l + ";" }
result += p[7] + q + p[8] + q + p[9] + p[8] + p[10] + p[8]
for l in p[11...] { result += l + ";" }
try! result.write(toFile: "main2.swift", atomically: true, encoding: .utf8)
