//
//  Tools.swift
//  Pods
//
//  Created by mortal on 16/3/30.
//
//


let SCWIDTH = UIScreen.mainScreen().bounds.width
let SCHEIGHT = UIScreen.mainScreen().bounds.height

//判断是否模拟器
struct Platform {
    static let isSimulator: Bool = {
        var isSim = false
        #if arch(i386) || arch(x86_64)
            isSim = true
        #endif
        return isSim
    }()
}


