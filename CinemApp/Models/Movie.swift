//
//  Movie.swift
//  CinemApp
//
//  Created by Rodrigo on 6/26/18.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Decodable
import protocol Decodable.Decodable
import Foundation
import OperaSwift

struct Movie {
    let posterPath: String?
    let adult: Bool
    let overview: String
    let releaseDate: String
    let genreIds: [Int]
    let id: Int
    let originalTitle: String
    let originaLanguage: String
    let title: String
    let popularity: Double
    let voteCount: Int
    let video: Bool
    let voteAverage: Double
}

extension Movie: Decodable, OperaDecodable {
    static func decode(_ j: Any) throws -> Movie {
        return try Movie.init(posterPath: j =>? "poster_path",
                              adult: j => "adult",
                              overview: j => "overview",
                              releaseDate: j => "release_date",
                              genreIds: j => "genre_ids",
                              id: j => "id",
                              originalTitle: j => "original_title",
                              originaLanguage: j => "original_language",
                              title: j => "title",
                              popularity: j => "popularity",
                              voteCount: j => "vote_count",
                              video: j => "video",
                              voteAverage: j => "vote_average")
    }
}
