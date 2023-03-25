//
//  OnBoardingView.swift
//  EasySobi
//
//  Created by Yujin Kim on 2023/03/21.
//

import SwiftUI

struct OnBoardingView: View {
    
    var deviceWidth = UIScreen.main.bounds.width
    var deviceHeight = UIScreen.main.bounds.height
    
    var body: some View {
            ZStack {
                VStack(alignment: .center) {
                    Text("EASYSOBI")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .lineSpacing(10.0)
                    Text("보다 쉽게 관리하세요.")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .lineSpacing(10.0)
                        .padding()
                    VStack {
                        HStack {
                            Image(systemName: "plus.app.fill")
                                .imageScale(.large)
                                .foregroundColor(Color.blue)
                                .scaledToFit()
                            VStack(alignment: .leading) {
                                Text("등록하기")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .lineSpacing(10.0)
                                Text("먼저 식품명을 입력합니다.")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.leading)
                                    .lineSpacing(10.0)
                            }
                        }
                        HStack {
                            Image(systemName: "alarm.fill")
                                .foregroundColor(Color.blue)
                                .scaledToFit()
                                .imageScale(.medium)
                            Text("알림을 설정하기")
                        }
                        HStack {
                            Image(systemName: "plus.app.fill")
                                .foregroundColor(Color.blue)
                                .scaledToFit()
                                .imageScale(.medium)
                            Text("공유하기")
                        }
                        Text("그 외에도 여러 기능이 포함되어 있습니다.")
                    }.frame(width: deviceWidth / 1, height: deviceWidth / 1)
                    
                    VStack(alignment: .leading) {
                        Button {
                            //MARK: Apple 로그인 버튼을 구현해야합니다.
                        } label: {
                            HStack(alignment: .center){
                                Image("AppleLogoWhite")
                                    .resizable()
                                    .frame(width: 40.0, height: 45.0)
                                Text("Apple로 로그인")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.regular)
                                    .font(.title3)
                                    .padding([.leading, .trailing], 25.0)
                            }
                        }
                    }
                    .frame(width: 250.0, height: 60.0)
                    .background(Color.black)
                    .cornerRadius(10.0)
                    VStack(alignment: .center) {
                        Button {
                            //MARK: 카카오 로그인 버튼을 구현해야합니다.
                            
                        } label: {
                            Image("KakaoLoginKo")
                                .resizable()
                                .frame(width: 250.0, height: 60.0)
                        }
                        .padding()
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
