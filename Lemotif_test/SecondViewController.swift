//
//  SecondViewController.swift
//  Lemotif_test
//
//  Created by Irene Lee on 5/31/20.
//  Copyright © 2020 Irene Lee. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var view1: UIImageView!
    
    @IBOutlet weak var view2: UIImageView!
    @IBOutlet weak var view3: UIImageView!
    
     override func viewDidLoad() {
        while (!ImageHandler.callReady) {}
        if  ImageHandler.motifImageList.count >= 3{
            print("image handler has elements")
            for i in 0...2 {
                if ImageHandler.motifImageList[i] != nil {
                    print("image \(i) has a non null value")
                }
                var temp = ImageHandler.toImage(inputString: ImageHandler.motifString[i])
                ImageHandler.motifImageList.append(temp!)
                if ImageHandler.motifImageList[i] != nil {
                      print("success! -- added to the list")
                 } else {
                    print("error with decodedData")
                }
            }
            
        }
        do{
            view1.image = ImageHandler.motifImageList[0]
            view2.image = ImageHandler.motifImageList[1]
            view3.image = ImageHandler.motifImageList[2]
        } catch {
            print("error")
        }
        
 
    }

}
