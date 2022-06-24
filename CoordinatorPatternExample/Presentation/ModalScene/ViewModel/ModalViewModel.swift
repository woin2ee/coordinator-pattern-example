//
//  ModalViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import Foundation

protocol ModalCoordinatingDelegate: AnyObject {
    func finishCoordinating()
    func presentToModal()
}

protocol ModalViewModelInput {
    func didFinish()
    func didTapPresentModalButton()
}

protocol ModalViewModel: ModalViewModelInput {}

final class DefaultModalViewModel {
    
    private weak var coordinatingDelegate: ModalCoordinatingDelegate?
    
    init(coordinatingDelegate: ModalCoordinatingDelegate) {
        self.coordinatingDelegate = coordinatingDelegate
    }
}

extension DefaultModalViewModel: ModalViewModel {
    
    func didFinish() {
        coordinatingDelegate?.finishCoordinating()
    }
    
    func didTapPresentModalButton() {
        coordinatingDelegate?.presentToModal()
    }
}
