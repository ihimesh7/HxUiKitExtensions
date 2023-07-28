//
//  Constants.swift
//
//  Created by Himesh on 5/7/22.
//

import Foundation
import UIKit
// MARK: - Variable
var APP_UTILITES = AppUtilities.sharedInstance
public let userDefault = UserDefaults.standard
public let userKey = UserDefaults.Key.self
public var deviceId = UIDevice.current.identifierForVendor?.uuidString ?? "12345666"
public let appStoreLink = "itms-apps://apple.com/app/idxxxxx"
public let appStoreWebLink = "\nhttps://apps.apple.com/in/app/apple-store/idxxxxx"
public let updateLink = "http://itunes.apple.com/us/lookup?bundleId="
public var newVersion = Int()
public var currentVersion = Int()
public let updateAvailable = "Update Available v"
public var updateMsg = "You are using an older version of this app. Please update with this version"
public let updateNow = "Update Now"
public let remindMeLater = "Remind me later"
public let numbersOnly = "0123456789"
public let alphabetsOnly = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
// MARK: - View Controller
public enum AppStoryboard: String {
    case Main = "Main"
    case Home = "Home"
    case Profile = "Profile"
    case Alert = "Alert"
    case Onboarding = "Onboarding"
    case SignUp = "SignUp"
    case LogIn = "LogIn"
    case Tabbar = "Tabbar"
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
    func initalViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
}
//MARK: - Device
public class DeviceConstant: NSObject {
    static let is_iPad = UIUserInterfaceIdiom.pad
    static let is_iPhone = UIUserInterfaceIdiom.phone
    static let screenWidth = (UIScreen.main.bounds.size.width)
    static let screenHeight = (UIScreen.main.bounds.size.height)
    static let window = UIApplication.shared.windows.first!
    static let topPadding = window.safeAreaInsets.top
}

public class AppInfo: NSObject {
    static let AppName = Bundle.appName()
    static let AppVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String ?? "n/a"
    static let BundleID = Bundle.main.bundleIdentifier
}
//MARK: - Font
public class FontName: NSObject {
    static let poppinsBold = "Poppins-Bold"
    static let poppinsMedium = "Poppins-Medium"
    static let poppinsMediumItalic = "Poppins-MediumItalic"
    static let poppinsRegular = "Poppins-Regular"
    static let poppinsSemiBold = "Poppins-SemiBold"
}

public class FontSize: NSObject {
    static let fontRSize = 0.055 * DeviceConstant.screenWidth as CGFloat
}
