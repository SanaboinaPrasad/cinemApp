//
//  Manager.swift
//  CinemApp
//
//  Created by Rodrigo on 6/26/18.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Alamofire
import Foundation
import OperaSwift
import RxSwift

class Manager: RxManager {
    static let singleton = Manager(manager: Alamofire.SessionManager.default)
    static let apiKey = "d122e41c6c6db22c6c783d3f95231a55"
}
