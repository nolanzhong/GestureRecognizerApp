//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Nolan Zhong on 1/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // allowing for the image to be clickable
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
        if myLabel.text == "Optimus Prime" {
            imageView.image = UIImage(named: "1498134404-transformers-dark-of-the-moon-bumblebee-poster")
            myLabel.text = "Bumblebee"
        } else {
            imageView.image = UIImage(named: "optimus-prime-is-like-a-huge-figure")
            myLabel.text = "Optimus Prime"
        }
    }


}

