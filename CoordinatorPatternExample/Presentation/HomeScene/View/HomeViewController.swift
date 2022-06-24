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
    
    @IBAction func moveFirstButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveFirstButton()
    }
    
    @IBAction func moveSecondButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveSecondButton()
    }
    
    @IBAction func moveThirdButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveThirdButton()
    }
    
    @IBAction func presentModalButtonDidTap(_ sender: Any) {
        viewModel?.didTapPresentModalButton()
    }
}
