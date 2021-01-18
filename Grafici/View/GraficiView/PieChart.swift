//
//  PieChart.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI
import SwiftUICharts

struct PieChart: View {
    var body: some View {
        PieChartView(data: [23,54,32], title: "Title",legend: "Legendary")
    }
}

struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        PieChart()
    }
}
