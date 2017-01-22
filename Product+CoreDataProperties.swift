//
//  Product+CoreDataProperties.swift
//  FoodOrganiserTwo
//
//  Created by Colman Marcus-Quinn on 21.01.17.
//  Copyright © 2017 none. All rights reserved.
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product");
    }

    @NSManaged public var name: String?
    @NSManaged public var useByDate: NSDate?
    @NSManaged public var nutritionalInformation: String?
    @NSManaged public var image: NSData?
    @NSManaged public var id: Int16

}
