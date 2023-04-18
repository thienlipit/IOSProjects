//
//  LandmarkList.swift
//  IOSdemo1
//
//  Created by tmthien on 14/04/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                                    LandmarkDetail(landmark: landmark)
                                } label: {
                                    LandmarkRow(landmark: landmark)
                                }
            }
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
