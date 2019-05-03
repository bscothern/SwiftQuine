let q = "\""
let c = ","
let s = "\\"
let t = "    "
let p = [
    "let q = ",
    "let c = ",
    ",",
    "let s = ",
    "let t = ",
    "    ",
    "let p = [",
    "]",
    "print(p[0]  + q + s + q + q)",
    "print(p[1] + q + p[2] + q)",
    "print(p[3] + q + s + s + q)",
    "print(p[4] + q + p[5] + q)",
    "print(p[6])",
    "for l in p { print(t + q + l + q + c) }",
    "for l in p[7...] { print(l) }",
]
print(p[0]  + q + s + q + q)
print(p[1] + q + p[2] + q)
print(p[3] + q + s + s + q)
print(p[4] + q + p[5] + q)
print(p[6])
for l in p { print(t + q + l + q + c) }
for l in p[7...] { print(l) }
