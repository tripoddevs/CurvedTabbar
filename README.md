# CurvedTabBar

A customizable and beautiful curved notch tab bar for iOS, written in Swift and distributed via Swift Package Manager.

https://github.com/user-attachments/assets/c430a7b8-272e-4edb-9294-39e62c0d68d3

## Features

- Customizable curve and notch
- Smooth animations
- UIKit support (update as applicable)
- Lightweight and easy to integrate

## Requirements

- iOS 13.0+
- Swift 5.0+

## Installation

### Swift Package Manager

To integrate `CurveNotchTabBar` into your Xcode project:

1. Open your project in Xcode.
2. Go to **File > Add Packages...**
3. Enter the URL of this repository: `https://github.com/tripoddevs/CurvedTabbar.git`

## Example

```swift 

import CurvedTabbar

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomTabbar()
        setupViewControllers()
    }
    
    private func setupCustomTabbar() {
        let customTabBar = CurvedTabbar()
        customTabBar.centerButtonColor = UIColor.systemGreen
        customTabBar.buttonImage = UIImage(systemName: "camera.fill")
        customTabBar.tabbarColor = .white
        customTabBar.unselectedItemColor = .gray
        customTabBar.centerButtonActionHandler = {
            print("Center button tapped!")
        }
        
        // Replace system tabbar
        self.setValue(customTabBar, forKey: "tabBar")
    }
    
    private func setupViewControllers() {
        let home = GenerateQR(nibName: "GenerateQR", bundle: nil)
        home.view.backgroundColor = .white
        home.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "qrcode.viewfinder"), tag: 0)
        
        let profile = UIViewController()
        profile.view.backgroundColor = .white
        profile.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "gear"), tag: 2)
        
        // Place a dummy middle item to center other items around the button
        let dummy = UIViewController()
        dummy.tabBarItem = UITabBarItem(title: nil, image: nil, tag: 1)
        
        self.viewControllers = [home, dummy, profile]
    }
}

```
