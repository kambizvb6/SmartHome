//
//  HomeHeaderView.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-22.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("4 Connected devices")
                    .foregroundStyle(.gray)
                
                Text("Bedroom")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top)
            .padding(.horizontal)
            
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20)
                        .tint(.gray)
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeHeaderView()
}
