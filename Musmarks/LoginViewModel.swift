import Foundation

protocol LoginViewModelDelegate: class {
    func hoge()
}

final class LoginViewModel {
    weak var delegate: LoginViewModelDelegate!
    private var username: String?
    
    func usernameTextFieldValueChanged(to value: String?) {
        username = value
    }
}
