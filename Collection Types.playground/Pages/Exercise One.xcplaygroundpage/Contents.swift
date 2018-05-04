/*:
 [Previous](@previous)
 
 # Exercise One
 
 1. Create an empty mutable array of type `Double` named `grades`:
 
 */

import Foundation

var grades : [Double] = []

/*:
 2. Now populate the array with eight random grades between 60 and 100.
 */
for _ in 1...8 {
    grades.append( Double(arc4random_uniform(40) + 60) )
}

/*:
 3. Print a list of each array index and the associated value.
 */
for (index, value) in grades.enumerated() {
    print("The index is \(index) and the value is \(value).")
}

/*:
 4. Determine and print the highest grade.
 */
var highest = 59.0 // Start lower than lowest possible value
// Iterate over array values
for grade in grades {
    // Is this grade higher than the current highest?
    if grade > highest {
        // If so, this grade becomes the new highest
        highest = grade
    }
}
print("The highest grade found was \(highest)")

//: [Next](@next)


