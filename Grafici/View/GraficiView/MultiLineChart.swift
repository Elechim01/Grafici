//
//  MultiLineChart.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI
import SwiftUICharts

struct MultiLineChart: View {
    var body: some View {
//        MultiLineChartView(data: [
//        ([8,32,11,23,40,28],GradientColors.green),
//        ([90,99,78,111,70,60,77],GradientColors.purple),
//            ([34,56,72,38,43,100,50],GradientColors.orngPink)
//        ],title: "Title")
        MultiLineChartView(data: [([8,32,11,23,40,28], GradientColors.green), ([90,99,78,111,70,60,77], GradientColors.purple), ([34,56,72,38,43,100,50], GradientColors.orngPink)], title: "Title")
    }
}

struct MultiLineChart_Previews: PreviewProvider {
    static var previews: some View {
        MultiLineChart()
    }
}
