//
//  SmartSpotlightView.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-23.
//

import SwiftUI

struct SmartDevice: View {
    @Binding var smartDevice: Bool
    let device: DevicesModel
   
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 158, height: 182)
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(smartDevice ? Color(device.gradientStart) : Color(uiColor: .white)), location: 0.00),
                        Gradient.Stop(color: Color(smartDevice ? Color(device.gradientEnd) : Color(uiColor: .white)), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                ).animation(smartDevice ? .easeIn.delay(0.1) : .easeInOut.delay(0.1), value: smartDevice)
            )
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.01), radius: 6, x: 0, y: 0)
            .overlay {
                VStack(alignment: .leading){
                    
                    Image(smartDevice ? device.iconOn : device.iconOff)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 38, height: 38)
                        .tint(.black)
                        .animation(smartDevice ? .easeIn.delay(0.2) : .easeInOut.delay(0.2), value: smartDevice)
                    
                    Text(device.titleOne)
                        .font(.system(size: 20))
                        .foregroundStyle(smartDevice ? Color(device.colorLight) : Color(device.colorDark))
                        .animation(smartDevice ? .easeIn.delay(0.3) : .easeInOut.delay(0.3), value: smartDevice)
                    
                    Text(device.titleTwo)
                        .font(.system(size: 20))
                        .foregroundStyle(smartDevice ? Color(device.colorLight) : Color(device.colorDark))
                        .animation(smartDevice ? .easeIn.delay(0.4) : .easeInOut.delay(0.4), value: smartDevice)
                    
                    Spacer()
                    
                    Toggle("", isOn: $smartDevice)
                        .tint(.white.opacity(0.5))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: -70)
                        .animation(smartDevice ? .easeIn.delay(0.5) : .easeInOut.delay(0.5), value: smartDevice)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
    }
}
