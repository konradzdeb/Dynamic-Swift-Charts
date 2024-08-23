//
//  ContentView.swift
//  ChartWithPreferences
//
//  Created by Konrad on 22/08/2024.
//

import SwiftUI

struct ContentView: View {

    @StateObject var defaults = Defaults()
    @StateObject var dataGenerator = DataGenerator()
    @State private var showChartWindow = false

    var body: some View {
        VStack {
            List {
                ForEach(0..<defaults.sampleArray.count, id: \.self) { rowIndex in
                    Text("Entry: \(DataUtilities.dateFromTimestamp(defaults.sampleArray[rowIndex][0]))")
                }
            }
            HStack {
                HStack {
                    Text("Rows:")
                    TextField("rows", value: defaults.$rowCount, formatter: NumberFormatter())
                        .frame(width: 30)
                }
                Button("Add data") {
                    dataGenerator.count = defaults.rowCount
                    defaults.sampleArray.append(contentsOf: dataGenerator.data)
                }
                Button("Show chart") {
                    showChartWindow.toggle()
                }
                .sheet(isPresented: $showChartWindow) {
                    ChartView(defaults: defaults)
                }
                Button("Clean data") {
                    defaults.sampleArray.removeAll()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
