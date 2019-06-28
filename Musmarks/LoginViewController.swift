import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    private lazy var viewModel: LoginViewModel = {
        let interactor = LoginViewModel()
        interactor.delegate = self
        return interactor
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        viewModel.setUsername(asUsername: usernameTextField.text)
        let mainTabBarController = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController

        present(mainTabBarController, animated: false, completion: nil)
    }
}

extension LoginViewController: LoginViewModelDelegate {
    func hoge() {
        
    }
}
