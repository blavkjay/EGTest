//
//  ConverterService.swift
//  EGTest
//
//  Created by OLAJUWON BALOGUN on 28/02/2021.
//

import Foundation
import SwiftyJSON

struct LatestRateService {
    private let networkManager = NetworkManager()
    
    func latestRates(completionHandler: @escaping (Result<JSON, Error>) -> ()) {
        let url = "http://data.fixer.io/api/latest"
        networkManager.makeRequest(requestType: .get, url: url, params: ["access_key": Config.apiKey], completionHandler: completionHandler)
    }
}
