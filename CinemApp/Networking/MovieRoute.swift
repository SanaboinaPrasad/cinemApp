//
//  MovieRoute.swift
//  CinemApp
//
//  Created by Rodrigo on 6/26/18.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Alamofire
import OperaSwift

// just a hierarchy structure to organize routes
struct MovieApi {
    struct Movie {}
}

extension MovieApi.Movie {
    struct GetMovies: RouteType {
        var method: HTTPMethod { return .get }
        var path: String { return "/discover/movie" }
        var parameters: [String: Any]? {
            return ["api_key": Manager.apiKey]
        }
    }
}
