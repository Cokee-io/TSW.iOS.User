//
//  Extensions.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/02.
//

import SwiftUI

extension UIColor {
  @nonobjc class var primary: UIColor {
    return UIColor(red: 113.0 / 255.0, green: 204.0 / 255.0, blue: 152.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var greenyBlue: UIColor {
    return UIColor(red: 77.0 / 255.0, green: 169.0 / 255.0, blue: 153.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var darkMint: UIColor {
    return UIColor(red: 89.0 / 255.0, green: 192.0 / 255.0, blue: 119.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var orange: UIColor {
    return UIColor(red: 1.0, green: 149.0 / 255.0, blue: 0.0, alpha: 1.0)
  }
  @nonobjc class var bloodOrange: UIColor {
    return UIColor(red: 1.0, green: 80.0 / 255.0, blue: 0.0, alpha: 1.0)
  }
  @nonobjc class var pumpkinOrange: UIColor {
    return UIColor(red: 1.0, green: 122.0 / 255.0, blue: 0.0, alpha: 1.0)
  }
  @nonobjc class var secondaryVariant: UIColor {
    return UIColor(red: 109.0 / 255.0, green: 117.0 / 255.0, blue: 215.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var bluePurple47: UIColor {
    return UIColor(red: 60.0 / 255.0, green: 46.0 / 255.0, blue: 204.0 / 255.0, alpha: 0.47)
  }
  @nonobjc class var bluePurple: UIColor {
    return UIColor(red: 60.0 / 255.0, green: 46.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var error: UIColor {
    return UIColor(red: 235.0 / 255.0, green: 103.0 / 255.0, blue: 81.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var graybaseGray1: UIColor {
    return UIColor(white: 102.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var graybaseGray2: UIColor {
    return UIColor(red: 142.0 / 255.0, green: 142.0 / 255.0, blue: 147.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var graybaseGray3: UIColor {
    return UIColor(red: 167.0 / 255.0, green: 172.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var graybaseGray4: UIColor {
    return UIColor(red: 237.0 / 255.0, green: 240.0 / 255.0, blue: 242.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var backgroundsWhite: UIColor {
    return UIColor(white: 1.0, alpha: 1.0)
  }
  @nonobjc class var paleGrey: UIColor {
    return UIColor(red: 244.0 / 255.0, green: 246.0 / 255.0, blue: 248.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var backgroundsLightBeige: UIColor {
    return UIColor(white: 243.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var backgroundsLightBlue: UIColor {
    return UIColor(red: 236.0 / 255.0, green: 243.0 / 255.0, blue: 249.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var black1: UIColor {
    return UIColor(white: 0.0, alpha: 1.0)
  }
  @nonobjc class var black2: UIColor {
    return UIColor(white: 51.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var blackSecondary: UIColor {
    return UIColor(red: 71.0 / 255.0, green: 78.0 / 255.0, blue: 86.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var blue: UIColor {
    return UIColor(red: 48.0 / 255.0, green: 111.0 / 255.0, blue: 225.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var backgroundsOutline: UIColor {
    return UIColor(red: 234.0 / 255.0, green: 235.0 / 255.0, blue: 239.0 / 255.0, alpha: 1.0)
  }
  @nonobjc class var backgroundsOutline2: UIColor {
    return UIColor(red: 223.0 / 255.0, green: 227.0 / 255.0, blue: 234.0 / 255.0, alpha: 1.0)
  }
}

public extension Font {
  init(_ uiFont: UIFont) {
    self = Font(uiFont as CTFont)
  }
}

extension UIFont {
  class var largeTitle: UIFont {
    return UIFont(name: "NotoSansKR-Bold", size: 34.0)!
  }
  class var title1: UIFont {
    return UIFont(name: "NotoSansKR-Medium", size: 28.0)!
  }
  class var title2: UIFont {
    return UIFont(name: "NotoSansKR-Medium", size: 22.0)!
  }
  class var title3: UIFont {
    return UIFont(name: "NotoSansKR-Medium", size: 20.0)!
  }
  class var headline: UIFont {
    return UIFont(name: "NotoSansKR-Medium", size: 17.0)!
  }
  class var body: UIFont {
    return UIFont(name: "NotoSansKR-Regular", size: 17.0)!
  }
  class var subheadMedium: UIFont {
    return UIFont(name: "NotoSansKR-Medium", size: 15.0)!
  }
  class var subheadRegular: UIFont {
    return UIFont(name: "NotoSansKR-Regular", size: 15.0)!
  }
  class var caption1: UIFont {
    return UIFont(name: "NotoSansKR-Regular", size: 12.0)!
  }
  class var caption2: UIFont {
    return UIFont(name: "NotoSansKR-Medium", size: 10.0)!
  }
}
