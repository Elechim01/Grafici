//
//  BarChart.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI
import SwiftUICharts
struct BarChart: View {
    var body: some View {
        BarChartView(data: ChartData(values: [("2018 Q4", 63150),("2019 Q1",50900),("2019 Q2",77550),("2019 Q3",79600),("2019 Q4",92550)]),
                     title: "Sales",legend: "Quartely")
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}
