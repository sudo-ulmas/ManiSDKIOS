//
//  ViewController.swift
//  ManiSDKIOS
//
//  Created by sudo_ulmas on 07/26/2024.
//  Copyright (c) 2024 sudo_ulmas. All rights reserved.
//

import UIKit
import ManiSDK
import Flutter

class ViewController: UIViewController, HostAppApi {
    
    func cancelWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.sdk.removeFlutterViewController()
    }
    
    func authSuccessToken(_ token: Token, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.sdk.removeFlutterViewController()
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        print("hello")
        appDelegate.sdk.start(from: self, self)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.sdk.presentFlutterViewController(from: self)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

