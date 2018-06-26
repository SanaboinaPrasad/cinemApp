//
//  Constants.swift
//  CinemApp
//
//  Created by Rodrigo on 6/26/18.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Foundation

struct Constants {
    struct Network {
    static let baseUrl = URL(string: "https://api.themoviedb.org/3")!
    static let apiKey = "d122e41c6c6db22c6c783d3f95231a55"
    static let AuthTokenName = "Authorization"
    static let SuccessCode = 200
    static let successRange = 200..<300
    static let Unauthorized = 401
    static let NotFoundCode = 404
    static let ServerError = 500
    }
}
