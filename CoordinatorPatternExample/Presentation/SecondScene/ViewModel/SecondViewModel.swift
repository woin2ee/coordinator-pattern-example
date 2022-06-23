//
//  SecondViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import Foundation

protocol SecondViewCoordinatingDelegate: AnyObject {
    func didFinishCoordinating()
}

protocol SecondViewModelInput {
    func didFinish()
}

protocol SecondViewModel: SecondViewModelInput {}

final class DefaultSecondViewModel {
    
    private weak var coordinatorDelegate: SecondViewCoordinatingDelegate?
    
    init(coordinatorDelegate: SecondViewCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultSecondViewModel: SecondViewModel {
    
    func didFinish() {
        coordinatorDelegate?.didFinishCoordinating()
    }
}
