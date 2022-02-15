

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    let data = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // login control, is the user already registered
        
        let receivedUserName = data.string(forKey: "userName") ?? "empty"
        let receivedPassword = data.string(forKey: "password") ?? "empty"
       
        if receivedUserName != "empty" && receivedPassword != "empty" {
            
            
            performSegue(withIdentifier: "loginToHomepage", sender: nil)
            
        }
        
        
    }

    // if you are registering for the first time
    @IBAction func LoginButton(_ sender: Any) {
        
        //Inputs are assigned to variables and registered
        if let receivedUserName = userName.text , let receivedPassword = password.text{
            
            if  receivedUserName == "admin" && receivedPassword == "123456"{
                //Kayıt oldu
                data.set(receivedUserName, forKey: "userName")
                data.set(receivedPassword, forKey: "password")
                
                performSegue(withIdentifier: "loginToHomepage", sender: nil)
                
            }
            else {
                print("Again")
            }
        }
            
    }
    
    // For Navigation
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

