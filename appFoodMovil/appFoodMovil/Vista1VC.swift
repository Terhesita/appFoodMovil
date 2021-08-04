//
//  Vista1VC.swift
//  appFoodMovil
//
//  Created by Guest User on 22/06/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

import UIKit

class Vista1VC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
    
    @IBOutlet var CollectionViewIB: UICollectionView!
    
    @IBOutlet var myPageControl: UIPageControl!
    
    var currentcellIndex = 0
    
    /*var imagenes = [UIImage(named: "Hamburguesa"),
                    UIImage(named: "pizza"),
                    UIImage(named: "sushi")]*/
    
    var imagenes = ["slideruno","sliderdos","slidertres","slidercuatro"]
    
    var time:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        time = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        
        myPageControl.numberOfPages = imagenes.count
  
    }
    
    @objc func slideToNext()
    {
        if currentcellIndex < imagenes.count - 1
        {
            currentcellIndex = currentcellIndex + 1
        }
        else{
            currentcellIndex = 0
        }
        
        myPageControl.currentPage = currentcellIndex
        
        CollectionViewIB.scrollToItem(at: IndexPath(item: currentcellIndex, section: 0), at: .right, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagenes.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        let cell = CollectionViewIB.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionView
        
        cell.myImage.image = UIImage(named: imagenes[indexPath.row])
        
        return cell
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CollectionViewIB.frame.width, height: CollectionViewIB.frame.height)
    }
}



    


