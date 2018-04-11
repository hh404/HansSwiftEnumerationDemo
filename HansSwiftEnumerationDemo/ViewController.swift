//
//  ViewController.swift
//  HansSwiftEnumerationDemo
//
//  Created by hans on 2018/4/11.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

enum TestItem {
    case add(String,String,Int64)
    case delete(Int64)
    case modify(String,String)
}

class ViewController: UIViewController {
    var dataArray :[TestItem] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let add :TestItem = .add("title", "detail", 666)
            dataArray.append(add)
        
        let temp :TestItem = dataArray.first!
        switch temp {
        case .add(let a, let b, let c):
            print(a,b,c)
            break
        case .delete(let a):
            
            break
        case .modify(let a, let b):
            
            break
            
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //why class use let and struct use var??
        let userInfo = ShareManager.shared.userInfo
        var profileInfo = ShareManager.shared.profileInfo
        userInfo?.name = "Leo"
        profileInfo?.name = "Leo"
 
        withUnsafePointer(to: &profileInfo) { print("\($0)") }
        withUnsafePointer(to: &ShareManager.shared.profileInfo) { print("\($0)") }
        
        let a = 100
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getBufferAddress<T>(of array: [T]) -> String {
        return array.withUnsafeBufferPointer { buffer in
            return String(describing: buffer.baseAddress)
        }
    }
    
 

}

