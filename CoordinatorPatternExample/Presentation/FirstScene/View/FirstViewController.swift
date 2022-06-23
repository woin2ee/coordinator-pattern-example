//
//  FirstViewController.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

final class FirstViewController: UIViewController, Instantiable {
    
    private var viewModel: FirstViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.viewModel?.didFinish()
    }
    
    func bind(viewModel: FirstViewModel) {
        self.viewModel = viewModel
    }
}
