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
        
    func fetchUser(withID userID: Int, completion: @escaping (User?) -> Void) {
        let url = "http://34.21.78.116/api/users/\(userID)"

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
    
    
    func fetchEatery(withID eateryID: Int, completion: @escaping (Eatery?) -> Void) {
        let url = "http://34.21.78.116/api/eateries/\(eateryID)"

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
    
    func fetchUserFollowerReviews(withID userID: Int, completion: @escaping ([Review]) -> Void) {
        let url = "http://34.21.78.116/api/users/\(userID)/following_reviews/"
        
        AF.request(url, method: .get)
            .validate()
            .responseDecodable(of: ReviewListResponse.self, decoder: decoder) { response in
                print(response)
                switch response.result {
                case .success(let reviews):
                    completion(reviews.reviews)
                case .failure(let error):
                    print("Error in NetworkManager.fetchRecipes: \(error.localizedDescription)")
                    completion([])
                }
            }

    }
}
