//
//  FirstViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import Foundation

protocol FirstViewCoordinatingDelegate: AnyObject {
    func didFinishCoordinating()
}

protocol FirstViewModelInput {
    func didFinish()
}

protocol FirstViewModel: FirstViewModelInput {}

final class DefaultFirstViewModel {
    
    private weak var coordinatorDelegate: FirstViewCoordinatingDelegate?
    
    init(coordinatorDelegate: FirstViewCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultFirstViewModel: FirstViewModel {
    
    func didFinish() {
        coordinatorDelegate?.didFinishCoordinating()
    }
}
