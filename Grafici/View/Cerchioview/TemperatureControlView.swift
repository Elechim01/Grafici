//
//  TemperatureControlView.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI

struct TemperatureControlView: View {
    @Binding var temperatureValue : CGFloat
    @State var precedente : CGFloat = 6.1
    @State var angelValue: CGFloat = 0.0
    let config = Config(minimumValue: 0.0,
                        maximumValue: 100.0,
                        totalValue: 100.0,
                        knobRadius: 15.0,
                        radius: 125.0)
    var body: some View {
        ZStack{
            Circle()
                .frame(width: config.radius * 2, height: config.radius * 2)
                .scaleEffect(1.2)
            Circle()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 3, lineCap: .butt, dash: [3,23.18]))
                .frame(width: config.radius * 2, height: config.radius*2)
            Circle()
                .trim(from: 0.0, to: temperatureValue/config.totalValue)
                .stroke(colorMix(percent: Int(temperatureValue)),lineWidth: 4)
                .frame(width: config.radius * 2, height: config.radius * 2)
                .rotationEffect(.degrees(-90))
            Circle()
                .fill(colorMix(percent: Int(temperatureValue)))
                .frame(width: config.knobRadius * 2, height: config.knobRadius * 2)
                .padding(10)
                .offset(y: -config.radius)
                .rotationEffect(Angle.degrees(Double(angelValue)))
                .gesture(DragGesture(minimumDistance: 0.0).onChanged({ value in
                    change(location: value.location)
                }))
            Text("\(String.init(format: "%0.f", temperatureValue))°")
                .font(.system(size:60))
                .foregroundColor(.white)
        }
    }

    private func change(location : CGPoint){
//    Creazione di un vettore form location point
        let vector = CGVector(dx: location.x, dy: location.y)
//    Getting angle in radiant need to subtract the knob radius and form the dy and dx
        let angle = atan2(vector.dy - (config.knobRadius + 10), vector.dx - (config.knobRadius + 10)) + .pi/2.0
//        Convert angle Range form(-pi,to pi) to (0 to 2pi)
        let fixedAngle = angle < 0.0 ? angle + 2.0 * .pi : angle
//        convert angle value to temperature value
        let value = fixedAngle / (2.0 * .pi) * config.totalValue
        
        print("precedente \(precedente), fixed angle \(fixedAngle)")
        if value >= config.minimumValue && value <= config.maximumValue{
            temperatureValue = value
            angelValue = fixedAngle * 180 / .pi // converting to degree
            print(fixedAngle)
//            print(angelValue)
        }
        self.precedente = fixedAngle
        
    
    }
}

struct TemperatureControlView_Previews: PreviewProvider {
    @State static var temp : CGFloat = 0.4
    static var previews: some View {
        TemperatureControlView(temperatureValue: $temp)
    }
}
