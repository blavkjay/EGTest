//
//  CustomFont.swift
//  EGTest
//
//  Created by OLAJUWON BALOGUN on 28/02/2021.
//

import Foundation
import UIKit

enum MontserratAlternatesFont: String {
    case bold = "MontserratAlternates-Bold"
    case semiBold = "MontserratAlternates-SemiBold"
    case regular = "MontserratAlternates-Regular"
    case medium = "MontserratAlternates-Medium"
}


class CustomFont {
    static func of(type: MontserratAlternatesFont, size: Int) -> UIFont {
        return UIFont(name: type.rawValue, size: CGFloat(size)) ?? UIFont()
    }
}
