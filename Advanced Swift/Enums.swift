enum Desert{
    case tiramisu(chefName : String?)
    case affogato
    case cannoli
}
let favoriteDesert = Desert.tiramisu(chefName: "Nadia")

switch favoriteDesert{
     case .tiramisu(let chefName):
         let prefix : String
    if let chefName = chefName{
        prefix = "\(chefName)'s "
    }else{
        prefix = ""
    }
    print("\(prefix)Tiramisu is this week's favorite desert!")
    
case .affogato:
    print("Affogato is this week's favorite desert!")
    
case .cannoli:
    print("Cannoli is this week's favorite desert!")
}

//Raw Values
enum pastTypes : Int ,CaseIterable {
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12
}

let cookingTime = pastTypes.spaghetti.rawValue
print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")

func cookingPerfectpasta(pasta : pastTypes){
    let cookingTime = pasta.rawValue
    print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}

cookingPerfectpasta(pasta: .rigatoni)

//CaseIterable protocol enables you to iterate over the cases in an enum.
let totalCaseCount = pastTypes.allCases.count
print(totalCaseCount)

//Associated Values
//Associated values allow you to pass additional information to an enum.

enum PastaTypesA{
    case spaghetti(cookingTime : Int)
    case penne(cookingTime : Int)
    case ravioli(cookingTime : Int)
    case rigatoni(cookingTime : Int)
}

var checkIfCooked = PastaTypesA.spaghetti(cookingTime: 8)

if cookingTime < 8{
    print("Spaghetti is still not fully cooked...")
}else{
    print("Spaghetti is cooked, take it out of the water!")
}

//Using an enum inside a function allows you to write more succinct and expressive code.

func checkIfCooked(for pasta : PastaTypesA){
    switch pasta{
    case .spaghetti(let cookingTime):
        if cookingTime < 8{
            print("Spaghetti is still not fully cooked...")
        }else{
            print("Spaghetti is cooked, take it out of the water!")
        }
        
    default : return
    }
}

checkIfCooked(for: .spaghetti(cookingTime: 9))


//The where keyword can be used to evaluate conditions in a single line, as compared to if else statements that run across several lines.

func checkIfCooked2(for pasta : PastaTypesA){
    switch pasta{
    case .spaghetti(let cookingTime) where cookingTime >= 8:
        print("Spaghetti is cooked, take it out of the water!")
        default: print("Pasta is not cooked.")
    }
}

checkIfCooked2(for: .spaghetti(cookingTime: 7))
