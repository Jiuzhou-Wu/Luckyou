//
//  TransitionAnimation.swift
//  RNGTest
//
//  Created by RideShark on 2018-01-25.
//  Copyright © 2018 RideShark. All rights reserved.
//

import Foundation
import UIKit

class TransitionAnimation {
    func flipingCard(view: UIViewController, card: UIImageView, cardfront: String, onePick: UIButton, tenPick: UIButton) {
        
        UIImageView.transition(with: card, duration: 0.7, options: .transitionCrossDissolve, animations: nil, completion: {(value: Bool) in
            UIImageView.transition(with: card, duration: 0.14, options: [.transitionFlipFromLeft, .repeat], animations: {
                UIImageView.setAnimationRepeatCount(1)
                card.image = UIImage(named: cardfront)
            }, completion: { (value: Bool) in
                UIImageView.transition(with: card, duration: 0.1, options: [.transitionFlipFromLeft, .repeat], animations: {
                    UIImageView.setAnimationRepeatCount(1)
                    card.image = UIImage(named: "card-back")
                }, completion: {(value: Bool) in
                    UIImageView.transition(with: card, duration: 0.2, options: [.transitionFlipFromLeft, .repeat], animations: {
                        UIImageView.setAnimationRepeatCount(1)
                        card.image = UIImage(named: cardfront)
                    }, completion: {(value: Bool) in
                        UIImageView.transition(with: card, duration: 0.17, options: [.transitionFlipFromLeft, .repeat], animations: {
                            UIImageView.setAnimationRepeatCount(1)
                            card.image = UIImage(named: "card-back")
                        }, completion: {(value: Bool) in
                            UIImageView.transition(with: card, duration: 0.26, options: [.transitionFlipFromLeft, .repeat], animations: {
                                UIImageView.setAnimationRepeatCount(1)
                                card.image = UIImage(named: cardfront)
                            }, completion: {(value: Bool) in
                                UIImageView.transition(with: card, duration: 0.23, options: [.transitionFlipFromLeft, .repeat], animations: {
                                    UIImageView.setAnimationRepeatCount(1)
                                    card.image = UIImage(named: "card-back")
                                }, completion: {(value: Bool) in
                                    UIImageView.transition(with: card, duration: 0.4, options: [.transitionFlipFromLeft, .repeat], animations: {
                                        UIImageView.setAnimationRepeatCount(1)
                                        card.image = UIImage(named: cardfront)
                                    }, completion: {(value: Bool) in
                                        UIImageView.transition(with: card, duration: 0.3, options: [.transitionFlipFromLeft, .repeat], animations: {
                                            UIImageView.setAnimationRepeatCount(1)
                                            card.image = UIImage(named: "card-back")
                                        }, completion: {(value: Bool) in
                                            UIImageView.transition(with: card, duration: 0.6, options: [.transitionFlipFromLeft, .repeat], animations: {
                                                UIImageView.setAnimationRepeatCount(1)
                                                card.image = UIImage(named: cardfront)
                                            }, completion: {(value: Bool) in
                                                UIImageView.transition(with: card, duration: 0.7, options: [.transitionFlipFromLeft, .repeat], animations: {
                                                    UIImageView.setAnimationRepeatCount(1)
                                                    card.image = UIImage(named: "card-back")
                                                }, completion: {(value: Bool) in
                                                    UIImageView.transition(with: card, duration: 0.9, options: [.transitionFlipFromLeft, .repeat], animations: {
                                                        UIImageView.setAnimationRepeatCount(1)
                                                        card.image = UIImage(named: cardfront)
                                                    }, completion:
                                                        {(value: Bool) in
                                                            let alertController = UIAlertController(title: "Congratulation", message: "take your card", preferredStyle: .alert)
                                                            let okAction = UIAlertAction(title: "OK", style: .default, handler: {(_) in
                                                                self.autoRotate(card: card, view: view)
                                                                onePick.isEnabled = true
                                                                tenPick.isEnabled = true
                                                            })
                                                            alertController.addAction(okAction)
                                                            view.present(alertController, animated: true, completion: nil)
                                                    })
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
    }
    
    func autoRotate(card: UIImageView, view: UIViewController){
        card.image = UIImage(named: "card-back")
        card.frame.size.height = view.view.frame.height * 0.75
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 5
        rotationAnim.isRemovedOnCompletion = false
        card.layer.add(rotationAnim, forKey: "rotate")
    }
    
    func speedUpRotation(card: UIImageView, view: UIViewController, onePick: UIButton, tenPick: UIButton){
        card.image = UIImage(named: "card-back")
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2
        rotationAnim.repeatCount = 2
        rotationAnim.duration = 0.7
        rotationAnim.isRemovedOnCompletion = true
        card.layer.add(rotationAnim, forKey: "rotate")
        UIView.animate(withDuration: 1.3, animations: {
            card.transform = CGAffineTransform(scaleX: 0.001,y: 0.001)
            }, completion: {Bool in
                card.transform = CGAffineTransform(scaleX: 1,y: 1)
                self.autoRotate(card: card, view: view)
        })
    }
}
