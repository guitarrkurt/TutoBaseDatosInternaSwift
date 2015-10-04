//
//  ModelManager.swift
//  DataBaseDemo
//
//  Created by Krupa-iMac on 05/08/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

import UIKit

let sharedInstance = ModelManager()

class ModelManager: NSObject {
    
    var database: FMDatabase? = nil
    
    class var instance: ModelManager {
        sharedInstance.database = FMDatabase(path: Util.getPath("Empresa.sqlite"))
        var path = Util.getPath("Empresa.sqlite")
        println("path : \(path)")
        return sharedInstance
    }

    func selectFromEmpleados() -> NSMutableArray{
        var array: NSMutableArray = NSMutableArray()
        
        sharedInstance.database!.open()
        var query = "SELECT * FROM empleados"
        var resultSet: FMResultSet! = sharedInstance.database!.executeQuery(query, withArgumentsInArray: nil)
        //Vaciar al array el resultSet
        if(resultSet != nil){
            while resultSet.next(){
                var instancia: empleados = empleados()
                
                instancia.IdE = (resultSet.stringForColumn("IdE") as NSString).integerValue
                instancia.NombreE = resultSet.stringForColumn("NombreE")//Esta devolviendo un String
                instancia.SalarioE = (resultSet.stringForColumn("SalarioE") as NSString).floatValue
                
                array.addObject(instancia)
            }
        }else{
            println("Ocurrio un problema al hacer la consulta")
        }
        return array
    }

}
