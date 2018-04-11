//
//  ShareManager.swift
//  HansSwiftEnumerationDemo
//
//  Created by hans on 2018/4/11.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

class ShareManager: NSObject {
    static let shared = ShareManager()
    var userInfo :UserInfo?
    var profileInfo :ProfleInfo?
}
