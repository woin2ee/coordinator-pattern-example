//
//  HomeViewController.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func moveFirstViewButtonDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "First", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: FirstViewController.self))
        present(vc, animated: true)
    }
    
    @IBAction func moveSecondViewButtonDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: SecondViewController.self))
        present(vc, animated: true)
    }
    
    @IBAction func moveThirdViewButtonDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Third", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: ThirdViewController.self))
        present(vc, animated: true)
    }
}
