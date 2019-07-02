import Foundation

protocol LoginViewModelDelegate: class {
    func enableLoginButton(_ enable: Bool)
}

final class LoginViewModel {
    weak var delegate: LoginViewModelDelegate!
    
    func setUsername(asUsername username: String?) {
        guard let username = username else { return }
        Store.shared.username = "@" + username
    }
    
    func textFieldEditingDidEnd(_ text: String?) {
        if let text = text, !text.isEmpty {
            delegate.enableLoginButton(true)
        } else {
            delegate.enableLoginButton(false)
        }
    }
}
