//
//  ContentView.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CerchioColorato()
//        NavigationView{
//            VStack(spacing:20){
//                NavigationLink(
//                    destination: LineChart() ,
//                    label: {
//                        SelectView(text: "See Line Chart",color:.pink)
//                    })
//                NavigationLink(
//                    destination: BarChart(),
//                    label: {
//                        SelectView(text: "See Bar Graph",color:.red)
//
//                    })
//                NavigationLink(
//                    destination: PieChart(),
//                    label: {
//                        SelectView(text: "See Pie Chart",color:.orange)
//                    })
//                NavigationLink(
//                    destination: MultiLineChart(),
//                    label: {
//                        SelectView(text: "See Multiline Chart",color:.yellow)
//                    })
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
