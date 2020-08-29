

let myOptional: String?


myOptional = "Guven"

// Force Unwrapping
let text: String = myOptional!

// Check for nil value
if myOptional != nil {
    let text: String =  myOptional!
}

// Optional Binding
if let safe = myOptional {
     let text: String = safe
}

// Nil Coalescing Operator
let myText: String = myOptional ?? ""


struct MyOptional {
    
    var property = 123
    func method() {
        print("Hello")
    }
}

// Optional Chaining
let op : MyOptional?
op = MyOptional()
print(op?.method())



