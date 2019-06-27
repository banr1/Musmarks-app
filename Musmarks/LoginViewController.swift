import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    private lazy var viewModel: LoginViewModel = {
        let interactor = LoginViewModel()
        interactor.delegate = self
        return interactor
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func usernameTextFieldValueChanged(_ sender: UITextField) {
        viewModel.usernameTextFieldValueChanged(to: sender.text)
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        
        let mainTabBarController = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController

        present(mainTabBarController, animated: false, completion: nil)
    }
}

extension LoginViewController: LoginViewModelDelegate {
    func hoge() {
        
    }
}
