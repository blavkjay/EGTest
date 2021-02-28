//
//  NetworkManager.swift
//  EGTest
//
//  Created by OLAJUWON BALOGUN on 28/02/2021.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkManager {
    
    func makeRequest(requestType:HTTPMethod, url:String, params: Dictionary<String,Any>?, completionHandler: @escaping (Result<JSON,Error>)-> ()){
        
        
        AF.request(url, method: requestType, parameters: params).responseJSON {response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                completionHandler(.success(json))
            case .failure(let error):
                completionHandler(.failure(CustomHttpError.Unknown(error: error.localizedDescription)))
            }
        }
    }
}
