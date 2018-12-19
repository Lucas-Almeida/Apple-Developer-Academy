//
//  Car+CoreDataProperties.swift
//  Foundation_CoreData
//
//  Created by Lucas Pinheiro Almeida on 30/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }

    @NSManaged public var model: String?

}
