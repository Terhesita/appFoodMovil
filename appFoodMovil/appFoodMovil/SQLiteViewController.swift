//
//  SQLiteViewController.swift
//  appFoodMovil
//
//  Created by Guest User on 24/06/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

import UIKit
import SQLite

class SQLiteViewController: UIViewController {

    var database: Connection!
    let hamburguesas = Hamburguesas()
    
    var id: Int = 0
    
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtNombreHam: UITextField!
    @IBOutlet weak var txtIngredientes: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var btnInsertar: UIButton!
    
    @IBOutlet weak var btnActualizar: UIButton!
    
    @IBOutlet weak var btnEliminar: UIButton!
    
    @IBOutlet weak var btnLista: UIButton!
    
    @IBOutlet weak var btnCrear: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do{
            let docDirectorio = try FileManager.default.url( for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true )
            let fileURL = docDirectorio.appendingPathComponent("BDComida").appendingPathExtension("sqlite3")
            let database = try Connection( fileURL.path )
            self.database = database
            
        } catch {
            print( error )
        }
        
        /*var img = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        img.image = UIImage(named: "menu.jpeg")
        img.contentMode = .scaleToFill*/
        
        
        //self.view.backgroundColor = UIColor(patternImage: img.image!)
        
    }
    
    @IBAction func btnCrearTabla(_ sender: UIButton) {
        let createTab = hamburguesas.userTable.create{ (table) in
                   table.column( hamburguesas.id, primaryKey: true )
                   table.column( hamburguesas.nameH )
                   table.column( hamburguesas.ingH )
                   table.column( hamburguesas.precioH)
               }
                   
               do{
                   try database.run( createTab )
                   print( "tabla creada" )
               } catch {
                   print( error )
               }
    }
    
    
    @IBAction func btnInsertar(_ sender: UIButton) {
                var name = txtNombreHam.text!
                var ing = txtIngredientes.text!
                var pre = txtPrecio.text
               id += 1
        
                    if (name == "Hawaina" || name == "hawaina")
                    {
                        name.append("🍍")
                    }
        
                    if (name == "Doble" || name == "doble")
                    {
                        name.append("🥩🥩")
                    }
        
                    if (name == "Triple" || name == "triple")
                    {
                        name.append("🥩🥩🥩")
                    }
        
                    if (name == "Sencilla" || name == "sencilla")
                    {
                        name.append("🍔")
                    }
        
                    if (ing == "Aguacate" || ing == "aguacate")
                    {
                        ing.append("🥑")
                    }
        
                    if (ing == "Tocino" || ing == "tocino")
                    {
                        ing.append("🥓")
                    }
        
                    if (ing == "Piña" || ing == "piña")
                    {
                        ing.append("🍍")
                    }
        
                    if (ing == "Queso" || ing == "queso")
                    {
                        ing.append("🧀")
                    }
        
                    if (ing == "Tomate" || ing == "tomate")
                    {
                        ing.append("🍅")
                    }
        
                    if (ing == "Chile" || ing == "chile")
                    {
                        ing.append("🌶")
                    }
        
        
                    pre?.append("$")
        
            let insItem =  hamburguesas.userTable.insert( hamburguesas.nameH <- name, hamburguesas.ingH <- ing, hamburguesas.precioH <- pre!)
               
               do{
                   try database.run( insItem )
                   print( "insercion correcta" )
               } catch{
                   print( error )
               }
    }
    
    
    @IBAction func btnActualizar(_ sender: Any) {
        let idUser = Int (txtID.text!)
        let precio = txtPrecio.text
        let user = hamburguesas.userTable.filter( hamburguesas.id == idUser! )
        var name = txtNombreHam.text!
        var ingre = txtIngredientes.text!
        
        if (name == "Hawaina" || name == "hawaina")
                    {
                        name.append("🍍")
                    }
        
                    if (name == "Doble" || name == "doble")
                    {
                        name.append("🥩🥩")
                    }
        
                    if (name == "Triple" || name == "triple")
                    {
                        name.append("🥩🥩🥩")
                    }
        
                    if (name == "Sencilla" || name == "sencilla")
                    {
                        name.append("🍔")
                    }
        
                    if (ingre == "Aguacate" || ingre == "aguacate")
                    {
                        ingre.append("🥑")
                    }
        
                    if (ingre == "Tocino" || ingre == "tocino")
                    {
                        ingre.append("🥓")
                    }
        
                    if (ingre == "Piña" || ingre == "piña")
                    {
                        ingre.append("🍍")
                    }
        
                    if (ingre == "Queso" || ingre == "queso")
                    {
                        ingre.append("🧀")
                    }
        
                    if (ingre == "Tomate" || ingre == "tomate")
                    {
                        ingre.append("🍅")
                    }
        
                    if (ingre == "Chile" || ingre == "chile")
                    {
                        ingre.append("🌶")
                    }
        
        let updUsr = user.update( hamburguesas.precioH <- precio!, hamburguesas.nameH <- name,hamburguesas.ingH <- ingre)
        do{
            try database.run( updUsr )
            print( "actualizacion completa" )
        }catch{
            print( error )
        }
    }
    
    @IBAction func btnEliminar(_ sender: Any) {
            let usrId = Int(txtID.text!)
                
            let user = hamburguesas.userTable.filter( hamburguesas.id == usrId! )
            let dltUsr = user.delete()
            do{
                try database.run( dltUsr )
                print( "hamburguesa eliminada del menu" )
                id -= 1
            } catch {
                print( error )
            }
        }
    
    @IBAction func btnLista(_ sender: Any) {
        do{
              let showUsers = try database.prepare( hamburguesas.userTable )
                         
                         textView.text = ""
                         
                         var cadena = ""
                         for user in showUsers {
                             
                          cadena.append("\n id: \(user[hamburguesas.id]),\n nombre de la hamburguesa: \(user[hamburguesas.nameH]),\n ingredientes:  \(user[hamburguesas.ingH]),\n precio: \(user[hamburguesas.precioH])")
                             
                             textView.text = cadena
        
                             
                         }
                     } catch {
                         print( error )
                     }
    }
    
    }


