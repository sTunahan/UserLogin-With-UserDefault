

import UIKit

class HomePageVC: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    let data = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // for Navigation
        navigationItem.hidesBackButton = true
        
        labelText.text = data.string(forKey: "userName") ?? "Empty"
        
    }
    

    // deletes registered user data
    @IBAction func exitButton(_ sender: Any) {
        
        data.removeObject(forKey: "userName")
        data.removeObject(forKey: "password")
        
        exit(-1)
    }
    

}
