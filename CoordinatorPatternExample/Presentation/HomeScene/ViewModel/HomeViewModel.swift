//
//  HomeViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import Foundation

protocol HomeCoordinatingDelegate: AnyObject {
    func pushToFirst()
    func pushToSecond()
    func pushToThird()
    func presentToModal()
}

protocol HomeViewModelInput {
    func didTapMoveFirstButton()
    func didTapMoveSecondButton()
    func didTapMoveThirdButton()
    func didTapPresentModalButton()
}

protocol HomeViewModel: HomeViewModelInput {}

final class DefaultHomeViewModel {
    
    private weak var coordinatorDelegate: HomeCoordinatingDelegate?
    
    init(coordinatorDelegate: HomeCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultHomeViewModel: HomeViewModel {
    
    func didTapMoveFirstButton() {
        coordinatorDelegate?.pushToFirst()
    }
    
    func didTapMoveSecondButton() {
        coordinatorDelegate?.pushToSecond()
    }
    
    func didTapMoveThirdButton() {
        coordinatorDelegate?.pushToThird()
    }
    
    func didTapPresentModalButton() {
        coordinatorDelegate?.presentToModal()
    }
}
