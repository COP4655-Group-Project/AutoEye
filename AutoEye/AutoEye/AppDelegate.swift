//
//  AppDelegate.swift
//  AutoEye
//
//  Created by Harshini Oruganti on 3/22/23.
//

import UIKit
import UserNotifications
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        ParseSwift.initialize(applicationId: "FAJRXteEnYzXSW3j1JSjetMah2nwdaBzlweZVV5e",
                              clientKey: "n9QrXm9kXW4zxQg8X6q5wt9kLIdSq6h1m1QElV4x",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)
        // Testing back4app stuff
        var score = GameScore()
        score.playerName = "Kingsley"
        score.points = 13

        // Save to your server asynchronously (preferred way) - Performs work on background queue and returns to specified callbackQueue.
        // If no callbackQueue is specified it returns to main queue.
        score.save { result in
            switch result {
            case .success(let savedScore):
                print("✅ Parse Object SAVED!: Player: \(String(describing: savedScore.playerName)), Score: \(String(describing: savedScore.points))")
            case .failure(let error):
                assertionFailure("Error saving: \(error)")
            }
        }
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

// Test to make sure our database works
struct GameScore: ParseObject {
    // required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    var playerName: String?
    var points: Int?
}

// Sample Usage
//
// var score = GameScore()
// score.playerName = "Kingsley"
// score.points = 13

// OR Implement a custom initializer (OPTIONAL i.e. NOT REQUIRED)
// It's recommended to place custom initializers in an extension
// to preserve the memberwise initializer.
extension GameScore {

    // Use the init to set your custom properties
    // NOTE: Properties in custom init are NOT required to be optional
    init(playerName: String, points: Int) {
        self.playerName = playerName
        self.points = points
    }
}

// Sample Usage
//
// let score = GameScore(playerName: "Kingsley", points: 13)

