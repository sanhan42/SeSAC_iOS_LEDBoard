//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by 한상민 on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(1)
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // youtube 예시 - 사용자 프리미엄 결제 했다면 play, 그렇지 않으면 일시정지
        // 금융앱 - 백그라운드 상태일 때, 정보 보호를 위해 화면 가리기
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        // youtube 예시 - 프리미엄 사용안하는 유저에게 결제 유도 팝업.
        // kakaotalk 예시 - 비밀번호 요구
    }

    // MARK: UISceneSession Lifecycle
    @available (iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    @available (iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

