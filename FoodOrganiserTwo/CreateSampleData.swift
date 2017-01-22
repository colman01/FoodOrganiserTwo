//
//  createSampleData.swift
//  FoodOrganiserTwo
//
//  Created by Colman Marcus-Quinn on 22.01.17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit
import CoreData

class CreateSampleData: NSObject {
    override init() {
    }
    
    func createSomeData(){
        let newProduct: Product
        let requestProductList = NSFetchRequest<Product>()
        let entityProduct = NSEntityDescription.entity(forEntityName: "Product", in: PersistManager.instance.managedObjectContext)
//        requestProductList.predicate = NSPredicate(format: "id == %@", 1)
        requestProductList.entity = entityProduct
        
        let fetchedProduct = try? PersistManager.instance.managedObjectContext.fetch(requestProductList)
        
        if let fetchedPerson = fetchedProduct {
            
            if fetchedPerson.count > 0 {
                return
            }
            
//            if fetchedPerson.count == 0 {
//                
//            }
//            else {
//                newProduct = fetchedPerson[0]
//            }
            
            newProduct = NSEntityDescription.insertNewObject(forEntityName: "Product", into: PersistManager.instance.managedObjectContext) as! Product
            
            newProduct.name = "Milram Sahne"
            newProduct.nutritionalInformation = "Fatty Product"
            newProduct.useByDate = Date() as NSDate?
            newProduct.image = UIImagePNGRepresentation(UIImage(named:"milk_splash.jpg")!)! as NSData?
            
            let product2: Product
            
            product2 = NSEntityDescription.insertNewObject(forEntityName: "Product", into: PersistManager.instance.managedObjectContext) as! Product
            
            product2.name = "Kidney Bohne"
            product2.nutritionalInformation = "High in Protien"
            product2.useByDate = Date() as NSDate?
            product2.image = UIImagePNGRepresentation(UIImage(named:"kidney_beans.jpg")!)! as NSData?
            
            PersistManager.instance.saveContext()
        }
    }

}
