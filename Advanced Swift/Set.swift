//sets can only store unique value
var colors : Set<String> = ["red","blue","green","red"]

//Insert method:
colors.insert("purple")

colors.insert("red")
//(inserted false, memberAfterInsert "red") because it's repeated

//Remove method:
colors.remove("purple")

var pastaTypesSet = Set<String>()
var pastaTypesArray = [String]()

//Usage example:
pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")


print(pastaTypesSet)
print(pastaTypesSet.count)

//Union Method: The union method works the same way as a union mathematical operation. It combines two sets while paying attention to removing duplicates if the same values exist in both sets.

var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")

let pastaSetUnion = pastaTypesSet.union(pastaTypesSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)
