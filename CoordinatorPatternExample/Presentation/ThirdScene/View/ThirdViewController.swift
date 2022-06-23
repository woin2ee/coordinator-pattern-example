//
//  ThirdViewController.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

final class ThirdViewController: UIViewController, Instantiable {
    
    private var viewModel: ThirdViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.viewModel?.didFinish()
    }
    
    func bind(viewModel: ThirdViewModel) {
        self.viewModel = viewModel
    }
}
