//
//  HomeViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import Foundation

protocol HomeCoordinatingDelegate {
    func pushToFirstView()
    func pushToSecondView()
    func pushToThirdView()
}

protocol HomeViewModelInput {
    func didTapMoveFirstViewButton()
    func didTapMoveSecondViewButton()
    func didTapMoveThirdViewButton()
}

protocol HomeViewModel: HomeViewModelInput {}

final class DefaultHomeViewModel {

//    private weak var coordinatorDelegate: HomeCoordinatorDelegate?
    
    init() {
        
    }
}

extension DefaultHomeViewModel: HomeViewModel {
    
    func didTapMoveFirstViewButton() {
        print("first")
    }
    
    func didTapMoveSecondViewButton() {
        print("second")
    }
    
    func didTapMoveThirdViewButton() {
        print("third")
    }
}
