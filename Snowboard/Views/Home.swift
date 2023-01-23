//
//  Home.swift
//  Snowboard
//
//  Created by Putut Yusri Bahtiar on 21/01/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Good Morning!")
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            HStack {
                Text("David Franklin")
                    .font(.title2)
                    .padding(.leading)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "bag.fill")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .padding(.trailing)
                
                Image("profile")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .padding(.trailing)
            }
            HStack {
                TabView  {
                    Image("ski-google")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding()
                    
                    Image("ski-google")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding()
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .frame(height: 200)
            }
            
            HStack {
                Text("Events")
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding()
                Text("Statistics")
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(15)
                    .padding()
            }
            
            Spacer()
    
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
