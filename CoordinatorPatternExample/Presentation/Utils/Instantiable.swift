//
//  Instantiable.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

protocol Instantiable {
    static func instantiate(storyboardName: String) -> Self
}

extension Instantiable where Self: UIViewController {
    static func instantiate(storyboardName: String) -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let storyboardID = String(describing: self)
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? Self
        else {
            debugPrint(">>>>>>>>>>> storyboard: \(storyboard), storyboardID: \(storyboardID)")
            return Self()
        }
        return vc
    }
}
