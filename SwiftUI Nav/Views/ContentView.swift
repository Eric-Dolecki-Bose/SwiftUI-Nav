//
//  ContentView.swift
//  SwiftUI Nav
//
//  Created by Eric Dolecki on 2/26/20.
//  Copyright © 2020 Eric Dolecki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSecondVC = false
    @ObservedObject var videoIdea = VideoIdea()
    @EnvironmentObject var channelData: ChannelData
    
    var body: some View {
        NavigationView{
            VStack(alignment:.leading)
            {
                Text(videoIdea.title)
                    .font(.title)
                
                Text(videoIdea.contentIdea)
                    .font(.subheadline)
                
                Divider()
                
                // This only fires first time in Simulator. Works on device.
                NavigationLink(destination: ChannelView()){
                    Text("Add Channel ->")
                }.padding(.bottom, 10)
                
                Button(action: {
                    self.showingSecondVC.toggle()
                }){
                    Text("Add New Idea")
                }.sheet(isPresented: $showingSecondVC){
                    SecondView(videoTitle: self.$videoIdea.title, videoContent: self.$videoIdea.contentIdea).environmentObject(self.channelData)
                }
                Spacer()
            }.padding()
                .navigationBarTitle("\(channelData.channelName)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
