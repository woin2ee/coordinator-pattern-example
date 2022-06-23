//
//  HomeViewController.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private var viewModel: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bind(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    @IBAction func moveFirstViewButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveFirstViewButton()
        
//        let storyboard = UIStoryboard(name: "First", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: FirstViewController.self))
//        present(vc, animated: true)
    }
    
    @IBAction func moveSecondViewButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveSecondViewButton()
        
//        let storyboard = UIStoryboard(name: "Second", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: SecondViewController.self))
//        present(vc, animated: true)
    }
    
    @IBAction func moveThirdViewButtonDidTap(_ sender: Any) {
        viewModel?.didTapMoveThirdViewButton()
        
//        let storyboard = UIStoryboard(name: "Third", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: ThirdViewController.self))
//        present(vc, animated: true)
    }
}
