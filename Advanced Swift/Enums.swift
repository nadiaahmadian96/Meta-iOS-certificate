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
