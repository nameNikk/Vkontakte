//
//  NetworkManager.swift
//  VK
//
//  Created by Никита Макаренко on 22.03.2021.
//

import Foundation
import Alamofire

class NetworkManager {
    
    private static let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        configuration.allowsCellularAccess = false
        let session = URLSession(configuration: configuration)
        return session
    }()
    
    static let shared = NetworkManager()
    
    private init(){
        
    }
    
    func loadGroups(token: String)  {
        let baseURL = "https://api.vk.com"
        let path = "/method/groups.get"

        let params: Parameters = [
        "access_token": token,
            "extended": 1,
            "v": "5.130"

        ]

        AF.request(baseURL + path, method: .get, parameters: params).responseJSON { (response) in
            guard let json = response.value else { return }
            print(json)
        }
    }
    
    func loadFriends(token: String)  {
        let baseURL = "https://api.vk.com"
        let path = "/method/friends.get"
        
        let params: Parameters = [
        "access_token": token,
            "order": "name",
            "v": "5.130"
        
        ]
            
        AF.request(baseURL + path, method: .get, parameters: params).responseJSON { (response) in
            guard let json = response.value else { return }
            print(json)
        }
}
    
    func loadPhotos(token: String)  {
        let baseURL = "https://api.vk.com"
        let path = "/method/photos.getAll"
        
        let params: Parameters = [
        "access_token": token,
            "extended": 1,
            "v": "5.130"
        
        ]
            
        AF.request(baseURL + path, method: .get, parameters: params).responseJSON { (response) in
            guard let json = response.value else { return }
            print(json)
        }
}
    
    
}
