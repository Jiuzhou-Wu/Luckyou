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

    var cardsId = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardsScrollView.frame = view.frame

        for i in 0..<cardsId.count{
            let x = (self.view.frame.size.height * 0.75 * 248/520) * CGFloat(i)
            let imageView = UIImageView(frame: CGRect(x: x, y: 0, width: (self.view.frame.size.height * 0.75 * 248/520), height: self.view.frame.size.height * 0.75))
            imageView.image = UIImage(named: cardsId[i])
            cardsScrollView.contentSize.width = (self.view.frame.size.height * 0.75 * 248/520) * CGFloat(i+1)
            cardsScrollView.addSubview(imageView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainViewController: ViewController = segue.destination as! ViewController
        mainViewController.onePick.isEnabled = true
        mainViewController.tenPick.isEnabled = true
    }

}
