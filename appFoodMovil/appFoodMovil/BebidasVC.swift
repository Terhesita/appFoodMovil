//
//  BebidasVC.swift
//  appFoodMovil
//
//  Created by Guest User on 23/06/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

import UIKit

class BebidasVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var pickerView1: UIPickerView!
    
    let bebidas = ["REFRESCO","AGUAS FRESCAS","PIÑA COLADA","FRAPPE","JUGO VERDE","AGUA JAMAICA"]
    
    let imgBebidas = ["imgPicker1","imgPicker2","imgPicker3","imgPicker4","imgPicker5","imgPicker6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pickerView1.dataSource = self
        pickerView1.delegate = self
        
        let imagenBeb = UIImage(named: imgBebidas[0])
        imagen.image = imagenBeb
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bebidas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return bebidas[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            let imagenes = UIImage(named: imgBebidas[0])
            imagen?.image = imagenes
            break
        case 1:
            let imagenes = UIImage(named: imgBebidas[1])
            imagen?.image = imagenes
            break
        case 2:
            let imagenes = UIImage(named: imgBebidas[2])
            imagen?.image = imagenes
            break
        case 3:
            let imagenes = UIImage(named: imgBebidas[3])
            imagen?.image = imagenes
            break
        case 4:
            let imagenes = UIImage(named: imgBebidas[4])
            imagen?.image = imagenes
            break
        case 5:
            let imagenes = UIImage(named: imgBebidas[5])
            imagen?.image = imagenes
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
