// MARK: - 'SpaceShip' Operator in Swift

infix operator <=> : ComparisonPrecedence

extension Comparable {

  public static func <=>(lhs: Self, rhs: Self) -> Int {
    if lhs < rhs {
      return -1
    } else if lhs > rhs {
      return 1
    } else {
      return 0
    }
  }

}

// MARK - Using the 'SpaceShip' Operator

let two = 2
let ten = 10

// Greater
print("Greater: \(ten <=> two)")

// Less
print("Less: \(two <=> ten)")

// Equal
print("Equal: \(ten <=> ten)")

// MARK: - AND and OR Operator (Non-short circuit)

infix operator & : ComparisonPrecedence
infix operator | : ComparisonPrecedence

extension Bool {

  public static func &(lhs: Bool, rhs: Bool) -> Bool {
    switch (lhs, rhs) {
    case (true, true): return true
    case (true, false): return false
    case (false, true): return false
    case (false, false): return false
    }
  }
  
  public static func |(lhs: Bool, rhs: Bool) -> Bool {
    switch (lhs, rhs) {
    case (false, false): return false
    case (true, true): return true
    case (false, true): return true
    case (true, false): return true
    }
  }

}

// MARK: - Using Non-short Circuit AND and OR Operators

func printFalse() -> Bool {
  print("False")
  return false
}

func printTrue() -> Bool {
  print("True")
  return true
}

let a1 = printFalse() && printTrue() // printTrue() is never called
let a2 = printFalse() & printTrue() // printTrue() is still called

let o1 = printTrue() || printFalse() // printFalse() is never called
let o2 = printTrue() | printFalse() // printFalse() is still called


