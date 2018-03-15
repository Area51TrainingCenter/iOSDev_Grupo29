//
//  Usuario+CoreDataProperties.swift
//  Clase5Mod2
//
//  Created by Alumno on 2/14/18.
//  Copyright © 2018 Area51 Training Center. All rights reserved.
//
//

import Foundation
import CoreData


extension Usuario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuario> {
        return NSFetchRequest<Usuario>(entityName: "Usuario")
    }

    @NSManaged public var fullname: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var platos: NSSet?

}

// MARK: Generated accessors for platos
extension Usuario {

    @objc(addPlatosObject:)
    @NSManaged public func addToPlatos(_ value: Plato)

    @objc(removePlatosObject:)
    @NSManaged public func removeFromPlatos(_ value: Plato)

    @objc(addPlatos:)
    @NSManaged public func addToPlatos(_ values: NSSet)

    @objc(removePlatos:)
    @NSManaged public func removeFromPlatos(_ values: NSSet)

}
