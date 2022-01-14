//
//  ViewController.swift
//  MyAlbum
//
//  Created by 김선재 on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0
    
    @IBOutlet weak var priceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }
    
    
    
    @IBAction func showAlert(_ sender: Any) {
        let message : String = "가격은 $\(currentValue)입니다."
        let alert = UIAlertController(title: "alert", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in self.refresh()})
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "$\(currentValue)"
    }
}
