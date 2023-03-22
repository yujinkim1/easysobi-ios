//
//  Palette.swift
//  EasySobi
//
//  Created by Yujin Kim on 2023/03/21.
//

import Foundation
import SwiftUI

struct Palette {
    
    //MARK: LightPainter
    /**
     - 디바이스가 Light 모드 일때 적용되는 색상 값을 포함하고 있습니다.
    */
    class LightPainter {
        static let primary = Color(red: 38.0, green: 38.0, blue: 38.0)
        static let lightBlue = Color(red: 223.0, green: 224.0, blue: 226.0)
        static let blue = Color(red: 0.0, green: 122.0, blue: 255.0)
        static let darkBlue = Color(red: 35.0, green: 51.0, blue: 57.0)
        static let onLightBlue = Color(red: 38.0, green: 38.0, blue: 38.0)
        static let onBlue  = Color(red: 255.0, green: 255.0, blue: 255.0)
        static let onDarkBlue = Color(red: 255.0, green: 255.0, blue: 255.0)
        static let warning = Color(red: 255.0, green: 149.0, blue: 0.0)
        static let error = Color(red: 239.0, green: 83.0, blue: 80.0)
    }
    
    //MARK: DarkPainter
    /**
     - 디바이스가 Dark 모드 일때 적용되는 색상 값을 포함하고 있습니다.
     */
    class DarkPainter {
        //Reversed Light 색상을 작성해야함.
        static let primary = Color(red: 255.0, green: 255.0, blue: 255.0)
        static let secondary = Color(red: 153.0, green: 153.0, blue: 153.0)
        static let tertiary = Color(red: 86.0, green: 86.0, blue: 86.0)
        static let lightBlue = Color(red: 223.0, green: 224.0, blue: 226.0)
        static let blue = Color(red: 0.0, green: 122.0, blue: 255.0)
        static let darkBlue = Color(red: 35.0, green: 51.0, blue: 57.0)
        static let onLightBlue = Color(red: 38.0, green: 38.0, blue: 38.0)
        static let onBlue  = Color(red: 255.0, green: 255.0, blue: 255.0)
        static let onDarkBlue = Color(red: 255.0, green: 255.0, blue: 255.0)
        static let warning = Color(red: 255.0, green: 149.0, blue: 0.0)
        static let error = Color(red: 239.0, green: 83.0, blue: 80.0)
    }
}
