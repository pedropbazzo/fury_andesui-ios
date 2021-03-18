//
//  ProgressIndicatorRouter.swift
//  AndesUI-demoapp
//
//  Created by Juan Andres Vasquez Ferrer on 30-11-20.
//  Copyright © 2020 MercadoLibre. All rights reserved.
//

import Foundation
import UIKit

class ProgressIndicatorRouter: HomeRouterProtocol {
    func route(from: UIViewController) {
        from.navigationController?.pushViewController(ProgressIndicatorViewController(), animated: true)
    }
}
