import UIKit

enum registrationdetailsFormatError : Error{
    case usernameEmpty
    case passwordEmpty
    case passwordTooShort
}

func validateUserDetails(username : String, password : String) throws{
    if username.isEmpty{
        throw registrationdetailsFormatError.usernameEmpty
    }
    else if password.isEmpty{
        throw registrationdetailsFormatError.passwordEmpty
    }
    if password.count <= 6 {
        throw registrationdetailsFormatError.passwordTooShort
    }
}

do{
    try validateUserDetails(username: "Nadia", password: "example")
    print("Validation Success")
} catch registrationdetailsFormatError.usernameEmpty, registrationdetailsFormatError.passwordEmpty{
    print("username and password should not be empty")
}
catch registrationdetailsFormatError.passwordTooShort{
    print("password is too short")
}
catch{
    print(error)
}
