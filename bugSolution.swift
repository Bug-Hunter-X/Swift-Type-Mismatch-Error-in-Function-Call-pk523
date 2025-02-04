func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5) // Correct usage
print(area) // Output: 50.0

// Solution:  Proper Type Handling

func calculateAreaSafe(width: Double, height: String) -> Double? {
    guard let heightDouble = Double(height) else { return nil }
    return width * heightDouble
}

if let safeArea = calculateAreaSafe(width: 10, height: "5") {
    print(safeArea) // Output: 50.0
} else {
    print("Invalid height value")
}

//Alternative solution: Using a default value

func calculateAreaWithDefault(width: Double, height: Double = 0) -> Double {
    return width * height
}

let areaWithDefault = calculateAreaWithDefault(width: 10, height: 5)
print(areaWithDefault) // Output: 50.0
let areaWithDefault2 = calculateAreaWithDefault(width:10) //works correctly
print(areaWithDefault2) // Output: 0.0