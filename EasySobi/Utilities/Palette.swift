//
//  Palette.swift
//  EasySobi
//
//  Created by Yujin Kim on 2023/03/21.
//

import Foundation
import SwiftUI

struct Palette {
    
    //MARK: 디바이스가 Light 모드 일때 적용되는 색상 값을 포함하고 있는 클래스입니다.
    /**
     - Light 모드 일때 적용되는 색상 값을 포함하고 있는 클래스입니다.
    */
    class LightPainter {
        static let primary = CGColor(red: 0, green: 125, blue: 255, alpha: 0)
        static let onPrimary = CGColor(red: 0, green: 125, blue: 255, alpha: 0)
        static let primaryContainer = CGColor(red: 0, green: 125, blue: 255, alpha: 0)
    }
    
    //MARK: 디바이스가 Dark 모드 일때 적용되는 색상 값을 포함하고 있는 클래스입니다.
    class DarkPainter {
        static let primary = CGColor(red: 0, green: 125, blue: 255, alpha: 0)
        static let onPrimary = CGColor(red: 0, green: 125, blue: 255, alpha: 0)
        static let primaryContainer = CGColor(red: 0, green: 125, blue: 255, alpha: 0)
    }
}
