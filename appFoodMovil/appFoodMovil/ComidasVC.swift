//
//  ComidasVC.swift
//  appFoodMovil
//
//  Created by Guest User on 23/06/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

import UIKit

class ComidasVC: UIViewController {

    
    @IBOutlet weak var botonHamburguesa: UIButton!
    @IBOutlet weak var botonPizza: UIButton!
    @IBOutlet weak var botonSushi: UIButton!
    @IBOutlet weak var botonTacos: UIButton!
    
    @IBOutlet weak var labelHamburguesa: UILabel!
    @IBOutlet weak var labelPizza: UILabel!
    @IBOutlet weak var labelSushi: UILabel!
    @IBOutlet weak var labelTacos: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupCircularButton(button: botonHamburguesa, imagen: "imgboton")
        setupCircularButton(button: botonPizza,imagen: "imgbotondos")
        setupCircularButton(button: botonSushi, imagen: "imgbotontres")
        setupCircularButton(button: botonTacos, imagen: "imgbotoncuatro")
        
        labelHamburguesa.transform = CGAffineTransform(rotationAngle: 90 * .pi / 180.0)
        labelPizza.transform = CGAffineTransform(rotationAngle: 90 * .pi / 180.0)
        labelSushi.transform = CGAffineTransform(rotationAngle: 90 * .pi / 180.0)
        labelTacos.transform = CGAffineTransform(rotationAngle: 90 * .pi / 180.0)
    }
    
    //las funcione de estilo para cada booton
    
    func setupCircularButton(button: UIButton, imagen: String){
        button.layer.borderWidth = 1
        button.layer.masksToBounds = false
        //button.layer.borderColor = UIColor.clear.cgColor
        button.layer.cornerRadius = button.frame.height/3.0
        button.clipsToBounds = true
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        button.setImage(UIImage(named: imagen), for: .normal)
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
