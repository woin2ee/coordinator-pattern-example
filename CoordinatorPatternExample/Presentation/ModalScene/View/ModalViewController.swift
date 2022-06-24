//
//  ModalViewController.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

class ModalViewController: UIViewController, Instantiable {
    
    private var viewModel: ModalViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel?.didFinish()
    }
    
    func bind(viewModel: ModalViewModel) {
        self.viewModel = viewModel
    }
    
    @IBAction func presentModalButtonDidTap(_ sender: Any) {
        viewModel?.didTapPresentModalButton()
    }
}
