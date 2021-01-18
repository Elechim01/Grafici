//
//  CerchioColorato.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI


struct CerchioColorato: View {
    @State var temp : CGFloat = 0
    var body: some View {
        ZStack{
            Rectangle()
                .fill(colorMix(percent: Int(temp)))
                .opacity(0.7)
                .edgesIgnoringSafeArea(.all)
            TemperatureControlView(temperatureValue : $temp)
        }
    }
}
func colorMix(percent:Int) -> Color {
    let p = Double(percent)
    let tempB = (100.0-p)/100
    let b: Double = tempB < 0 ? 0 : tempB
    let tempR = 1+(p - 100.0)/100.0
    let r : Double = tempR < 0 ? 0 : tempR
    return Color.init(red: r, green: 0, blue: b)
}

struct CerchioColorato_Previews: PreviewProvider {
    static var previews: some View {
        CerchioColorato()
    }
}

//Creo la configurazione
struct Config {
    let minimumValue : CGFloat
    let maximumValue : CGFloat
    let totalValue : CGFloat
    let knobRadius: CGFloat
    let radius : CGFloat
}
