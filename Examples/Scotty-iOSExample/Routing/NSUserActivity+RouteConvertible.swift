//
//  NSUserActivity+RouteConvertible.swift
//  Routes
//
//  Copyright © 2017 Bottle Rocket Studios. All rights reserved.
//

import Foundation
import Scotty
import CoreSpotlight

extension NSUserActivity {

    public var route: Route<UITabBarController>? {
        guard let activityType = userInfo?[CSSearchableItemActivityIdentifier] as? String else { return nil }
		return Route.route(forIdentifier: activityType)
    }
}
