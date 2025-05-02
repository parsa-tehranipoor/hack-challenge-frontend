//
//  NetworkManager.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 5/2/25.
//
import Alamofire
import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let decoder = JSONDecoder()
    private init() {}
        
    func fetchUser(withID userID: UUID, completion: @escaping (User?) -> Void) {
        let url = "\("https://yourapi.com/api/users")/\(userID.uuidString)"
        
        AF.request(url, method: .get)
            .validate()
            .responseDecodable(of: User.self, decoder: decoder) { response in
                switch response.result {
                case .success(let user):
                    completion(user)
                case .failure(let error):
                    print("Error in fetchUser: \(error.localizedDescription)")
                    completion(nil)
                }
            }
    }
    
    
    func fetchEatery(withID eateryID: UUID, completion: @escaping (Eatery?) -> Void) {
        let url = "\("https://yourapi.com/api/eateries")/\(eateryID.uuidString)"
        
        AF.request(url, method: .get)
            .validate()
            .responseDecodable(of: Eatery.self, decoder: decoder) { response in
                switch response.result {
                case .success(let eatery):
                    completion(eatery)
                case .failure(let error):
                    print("Error in fetchEatery: \(error.localizedDescription)")
                    completion(nil)
                }
            }
    }
}
