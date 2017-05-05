//  Copyright © 2017 Marco Pace. All rights reserved.

protocol StorageContainerType {
    var myStorage: StorageType.Type? { get }
}

protocol Valutable {
    var value: Int { get }
}

extension Valutable where Self: CarType & StorageContainerType {
    var value: Int {
        let realStorage = myStorage ?? Storage.self
        return realStorage.getValue(brand: brand)
    }
}
