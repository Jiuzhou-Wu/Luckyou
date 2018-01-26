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
    func flipingCard(view: UIViewController, card: UIImageView, cardfront: String) {
        
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
                                                            let okAction = UIAlertAction(title: "OK", style: .default, handler: {(_) in self.autoRotate(card: card)})
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
    
    func autoRotate(card: UIImageView){
        card.image = UIImage(named: "card-back")
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 5
        rotationAnim.isRemovedOnCompletion = false
        card.layer.add(rotationAnim, forKey: "rotate")
    }
}
