import Foundation

protocol WebService {
    func getRandomUser(
        request: GetUserRequest,
        callback: @escaping (Result<GetUserResponse, Error>) -> Void
    )
}

final class WebServiceImp {
    private lazy var session: URLSession = {
        let session = URLSession(configuration: .default)
        return session
    }()
    
    private static let unknownError = {
        return NSError(
            domain: NSURLErrorDomain,
            code: -1,
            userInfo: nil
        )
    }()
    
    private static let decoder = JSONDecoder()
    private func request<T: Decodable>(
        request: URLRequest,
        completion: @escaping (Result<T, Error>) -> Void
        ) {
        session.dataTask(
            with: request,
            completionHandler: { (data, response, error) in
                func sendError() {
                    if let error = error {
                        DispatchQueue.main.async {
                            completion(.failure(error))
                        }
                    } else {
                        DispatchQueue.main.async {
                            completion(.failure(WebServiceImp.unknownError))
                        }
                    }
                }
                
                guard let response = response as? HTTPURLResponse else {
                    sendError()
                    return
                }
                
                switch response.statusCode {
                case 200...299:
                    guard let data = data else {
                        sendError()
                        return
                    }
                    let result = Result<T, Error>(
                        catching: {
                            try WebServiceImp.decoder.decode(T.self, from: data)
                    }
                    )
                    DispatchQueue.main.async {
                        completion(result)
                    }
                default:
                    sendError()
                }
        }
            ).resume()
    }
}

extension WebServiceImp: WebService {
    func getRandomUser(
        request: GetUserRequest,
        callback: @escaping (Result<GetUserResponse, Error>) -> Void
        ) {
        let urlRequest = URLRequest(url: URL(string: request.url)!)
        self.request(request: urlRequest, completion: callback)
    }
}
