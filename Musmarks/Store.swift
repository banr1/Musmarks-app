import Foundation

class Store {
    static let shared = Store()
    var username = "@Hoge"
    
    private init() {}
}
