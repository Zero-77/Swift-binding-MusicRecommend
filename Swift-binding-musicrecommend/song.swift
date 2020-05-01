//
//  song.swift
//  Swift-binding-musicrecommend
//
//  Created by 07 Zhang on 2020/4/30.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import Foundation
struct song: Identifiable{
    let id = UUID()
    var name:String
    var steppermood: Int
    var pickermood:String
    var pickersong:String
}

