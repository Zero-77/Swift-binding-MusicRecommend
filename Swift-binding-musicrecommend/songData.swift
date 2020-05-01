//
//  songData.swift
//  Swift-binding-musicrecommend
//
//  Created by 07 Zhang on 2020/4/30.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import Foundation
class songData:ObservableObject{
    @Published var songs = [song]()
    @Published var number=0
}
