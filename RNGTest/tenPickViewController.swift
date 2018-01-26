//
//  tenPickViewController.swift
//  RNGTest
//
//  Created by RideShark on 2018-01-26.
//  Copyright © 2018 RideShark. All rights reserved.
//

import UIKit

class tenPickViewController: UIViewController {

    @IBOutlet weak var cardsScrollView: UIScrollView!
    
    var cards = [UIImage]()
    var cardsId = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsScrollView.frame = view.frame
        
        for id in cardsId {
            cards.append(UIImage(named: id)!)
        }
        for i in 0 ..< cards.count {
            let cardView = UIImageView()
            cardView.image = cards[i]
            cardView.contentMode = .scaleToFill
            let xPosition = self.view.frame.width * CGFloat(i)
            cardView.frame = CGRect(x: xPosition, y: 0, width: cardsScrollView.frame.width, height: cardsScrollView.frame.height)
            cardsScrollView.contentSize.width = cardsScrollView.frame.width * CGFloat(i + 2)
            cardsScrollView.addSubview(cardView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
