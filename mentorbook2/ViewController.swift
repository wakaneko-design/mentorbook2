//
//  ViewController.swift
//  mentorbook2
//
//  Created by Yuto Wakabayashi on 2019/10/26.
//  Copyright © 2019 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var courseLabel: UILabel!
    
    @IBOutlet var nameLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        setUI()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    
    
    
    @IBAction func mae() {
        if index == 0 {
            index = 2
        }else if index == 1 {
            index = index - 1
        }else if index == 2 {
        index = index - 1
        }
        setUI()
    }
    
    
    
    @IBAction func ushiro() {
        if index == 0 {
            index = index + 1
        }else if index == 1 {
            index = index + 1
        }else if index == 2 {
            index = 0
        }
        setUI()
    }
    
}

