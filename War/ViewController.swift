//
//  ViewController.swift
//  War
//
//  Created by Nikolay Kolibarov on 12/20/16.
//  Copyright © 2016 Nikolay Kolibarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0;
    
    let cardNames: Array<String> = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        let leftNumber: Int = Int(arc4random_uniform(13))
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        let rightNumber: Int = Int (arc4random_uniform(13))
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
    }

}

