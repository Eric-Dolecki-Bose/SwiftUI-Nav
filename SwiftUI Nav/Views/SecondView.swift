//
//  SecondView.swift
//  SwiftUI Nav
//
//  Created by Eric Dolecki on 2/26/20.
//  Copyright © 2020 Eric Dolecki. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
    
    @Binding var videoTitle: String
    @Binding var videoContent: String
    @EnvironmentObject var channelData: ChannelData
    
    var body: some View {
        NavigationView {
            VStack(alignment:.leading) {
                TextField("Video title", text: $videoTitle)
                TextField("Video content", text: $videoContent)
                Divider()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("Dismiss this VC")
                }
                Spacer()
                
            }.padding()
                .navigationBarTitle("\(channelData.channelName) Video")
        }
    }
}
