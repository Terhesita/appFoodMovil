//
//  Hamburguesas.swift
//  appFoodMovil
//
//  Created by Guest User on 24/06/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

import UIKit
import SQLite

class Hamburguesas: NSObject {

        let userTable = Table("hamburguesas")
        
        var id = Expression<Int>("id")
        var nameH = Expression<String>("nombre")
        var ingH = Expression<String>("ingrediente")
        var precioH = Expression<String>("precio")
    
      override init() {
          
      }
    
    init( id:Expression<Int>, nameH:Expression<String>, ingH:Expression<String>, precioH:Expression<String> ) {
            self.id = id
            self.nameH = nameH
            self.ingH = ingH
            self.precioH = precioH
        }
    
}
