import Foundation

func myFirstFunction(){
    print("My first function")
}
myFirstFunction()


func getUserName() -> String {
    let username="Nick"
    print(username)
    return username
}

let name = getUserName()
print(name)

func showFirstScreen(){
    var userDidCompleteOnboarding : Bool = false
    var userProfileIsCreated : Bool = true
    let status = checkUserStatus(userDidCompleteOnboarding: userDidCompleteOnboarding, userProfileIsCreated: userProfileIsCreated)
    if status  == true {
        print(" SHOW HOME SCREEN")
    }else{
        print("SHOW ONBOARDING SCREEN")
    }
}
showFirstScreen()
func checkUserStatus(userDidCompleteOnboarding: Bool,userProfileIsCreated: Bool) -> Bool{
    if userDidCompleteOnboarding && userProfileIsCreated{
        return true
    }
    else{
        return false
    }
    }



