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


let restApiKey = "6fdc687c6c1fa1c6eac26a2db1889ae4"

let accessToken = "kakao_access_token"

@MainActor
func kakaoLogin() {
    Task {
        if UserApi.isKakaoTalkLoginAvailable() {
            await loginWithKakaoTalkAppHandler()
        } else {
            await loginWithKakaoAccount()
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
                let token = OAuthToken
            }
        }
    }
}

func loginWithKakaoAccountHandler() async -> Bool {
    await withCheckedContinuation {
        continuation in
        UserApi.shared.loginWithKakaoAccount{
            (OAuthToken, error) in
            if 
        }
    }
}

//MARK: Kakao Logout
@MainActor
func kakaoLogout() {
    Task {
        if await kakaoLogoutHandler() {
            try? Auth.shared.tokenManager.deleteToken()
            //MARK : 사용자 정보 삭제해야함, currentUser = nil
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



