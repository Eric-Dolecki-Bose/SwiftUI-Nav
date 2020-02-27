//
//  ChannelView.swift
//  SwiftUI Nav
//
//  Created by Eric Dolecki on 2/26/20.
//  Copyright © 2020 Eric Dolecki. All rights reserved.
//

import SwiftUI

struct ChannelView: View {
    
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
    @EnvironmentObject var channelData: ChannelData
    
    var body: some View {
        NavigationView {
            VStack(alignment:.leading) {
                TextField("Channel Name", text: $channelData.channelName)
                Divider()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("Dismiss this VC")
                }
                Spacer()
                
            }.padding()
            .navigationBarTitle("Channel Data")
        }
    }
}
