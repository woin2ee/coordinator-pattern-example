//
//  HomeViewController.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

final class HomeViewController: UIViewController, Instantiable {
    
    private var viewModel: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bind(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    @IBAction func moveFirstViewButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveFirstViewButton()
    }
    
    @IBAction func moveSecondViewButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveSecondViewButton()
    }
    
    @IBAction func moveThirdViewButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveThirdViewButton()
    }
}
