import Foundation

protocol LoginViewModelDelegate: class {
    func hoge()
}

final class LoginViewModel {
    weak var delegate: LoginViewModelDelegate!
    
    func setUsername(asUsername username: String?) {
        guard let username = username else { return }
        Store.shared.username = "@" + username
    }
}
