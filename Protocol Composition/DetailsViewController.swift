

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var detailsTableView: UITableView!
    var empData = [Employee]()
    var index : Int?
    
   var data = [OneEmployee]()
    var sectionTitle : [String] = []
    var dataToPrint : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailsTableView.register(UINib(nibName: "IdAndImageCell", bundle: nil), forCellReuseIdentifier: "IDImagecell")
        detailsTableView.register(UINib(nibName: "EmpnameTableViewCell", bundle: nil), forCellReuseIdentifier: "Namecell")
        detailsTableView.register(UINib(nibName: "EmpemailTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        let idAndAvatar = IdAndImage()
        let emailOfEmp = Email()
        let nameOfEmp = Name()
        data = [idAndAvatar,emailOfEmp,nameOfEmp]

        print("data",data)
        
        for i in data{
            sectionTitle.append(i.sectionTitle)
        }
        
        detailsTableView.reloadData()
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return sectionTitle[0]
        case 1:
            return sectionTitle[1]
        case 2:
            return sectionTitle[2]
        default:
            return "EMPLOYEE"
        }
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].rowCount
    }
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dataOfEachEmployee = data[indexPath.section]
        switch dataOfEachEmployee.type {
        case .idAndImage:
            if let cell = detailsTableView.dequeueReusableCell(withIdentifier: "IDImagecell", for: indexPath) as? IdAndImageCell{
                cell.idLabel.text = "\(empData[index!].id!)"
                //cell.idLabel.text = ""
                cell.empImage.image = UIImage(systemName: "pencil")
            return cell
            }
        case .email:
            if let cell2 = detailsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? EmpemailTableViewCell
            
            {
                cell2.emailLabel.text = empData[index!].email!
               // print("data2print",dataToPrint)
                return cell2

            }
//
//        //return cell
        case .firstAndLastName:
            if let cell3 = detailsTableView.dequeueReusableCell(withIdentifier: "Namecell", for: indexPath) as? EmpnameTableViewCell{
        
                cell3.firstNameTitle.text = "Name"
                cell3.firstName.text = empData[index!].first_name! + empData[index!].last_name!
                //cell3.firstName.text =
            return cell3
            }

        }
        return UITableViewCell()
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = indexPath.section
    if section == 0{
            return 70
        }
        return 50
    }
}

class IdAndImage:OneEmployee{
    var rowCount: Int{
        return 1
    }
    
    var type: cellTypes{
        return .idAndImage
    }
    
    var sectionTitle: String{
        return "Main Info"
    }
//    var id : Int
//    var image : String
//    init(id: Int, image : String) {
//        self.id = id
//        self.image = image
//    }
    
}
class Email:OneEmployee{
    var rowCount: Int{
        return 1
    }
    
    var type: cellTypes{
        return .email
    }
    var sectionTitle: String = "Email"
//    var email : String
//    init(email:String) {
//        self.email = email
//    }
}
class Name:OneEmployee{
    var rowCount: Int{
        1
    }
    
    var type: cellTypes{
        return .firstAndLastName
    }
    var sectionTitle: String{
        return "Name"
    }
//    var firstName : String
//    var lastName : String
//    init(firstName: String,lastName:String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
    
}

