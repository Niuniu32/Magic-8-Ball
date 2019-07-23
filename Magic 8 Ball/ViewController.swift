//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Hu Chao Xiang on 2019-07-23.
//  Copyright © 2019 Hu Chao Xiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Declear variables
    let allBalls=["ball1","ball2","ball3","ball4","ball5"];
    var ballIndexNumber :Int=0;
    
    //create UI image view
    @IBOutlet weak var imageLoader: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Update image while load
        //updateImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImage();
    }
    @IBAction func imageButton(_ sender: UIButton) {
        updateImage();
    }
    func updateImage(){
        ballIndexNumber = Int.random(in: 0 ... 4);
        print(ballIndexNumber);
        imageLoader.image = UIImage(named: allBalls[ballIndexNumber]);
    }
    
    
}

