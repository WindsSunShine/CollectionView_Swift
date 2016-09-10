//
//  InterestCollectionViewCell.swift
//  CollecionViewSwift
//
//  Created by 张建军 on 16/9/10.
//  Copyright © 2016年 张建军. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    
    let SCRREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
    let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
    
    var featureImageView = UIImageView()
    var interestTitleLable = UILabel()
    
    var interest: Interest! {
        
        didSet {
            
            updateUI()
            
        }
        
        
    }
    
    
    func updateUI() {
        
        // 1.Lable
        
        interestTitleLable.frame = CGRectMake(0, SCREEN_HEIGHT * 0.4, SCRREEN_WIDTH, 30)
        
        interestTitleLable.textAlignment = .Center
        
        interestTitleLable.text = interest.title
        
        // 2、ImageView
        
    featureImageView.frame = CGRectMake(SCRREEN_WIDTH * 0.1, 0, SCRREEN_WIDTH * 0.8, SCREEN_HEIGHT * 0.4)
        
        featureImageView.image = interest.featuredImage
        
        //3、添加到item上
        
        self.addSubview(featureImageView)
        self.addSubview(interestTitleLable)
        
    }
    
    
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5.0
        
        self.clipsToBounds = true
        
        
    }

}
