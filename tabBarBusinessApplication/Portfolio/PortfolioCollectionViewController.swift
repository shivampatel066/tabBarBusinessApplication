//
//  PortfolioCollectionViewController.swift
//  tabBarBusinessApplication
//
//  Created by Shivam on 19/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PortfolioCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var imageList = ["Image1","Image2","Image3","Image4","Image5","Image1","Image2","Image3","Image4","Image5","Image1","Image2","Image3","Image4","Image5","Image1","Image2","Image3","Image4","Image5"]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        
        collectionView.backgroundView = UIImageView(image:UIImage(named: "Background"))
        
        
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PortfolioCollectionViewCell
        
        cell.cellImage.image = UIImage(named: imageList[indexPath.item])
        
        cell.cellImage.layer.borderWidth = 5
        cell.cellImage.layer.borderColor = UIColor.white.cgColor
    
        // Configure the cell
        
        
        
        
        
        
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        var widthCell = 0
        var heightCell = 0
        
        //iphone x, 6,7,8
        if screenSize.width == 375 {
            
            widthCell = 172
            heightCell = 130
            
        }
        //iphone  6+,7+,8+
        if screenSize.width == 414 {
            
            widthCell = 190
            heightCell = 130
            
        }
        //iphone every other iphone
        if screenSize.width == 320 {
            
            widthCell = 143
            heightCell = 130
            
            
        }
        
        return CGSize(width: widthCell, height: heightCell)
        
    }
    
    

}
