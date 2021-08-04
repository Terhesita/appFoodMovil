//
//  IngredientesVC.swift
//  appFoodMovil
//
//  Created by Guest User on 23/06/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

import UIKit

class IngredientesVC: UIViewController {
    
    @IBOutlet weak var imgIngrediente1: UIImageView!
    @IBOutlet weak var imgIngrediente2: UIImageView!
    @IBOutlet weak var imgIngrediente3: UIImageView!
    @IBOutlet weak var imgIngrediente4: UIImageView!
    @IBOutlet weak var imgIngrediente5: UIImageView!
    @IBOutlet weak var imgIngrediente6: UIImageView!
    @IBOutlet weak var imgIngrediente7: UIImageView!
    @IBOutlet weak var imgIngrediente8: UIImageView!
    @IBOutlet weak var imgIngrediente9: UIImageView!
    @IBOutlet weak var imgIngrediente10: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgIngrediente1.isHidden=true
        imgIngrediente2.isHidden=true
        imgIngrediente3.isHidden=true
        imgIngrediente4.isHidden=true
        imgIngrediente5.isHidden=true
        imgIngrediente6.isHidden=true
        imgIngrediente7.isHidden=true
        imgIngrediente8.isHidden=true
        imgIngrediente9.isHidden=true
        imgIngrediente10.isHidden=true
    }
    
    @IBAction func botonesAgregar(_ sender: UIButton) {
        let ingredientes = sender.tag
        
        switch ingredientes {
        case 1:
            imgIngrediente1.isHidden=false
            break
        case 2:
            imgIngrediente2.isHidden=false
            break
        case 3:
            imgIngrediente3.isHidden=false
            break
        case 4:
            imgIngrediente4.isHidden=false
            break
        case 5:
            imgIngrediente5.isHidden=false
            break
        case 6:
            imgIngrediente6.isHidden=false
            break
        case 7:
            imgIngrediente7.isHidden=false
            break
        case 8:
            imgIngrediente8.isHidden=false
            break
        case 9:
            imgIngrediente9.isHidden=false
            break
        case 10:
            imgIngrediente10.isHidden=false
            break
        default:
            break
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
