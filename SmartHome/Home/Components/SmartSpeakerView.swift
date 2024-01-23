//
//  SmartSpeakerView.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-23.
//

import SwiftUI

struct SmartSpeakersView: View {
    @Binding var smartDevice: Bool
    
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 158, height: 182)
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(smartDevice ? .smartSpeakerStart : Color(uiColor: .white)), location: 0.00),
                        Gradient.Stop(color: Color(smartDevice ? .smartSpeakerEnd : Color(uiColor: .white)), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                ).animation(smartDevice ? .easeIn.delay(0.1) : .easeInOut.delay(0.1), value: smartDevice)
            )
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.02), radius: 6, x: 0, y: 0)
            .overlay {
                VStack(alignment: .leading){
                    
                    Image(smartDevice ? "SmartSpeacker" : "SmartSpeackerDark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 38, height: 38)
                        .tint(.black)
                        .animation(smartDevice ? .easeIn.delay(0.2) : .easeInOut.delay(0.2), value: smartDevice)
                    
                    Text("Smart")
                        .font(.system(size: 20))
                        .foregroundStyle(smartDevice ? .white : Color("OffColor"))
                        .animation(smartDevice ? .easeIn.delay(0.3) : .easeInOut.delay(0.3), value: smartDevice)
                    
                    Text("Speaker")
                        .font(.system(size: 20))
                        .foregroundStyle(smartDevice ? .white : Color("OffColor"))
                        .animation(smartDevice ? .easeIn.delay(0.4) : .easeInOut.delay(0.4), value: smartDevice)
                    
                    Spacer()
                    
                    Toggle("", isOn: $smartDevice)
                        .tint(.white.opacity(0.5))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: -70)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
    }
}
