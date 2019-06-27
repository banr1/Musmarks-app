import Foundation

struct GetUserRequest {
    let url: String
}

struct GetUserResponse: Decodable {
    var name: String
    var token: String
}
