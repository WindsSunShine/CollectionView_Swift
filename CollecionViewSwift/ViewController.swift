//
//  ViewController.swift
//  CollecionViewSwift
//
//  Created by 张建军 on 16/9/10.
//  Copyright © 2016年 张建军. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let SCRREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
    let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
    
    var backGroundImageView = UIImageView()
    
    var interestCollectionViewCell = InterestCollectionViewCell()
    
    let cellID = "InterestCollectionViewCell"
    
    private var interests = Interest.createInterests()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let bgImageView = UIImageView.init(frame: CGRectMake(0, 0, SCRREEN_WIDTH, SCREEN_HEIGHT))
        
    bgImageView.image = UIImage.init(named: "blue")
        
        self.view.addSubview(bgImageView)
        
        self.setupCollectionView()
        
        
        
        
    }
    
    func setupCollectionView() {
        
        // 1、 初始化layout
        
        let flowLayout = UICollectionViewFlowLayout()
        
        // 水平方向
        flowLayout.scrollDirection = .Vertical
        
        flowLayout.itemSize = CGSizeMake(SCRREEN_WIDTH, SCREEN_HEIGHT/2)
        
        let intersetCollectionView = UICollectionView(frame: CGRectMake(0, 0, SCRREEN_WIDTH, SCREEN_HEIGHT),collectionViewLayout: flowLayout)
        // 与上面的设置相同 仅仅是做对比
//        intersetCollectionView.showsHorizontalScrollIndicator = false
        intersetCollectionView.collectionViewLayout = flowLayout
        // 遵守协议
        
        intersetCollectionView.delegate = self
        
        intersetCollectionView.dataSource = self
        
        
        // 注册cell
        
        intersetCollectionView.registerClass(InterestCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        
        intersetCollectionView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(intersetCollectionView)
        
    
    }
    
    
    // 代理方法
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return interests.count
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        
        interestCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(cellID, forIndexPath: indexPath) as! InterestCollectionViewCell
        interestCollectionViewCell.interest =  self.interests[indexPath.item]
        interestCollectionViewCell.backgroundColor = UIColor.clearColor()
        return interestCollectionViewCell
        
        
        
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

