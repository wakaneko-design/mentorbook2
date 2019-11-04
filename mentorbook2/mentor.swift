//
//  Mentor.swift
//  mentorbook2
//
//  Created by Yuto Wakabayashi on 2019/10/26.
//  Copyright © 2019 com.litech. All rights reserved.
//

import UIKit

class Mentor{
    var name: String!
    var course:String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
