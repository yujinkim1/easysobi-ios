//
//  LoginHandler.swift
//  EasySobi
//
//  Created by Yujin Kim on 2023-04-09.
//

import Foundation
import Alamofire
import KakaoSDKAuth
import KakaoSDKUser

class Login: ObservableObject {
    //let restApiKey = "6fdc687c6c1fa1c6eac26a2db1889ae4"
    @Published var currentUser: User?
    @Published var accessToken: OAuthToken?
    
    @MainActor
    func kakaoLogin() {
        Task {
            if UserApi.isKakaoTalkLoginAvailable() {
                await loginWithKakaoTalkAppHandler()
            } else {
                await loginWithKakaoAccountHandler()
            }
        }
    }
    
    func getUserData() {
        UserApi.shared.me() {(user, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            else {
                // kakaoUserData = user
                // isLogined = true
            }
        }
    }

    func loginWithKakaoTalkAppHandler() async -> Bool {
        await withCheckedContinuation {
            continuation in
            UserApi.shared.loginWithKakaoTalk {
                (OAuthToken, error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                } else {
                    print("loginWithKakaoTalk() is success.")
                    _ = OAuthToken
                    // 로그인 성공 시 currentUser와 accessToken 프로퍼티에 값을 할당
                    // currentUser = User
                    // accessToken = token
                    continuation.resume(returning: true)
                }
            }
        }
    }

    func loginWithKakaoAccountHandler() async -> Bool {
        await withCheckedContinuation {
            continuation in
            UserApi.shared.loginWithKakaoAccount{
                (OAuthToken, error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                } else {
                    print("loginWithKakaoAccountHandler() is success.")
                    let token = OAuthToken
                }
            }
        }
    }

    //MARK: Kakao Logout
    @MainActor
    func kakaoLogout() {
        Task {
            if await kakaoLogoutHandler() {
                //MARK : 사용자 정보 삭제해야함, try? AuthApi, currentUser = nil
            }
        }
    }

    func kakaoLogoutHandler() async -> Bool {
        await withCheckedContinuation {
            continuation in UserApi.shared.logout {
                (error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                } else {
                    print("kakaoLogout() success.")
                    continuation.resume(returning: true)
                }
            }
        }
    }
}



