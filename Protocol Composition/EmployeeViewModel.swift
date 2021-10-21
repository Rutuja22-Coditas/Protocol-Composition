
import Foundation
                       
enum cellTypes{
    case idAndImage
    case email
    case firstAndLastName
}
class EmployeeViewModel {
    var empData = [Employee]()

    //var employeeData = [Employee]()
    func dataFetch(completion : @escaping([Employee])->()){
        let urlString = "https://reqres.in/api/users"
        if let url = URL(string: urlString){
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                      if error == nil{
                          do{
                              let sharedUrlSession = try JSONDecoder().decode(Emp.self, from: data!)
                              //self.employeeData = sharedUrlSession
                            self.empData = sharedUrlSession.data
                              //print("Employeedata",self.employeeData)
                            completion(sharedUrlSession.data)
                          }
                          catch{
                              print(error)
                          }
                      }
            }.resume()
        }
      
    }
}

protocol OneEmployee {
    var type : cellTypes {get}
    var sectionTitle : String {get}
    var rowCount : Int {get}
}

//protocol MyProtocol{
//
//}
//class Student:MyProtocol{
//  func describe() {
//
//  }
//
//  var name:String = ""
//  var email:String = ""
//  var subjects:[String] = []
//}
//
//class Teacher:MyProtocol{
//  func describe() {
//
//  }
//
//  var name:String = ""
//  var email:String = ""
//  var empId:String = ""
//  var salary:Int = 0
//}
//
//let student = Student()
//let teacher = Teacher()

//    protocol MyProtocol{
//     var id : Int {get}
//     var email : String {get}
//     var first_name : String {get}
//     var last_name : String {get}
//     var avatar : String {get}
//
//}
//class OneEmployee:MyProtocol{
//
//    var id : Int = 0
//    var email: String = ""
//
//    var first_name: String = ""
//
//    var last_name: String = ""
//
//    var avatar: String = ""
//
//}
    
//
//    var id: Int
//    var email: String
//    var first_name: String
//    var last_name: String
//    var avatar: String
//
//for i in employee{
//    print("i",i)
//}

    


    //let data:[MyProtocol] = [student,teacher]

  


    
    //var items = [employeeViewModel]()
//    override init(){
//        super.init()
//        if let id = empData[0].id, let image = empData[0].avatar{
//                let idAndImage = ProfileVmIdAndImage(ID: id, Image: image)
//            }
//    }
     


//class ProfileVmIdAndImage : employeeViewModel{
//    var type: EmployeeVMItemType
//    {
//        return .idAndImage
//    }
//    var sectionTitle: String
//    {
//        return "ID"
//    }
//    var ID : Int
//    var Image : String
//
//    init(ID : Int, Image : String) {
//        self.ID = ID
//        self.Image = Image
//    }
//
//}
//
//class Name : employeeViewModel{
//    var type: EmployeeVMItemType{
//        return .name
//    }
//    var firstName : String
//    var lastName : String
//
//    init(firstName : String, lastName : String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    var sectionTitle: String{
//        return "Name"
//    }
//}
//class Email {
//    var email : String
//    init(email:String) {
//        self.email = email
//    }
//}



//class ImageAndId : employeeViewModel{
//    var id: Int
//    var image: String
//    init(id : Int, image : String) {self.id = id
//        self.image = image}
//}
//class email: employeeViewModel {
//    var id: Int
//
//    var image: String
//
//    var email : String
//    init(email : String) {self.email = email}
//}
//let abc : [AnyObject] = [
//    ImageAndId(id: 2, image: "ok")
//    //ImageAndId(image: "ok")
//]

