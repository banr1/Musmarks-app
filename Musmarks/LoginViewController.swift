import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    private lazy var viewModel: LoginViewModel = {
        let interactor = LoginViewModel()
        interactor.delegate = self
        return interactor
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func textFieldEditingDidEnd(_ sender: UITextField) {
        viewModel.textFieldEditingDidEnd(sender.text)
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        viewModel.setUsername(asUsername: usernameTextField.text)
        let mainTabBarController = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController

        present(mainTabBarController, animated: false, completion: nil)
    }
}

extension LoginViewController: LoginViewModelDelegate {
    func enableLoginButton(_ enable: Bool) {
        loginButton.isEnabled = enable
        if enable {
            loginButton.backgroundColor = UIColor(
                red: CGFloat(2) / 255.0,
                green: CGFloat(152) / 255.0,
                blue: CGFloat(104) / 255.0,
                alpha: 1
            )
        } else {
            loginButton.backgroundColor = .lightGray
        }
    }
}
