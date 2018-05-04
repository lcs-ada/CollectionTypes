/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */
import Foundation

var restuarantRatings : [Double] = []


/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */
for _ in 1...20 {
    restuarantRatings.append( Double(arc4random_uniform(100) + 1) )

/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */
    var runningTotal = 0.0
    for rating in restuarantRatings {
        runningTotal += rating
    }
    // b. Now take the running total and divide it by the number of values in the array
    let averageRating = runningTotal / Double(restuarantRatings.count)

    let averageRating = runningTotal / Double(restuarantRatings.count)
/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
    var unsatisfiedDinerCount = 0.0
    for rating in restuarantRatings {
        // b. Check whether this meal was unsatisfactory
        if rating < 80 {
            // c. If it was, we have an unsatisfied diner
            unsatisfiedDinerCount += 1
        }
}

/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */
    var veryBadCount = 0.0
    var badCount = 0.0
    var fairCount = 0.0
    var satisfactoryCount = 0.0
    var stellarCount = 0.0

    for rating in restuarantRatings {

} if rating >= 90 {
        stellarCount += 1
    } else if rating >= 80 {
        satisfactoryCount += 1
    } else if rating >= 50 {
        fairCount += 1
    } else if rating >= 25 {
        badCount += 1
    } else {
        veryBadCount += 1
    }
}

let report = 90
// Restaurant Report
    //=================
This many people thought the restaurent was STELLAR     : \(stellarCount)
This many people thought the restaurent was SATISFACTORY: \(satisfactoryCount)
This many people thought the restaurent was FAIR        : \(fairCount)
This many people thought the restaurent was BAD         : \(badCount)
This many people thought the restaurent was VERY BAD    : \(veryBadCount)

print(report)


