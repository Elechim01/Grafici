//
//  LineChart.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI
import SwiftUICharts

struct LineChart: View {
    var body: some View {
        LineView(data: [8,23,54,32,12,37,20,23,43],title: "Line chart",legend: "Stock")
            .padding()
    }
}

struct LineChart_Previews: PreviewProvider {
    static var previews: some View {
        LineChart()
    }
}
