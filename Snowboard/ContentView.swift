//
//  ContentView.swift
//  Snowboard
//
//  Created by Putut Yusri Bahtiar on 21/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var showHome = false
    var body: some View {
        NavigationView {
            ZStack {
                Image("bg-landing")
                    .resizable()
                    .background(.gray)
                    .opacity(0.6)
                
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Get The\nSnowBoard\nExperience In\n A New Way")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding(.bottom, 50)
                        .fixedSize(horizontal: true, vertical: false)
                    
                    NavigationLink {
                        Home()
                    } label: {
                        Text("Get Started")
                            .frame(width: 200, height: 50)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    Spacer()
                }
            }.ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
