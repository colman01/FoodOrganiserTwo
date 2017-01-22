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
    
//    var selectedContact: Contact?
//    var userName: String?
    
    private override init() {} //This prevents others from using the default '()' initializer for this class.
    
    
//    func getEmployees() -> NSMutableArray {
//        
//        var array = NSMutableArray()
//        
//        do {
//            
//            guard let entityDiscription = NSEntityDescription.entity(forEntityName: "Employee", in: PersistManager.instance.managedObjectContext) else {
//                return array
//            }
//            
//            let fetchRequest = NSFetchRequest<NSFetchRequestResult>()
//            fetchRequest.entity = entityDiscription
//            
//            let fetchedRecords = try PersistManager.instance.managedObjectContext.fetch(fetchRequest) as NSArray
//            array = NSMutableArray.init(array: fetchedRecords)
//            
//        }
//        catch {
//            print(error.localizedDescription)
//        }
//        
//        return array
//    }
    
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
                
//                newPerson.email = modifiedContact.email
//                newPerson.emailAllowed = modifiedContact.emailAllowed
                
                PersistManager.instance.saveContext()
            }
            else {
                print("Product not found")
            }
            
            
        }
    }
    
//    func setFileUploads(contactId: String, json: String, isSend: Bool) {
//        
//        let requestFileUpload = NSFetchRequest<FileUpload>()
//        let entityFileUpload = NSEntityDescription.entity(forEntityName: "FileUpload", in: PersistManager.instance.managedObjectContext)
//        requestFileUpload.predicate = NSPredicate(format: "id == %@", contactId)
//        requestFileUpload.entity = entityFileUpload
//        
//        let fetchedList = try? PersistManager.instance.managedObjectContext.fetch(requestFileUpload)
//        
//        if let fetchedList = fetchedList {
//            
//            let newEntry: FileUpload
//            
//            if fetchedList.count == 0 {
//                
//                newEntry = NSEntityDescription.insertNewObject(forEntityName: "FileUpload", into: PersistManager.instance.managedObjectContext) as! FileUpload
//            }
//            else {
//                newEntry = fetchedList[0]
//            }
//            
//            newEntry.id         = contactId
//            newEntry.json       = json
//            newEntry.modified   = NSDate()
//            newEntry.isSend     = isSend
//            
//            if isSend {
//                PersistManager.instance.managedObjectContext.delete(newEntry)
//            }
//            PersistManager.instance.saveContext()
//        }
//    }
    
//    func getFileUploads() -> [FileUpload] {
//        
//        var array = [FileUpload]()
//        
//        do {
//            
//            guard let entityDiscription = NSEntityDescription.entity(forEntityName: "FileUpload", in: PersistManager.instance.managedObjectContext) else {
//                return array
//            }
//            
//            let fetchRequest = NSFetchRequest<NSFetchRequestResult>()
//            fetchRequest.predicate = NSPredicate(format: "isSend == %@", "false")
//            fetchRequest.entity = entityDiscription
//            
//            let fetchedRecords = try PersistManager.instance.managedObjectContext.fetch(fetchRequest) as NSArray
//            let marray = NSMutableArray.init(array: fetchedRecords)
//            
//            // FIXME: !
//            array = marray as NSArray as! [FileUpload]
//            
//        }
//        catch {
//            print(error.localizedDescription)
//        }
//        
//        return array
//        
//    }
    
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
