//
//  HomeViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import Foundation

protocol HomeCoordinatingDelegate: AnyObject {
    func pushToFirst()
    func presentToFirst()
    func pushToSecond()
    func pushToThird()
    func presentToModal()
}

protocol HomeViewModelInput {
    func didTapMoveFirstButton()
    func didTapPresentFirstButton()
    func didTapMoveSecondButton()
    func didTapMoveThirdButton()
    func didTapPresentModalButton()
}

protocol HomeViewModel: HomeViewModelInput {}

final class DefaultHomeViewModel {
    
    private weak var coordinatingDelegate: HomeCoordinatingDelegate?
    
    init(coordinatorDelegate: HomeCoordinatingDelegate) {
        self.coordinatingDelegate = coordinatorDelegate
    }
}

extension DefaultHomeViewModel: HomeViewModel {
    
    func didTapMoveFirstButton() {
        coordinatingDelegate?.pushToFirst()
    }
    
    func didTapPresentFirstButton() {
        coordinatingDelegate?.presentToFirst()
    }
    
    func didTapMoveSecondButton() {
        coordinatingDelegate?.pushToSecond()
    }
    
    func didTapMoveThirdButton() {
        coordinatingDelegate?.pushToThird()
    }
    
    func didTapPresentModalButton() {
        coordinatingDelegate?.presentToModal()
    }
}
