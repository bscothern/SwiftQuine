let q = "\""
let c = ","
let s = "\\"
let p = [
    "let q: String = ", /* quote, slash, quote x 2*/
    ";let c: String = ", /* quote */
    ",", /* quote */
    ";let s = ", /* quote, slash x2, quote */
    ";let p = [",
    "]",
    "var result = p[0]  + q + s + q + q + p[1] + q + p[2] + q + p[3] + q + s + s + q + p[4]",
    "for l in p { result += q + l + q + c }",
    "for l in p[5...7] { result += l + ", ";", "}",
    "result += p[8] + q + p[9] + q + p[10] + p[9] + p[11] + p[9] + p[12]",
    "print(result)"
]
var result = p[0]  + q + s + q + q + p[1] + q + p[2] + q + p[3] + q + s + s + q + p[4]
for l in p { result += q + l + q + c }
for l in p[5...7] { result += l + ";" }
result += p[8] + q + p[9] + q + p[10] + p[9] + p[11] + p[9] + p[12]
print(result)
