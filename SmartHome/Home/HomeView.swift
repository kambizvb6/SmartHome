//
//  HomeView.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-22.
//

import SwiftUI

struct HomeView: View {
    @State private var smartSpotligh = true
    @State private var smartSpeaker = true
    @State private var smartTV = false
    @State private var smartAirConditioner = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 12){
                    HomeHeaderView()
                    
                    HStack(spacing: 12) {
                        SmartSpotlightView(smartDevice: $smartSpotligh)
                        
                        
                        
                        SmartSpeakersView(smartDevice: $smartSpeaker)
                        
                    }
                    
                    
                    
                    HStack(spacing: 12) {
                        SmartTVView(smartDevice: $smartTV)
                        
                        
                        
                        SmartAirConditioner(smartDevice: $smartAirConditioner)
                    }
                    .padding(.bottom, 12)
                    
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .background(Color("BoxColor"))
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
            }
            
            Spacer()
            
            .navigationTitle("Devices")
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Text("Hi,Kambiz")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                }
//                ToolbarItem(placement: .topBarTrailing) {
//                    Image("user")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 40, height: 40)
//                }
//                
//            }
        }
    }
}

#Preview {
    HomeView()
}







