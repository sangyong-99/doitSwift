//
//  ViewController.swift
//  ImageView_m
//
//  Created by 신상용 on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    var numImage: Int = 1
    let maxImage:Int = 6
    
    @IBOutlet var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ImageView.image = UIImage(named: "1.png")
    }

    func check(){
        if numImage > maxImage {
            numImage = 1
        }
        if numImage < 1 {
            numImage = maxImage
        }
    }
    
    @IBAction func before(_ sender: UIButton) {
        numImage -= 1
        check()
        let imageName = String(numImage) + ".png"
        ImageView.image = UIImage(named: imageName)
    }
    
    @IBAction func next(_ sender: UIButton) {
        numImage += 1
        check()
        let imageName = String(numImage) + ".png"
        ImageView.image = UIImage(named: imageName)
    }
    
}

