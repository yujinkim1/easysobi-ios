//
//  ChesterView.swift
//  EasySobi
//
//  Created by Yujin Kim on 2023-04-06.
//

import SwiftUI

struct ChesterView: View {
    
    @State var chester: Chester? = nil
    
    var body: some View {
        if chester != nil {
            ChesterView(chester: chester!)
        } else if chester == nil {
            CreateChesterView()
        }
    }
}

struct ChesterView_Previews: PreviewProvider {
    static var previews: some View {
        ChesterView()
    }
}
