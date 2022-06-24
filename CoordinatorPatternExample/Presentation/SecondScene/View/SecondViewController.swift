//
//  SecondViewController.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

final class SecondViewController: UIViewController, Instantiable {
    
    private var viewModel: SecondViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.viewModel?.didFinish()
    }
    
    func bind(viewModel: SecondViewModel) {
        self.viewModel = viewModel
    }
    
    @IBAction func moveFirstButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveFirstButton()
    }
    
    @IBAction func moveThirdButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveThirdButton()
    }
}
