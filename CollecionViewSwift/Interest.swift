//
//  Interest.swift
//  CollecionViewSwift
//
//  Created by 张建军 on 16/9/10.
//  Copyright © 2016年 张建军. All rights reserved.
//

import UIKit

class Interest: NSObject {

    
    var title = ""
    
    var description1 = ""
    
    var numberOfMember = 0
    
    var numberOfPosts = 0
    
    var featuredImage: UIImage!
    // 初始化 构造函数
    init(title: String,description1: String,featuredImage:UIImage!){
        
        
        self.title = title
        
        self.description1 = description1
        
        self.featuredImage  = featuredImage
        
        numberOfPosts = 1
        
        numberOfMember = 1
        
        
    }
    
    
    static func createInterests() ->[Interest]
    {
        return[
            Interest(title: "Hello there, i miss u.", description1: "We love backpack and adventures! We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "hello")!),
            Interest(title: "🐳🐳🐳🐳🐳", description1: "We love romantic stories. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "dudu")!),
            Interest(title: "Training like this, #bodyline", description1: "Create beautiful apps. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "bodyline")!),
            Interest(title: "I'm hungry, indeed.", description1: "Cars and aircrafts and boats and sky. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "wave")!),
            Interest(title: "Dark Varder, #emoji", description1: "Meet life with full presence. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "darkvarder")!),
            Interest(title: "I have no idea, bitch", description1: "Get up to date with breaking-news. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "hhhhh")!),
        ]
    }

        
        
    }
    
    
    

