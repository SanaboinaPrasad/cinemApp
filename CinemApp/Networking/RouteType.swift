//
//  RouteType.swift
//  CinemApp
//
//  Created by Rodrigo on 6/26/18.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Alamofire
import Foundation
import OperaSwift

extension RouteType {
    var baseURL: URL { return Constants.Network.baseUrl }
    var retryCount: Int { return 3 }
    var manager: ManagerType { return Manager.singleton }
}
