//
//  FoodOrganiserDao.swift
//  FoodOrganiserTwo
//
//  Created by Colman Marcus-Quinn on 21.01.17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit
import CoreData

class FoodOrganiserDao: NSObject {
    
    static let instance = FoodOrganiserDao()
    
    private override init() {} //This prevents others from using the default '()' initializer for this class.

    
    func getProducts() -> [Product] {
        
        var array = [Product]()
        
        do {
            
            guard let entityDiscription = NSEntityDescription.entity(forEntityName: "Product", in: PersistManager.instance.managedObjectContext) else {
                return array
            }
            
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>()
            fetchRequest.entity = entityDiscription
            
            let fetchedRecords = try PersistManager.instance.managedObjectContext.fetch(fetchRequest) as NSArray
            let marray = NSMutableArray.init(array: fetchedRecords)
            
            // FIXME: !
            array = marray as NSArray as! [Product]
            
        }
        catch {
            print(error.localizedDescription)
        }
        
        return array
    }
    
    func updateProductWithId(modifiedContact: Product) {
        
        let requestContactList = NSFetchRequest<Product>()
        let entityProduct = NSEntityDescription.entity(forEntityName: "Product", in: PersistManager.instance.managedObjectContext)
        requestContactList.predicate = NSPredicate(format: "id == %@", modifiedContact.id)
        requestContactList.entity = entityProduct
        
        let fetchedProduct = try? PersistManager.instance.managedObjectContext.fetch(requestContactList)
        
        if let fetchedProduct = fetchedProduct {
            
            let newProduct: Product
            
            if fetchedProduct.count != 0 {
                newProduct = fetchedProduct[0]

                
                PersistManager.instance.saveContext()
            }
            else {
                print("Product not found")
            }
        }
    }
    
    func deleteAllDataFromContacts() {
        
        let request = NSFetchRequest<Product>()
        let entity = NSEntityDescription.entity(forEntityName: "Product", in: PersistManager.instance.managedObjectContext)
        request.entity = entity
        
        do {
            let fetchedProducts = try PersistManager.instance.managedObjectContext.fetch(request)
            
            for product in fetchedProducts {
                PersistManager.instance.managedObjectContext.delete(product)
            }
            PersistManager.instance.saveContext()
        }
        catch {
            print(error.localizedDescription)
        }
    }
    
    

}
