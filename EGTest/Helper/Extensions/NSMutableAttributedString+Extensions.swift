//
//  NSMutableAttributedString+Extensions.swift
//  EGTest
//
//  Created by OLAJUWON BALOGUN on 28/02/2021.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    func setColor(color: UIColor, forText stringValue: String) {
       let range: NSRange = self.mutableString.range(of: stringValue, options: .caseInsensitive)
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
    }
}
