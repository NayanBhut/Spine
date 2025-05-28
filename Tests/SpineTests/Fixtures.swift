//
//  FooResource.swift
//  Spine
//
//  Created by Ward van Teijlingen on 19-02-15.
//  Copyright (c) 2015 Ward van Teijlingen. All rights reserved.
//

import Foundation
import XCTest
import SwiftyJSON
@testable import Spine

class Foo: Resource {
    @objc dynamic var stringAttribute: String?
    @objc dynamic var integerAttribute: NSNumber?
    @objc dynamic var floatAttribute: NSNumber?
    @objc dynamic var booleanAttribute: NSNumber?
    @objc dynamic var nilAttribute: AnyObject?
    @objc dynamic var dateAttribute: Date?
    @objc dynamic var toOneAttribute: Bar?
    @objc dynamic var toManyAttribute: LinkedResourceCollection?
	
	override class var resourceType: String {
		return "foos"
	}
	
	override class var fields: [Field] {
		return fieldsFromDictionary([
			"stringAttribute": Attribute(),
			"integerAttribute": Attribute(),
			"floatAttribute": Attribute(),
			"booleanAttribute": BooleanAttribute(),
			"nilAttribute": Attribute(),
			"dateAttribute": DateAttribute(),
			"toOneAttribute": ToOneRelationship(Bar.self),
			"toManyAttribute": ToManyRelationship(Bar.self)
		])
	}
	
	required init() {
		super.init()
	}
	
	init(id: String) {
		super.init()
		self.id = id
	}

	required init(coder: NSCoder) {
		super.init(coder: coder)
	}
}

class Bar: Resource {
    @objc dynamic var barStringAttribute: String?
    @objc dynamic var barIntegerAttribute: NSNumber?
	
	override class var resourceType: String {
		return "bars"
	}
	
	override class var fields: [Field] {
		return fieldsFromDictionary([
			"barStringAttribute": Attribute(),
			"barIntegerAttribute": Attribute()
		])
	}
	
	required init() {
		super.init()
	}
	
	init(id: String) {
		super.init()
		self.id = id
	}

	required init(coder: NSCoder) {
		super.init(coder: coder)
	}
}
