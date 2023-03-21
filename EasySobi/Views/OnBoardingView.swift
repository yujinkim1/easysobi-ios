//
//  OnBoardingView.swift
//  EasySobi
//
//  Created by Yujin Kim on 2023/03/21.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    Text("보다 쉽게 관리하세요.")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .lineSpacing(10.0)
                    Spacer()
                    VStack(alignment: .center) {
                        Button{
                            //MARK: First Launch 토글 설정이 필요합니다.
                        } label: {
                            Text("시작하기")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        .padding()
                        .frame(width: 200, height: 55.0)
                        .background(Color.blue)
                        .cornerRadius(5.0)
                    }
                }
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
