//
//  PostresVC.swift
//  appFoodMovil
//
//  Created by Guest User on 24/06/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

import UIKit

class PostresVC: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var textoPostre: UILabel!
    
    
    let imgBebidas = ["imgSegmented1","imgSegmented2","imgSegemnted3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let imagenBeb = UIImage(named: imgBebidas[0])
        imagen.image = imagenBeb
    }
    

    @IBAction func segmetedValue(_ sender: UISegmentedControl) {
        
        switch (sender.selectedSegmentIndex) {
        case 0:
            let imagenes = UIImage(named: imgBebidas[0])
            imagen?.image = imagenes
            textoPostre.text="❐ PATEL CHOCOLATE      ❐ PASTEL ZANAHORIA    ❐ PASTEL VAINILLA "
            break
        case 1:
            let imagenes = UIImage(named: imgBebidas[1])
            imagen?.image = imagenes
            textoPostre.text="❐ NIEVE CHOCOLATE      ❐ NIEVE FRESA             ❐ NIEVE VAINILLA "
            break
        case 2:
        let imagenes = UIImage(named: imgBebidas[2])
        imagen?.image = imagenes
        textoPostre.text="❐ MORAS      ❐ OREOS   ❐ MENTA "
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
