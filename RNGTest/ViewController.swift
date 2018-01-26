//
//  ViewController.swift
//  RNGTest
//
//  Created by RideShark on 2018-01-17.
//  Copyright © 2018 RideShark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Count: UILabel!
    @IBOutlet weak var onePick: UIButton!
    @IBOutlet weak var tenPick: UIButton!
    @IBOutlet weak var card: UIImageView!
    
    let trans = TransitionAnimation.init()
    let cardPool = Cards.init()
    var isOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecignizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.oneRoundPick))
        tapGestureRecignizer.numberOfTapsRequired = 1
        let tapGestureRecignizer2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.tenRoundsPick))
        tapGestureRecignizer2.numberOfTapsRequired = 1
        
        onePick.isEnabled = true
        tenPick.isEnabled = true
        trans.autoRotate(card: self.card)
        
        onePick.layer.cornerRadius = 20
        onePick.layer.borderWidth = 4
        onePick.layer.borderColor = UIColor.darkGray.cgColor
        onePick.clipsToBounds = true
        onePick.isUserInteractionEnabled = true
        onePick.addGestureRecognizer(tapGestureRecignizer)
        
        tenPick.layer.cornerRadius = 20
        tenPick.layer.borderWidth = 4
        tenPick.layer.borderColor = UIColor.darkGray.cgColor
        tenPick.clipsToBounds = true
        tenPick.isUserInteractionEnabled = true
        tenPick.addGestureRecognizer(tapGestureRecignizer2)
        Count.text = UserDefaults.standard.getTotalPicks()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func oneRoundPick(_ sender: Any) {
        UserDefaults.standard.onePick()
        onePick.isEnabled = false
        tenPick.isEnabled = false
        //remove animations
        card.layer.removeAnimation(forKey: "rotate")
        
        //pulsing
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: onePick.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.darkGray.cgColor
        self.view.layer.insertSublayer(pulse, below: onePick.layer)
        
        //pickcard
        
        let cardId = self.randomGenerator(size: 1)
        let cardPic = self.cardPool.numToCard(id: cardId[0])
        
        //rotate
        self.trans.flipingCard(view: self, card: self.card, cardfront: cardPic)
        if(UserDefaults.standard.cardOwned(targetCard: cardPic)){
        } else {
            UserDefaults.standard.addOwnedCard(card: cardPic)
        }
        
        onePick.isEnabled = true
        tenPick.isEnabled = true
        Count.text = UserDefaults.standard.getTotalPicks()
    }
    
    
    @IBAction func tenRoundsPick(_ sender: Any) {
        UserDefaults.standard.tenPick()
        //pulsing
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: tenPick.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.white.cgColor
        self.view.layer.insertSublayer(pulse, below: tenPick.layer)
        
        //pickcard
        
        //rotate
        Count.text = UserDefaults.standard.getTotalPicks()
    }
    
    func randomGenerator(size: Int) -> [Int] {
        //SSR: 11-1 ... 11-10
        //SR: 10-1 ... 10-22
        //R: 9-1 ... 9-41
        var random: [Int] = []
        for _ in 0...(size-1){
            let randomNum = arc4random_uniform(10000)
            random.append(Int(randomNum))
        }
        return random
    }
    
}

