//
//  ThirdViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import Foundation

protocol ThirdViewCoordinatingDelegate: AnyObject {
    func didFinishCoordinating()
}

protocol ThirdViewModelInput {
    func didFinish()
}

protocol ThirdViewModel: ThirdViewModelInput {}

final class DefaultThirdViewModel {
    
    private weak var coordinatorDelegate: ThirdViewCoordinatingDelegate?
    
    init(coordinatorDelegate: ThirdViewCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultThirdViewModel: ThirdViewModel {
    
    func didFinish() {
        coordinatorDelegate?.didFinishCoordinating()
    }
}
