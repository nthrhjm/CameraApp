//
//  ContentView.swift
//  CameraApp
//
//  Created by nhajime on 2020/07/06.
//  Copyright © 2020 nhajime. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var image: Image?
    @State var isPicking = false
    var body: some View {
        ZStack {
            VStack {
                VStack { //撮影した写真を表示するコード
                    Spacer()
                    image?
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                HStack { //カメラボタンを表示するコード
                    Spacer()
                    Button(action: { self.isPicking = true }) {
                        Image(systemName: "camera")
                        Text("カメラ")
                    }.padding()
                }
            }
            //カメラ画面を表示するコード
            if isPicking {
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
