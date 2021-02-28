//
//  Model.swift
//  EGTest
//
//  Created by OLAJUWON BALOGUN on 28/02/2021.
//

import RealmSwift

class RateList: Object {
    var rates = List<CurrencyRate>()
}

class CurrencyRate: Object {
    @objc dynamic var code = ""
    @objc dynamic var rate = 0.0
}
