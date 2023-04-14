//
//  LandmarkList.swift
//  IOSdemo1
//
//  Created by tmthien on 14/04/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
                   LandmarkRow(landmark: landmarks[0])
                   LandmarkRow(landmark: landmarks[1])
               }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
