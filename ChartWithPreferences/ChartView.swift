import SwiftUI
import Charts

struct ChartView: View {
    @ObservedObject var defaults: Defaults

    var body: some View {
        Chart(DataUtilities.calculateDailyAverages(from: defaults.sampleArray)) {
            BarMark(
                x: .value("Date", $0.date, unit: .day),
                y: .value("Average Value2", $0.averageValue2),
                width: .fixed(5.2)
            )
        }
        .chartYAxis {
            AxisMarks()
        }
        .chartXAxis {
            AxisMarks(values: .stride(by: .month)) {
                AxisGridLine()
                AxisTick()
                AxisValueLabel(format: .dateTime.month().day())
            }
        }
        .padding()
    }
}

#Preview {
    ChartView(defaults: Defaults())
}
