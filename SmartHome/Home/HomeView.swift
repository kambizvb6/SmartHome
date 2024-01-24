//
//  HomeView.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-22.
//

import SwiftUI


struct HomeView: View {
    @State private var devices: [DevicesModel] = DeviceData.Devices

    private let gridItem: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 12){
                    HomeHeaderView()
                    
                    
                    LazyVGrid(columns: gridItem) {
                        ForEach(devices) { device in
                            SmartDevice(smartDevice: self.$devices[devices.firstIndex(of: device)!].isSelected, device: device)
                        }
                    }
                    .padding(.bottom, 8)
                    
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







