//
//  NetworkManager.swift
//  A4
//
//  Created by Parsa Tehranipoor on 4/26/25.
//
import Alamofire
import Foundation

class NetworkManager {

    static let shared = NetworkManager()
    
    private let decoder = JSONDecoder()
    
    private init() { }
    
    private let baseURL = "https://api.jsonbin.io/v3/b/64d033f18e4aa6225ecbcf9f?meta=false"

    func fetchRecipes(completion: @escaping ([Recipe]) -> Void) {
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        AF.request(baseURL, method: .get)
            .validate()
            .responseDecodable(of: [Recipe].self, decoder: decoder) { response in
                switch response.result {
                case .success(let recipes):
                    completion(recipes)
                case .failure(let error):
                    print("Error in NetworkManager.fetchRecipes: \(error.localizedDescription)")
                    completion([])
                }
            }
    }
    
}

