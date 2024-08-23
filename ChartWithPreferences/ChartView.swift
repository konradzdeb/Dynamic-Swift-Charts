import SwiftUI

struct ChartView: View {
    @ObservedObject var defaults: Defaults

    var body: some View {
        VStack {
            Text("Chart View")
                .font(.largeTitle)

            // Add your chart rendering logic here
            List {
                ForEach(0..<defaults.sampleArray.count, id: \.self) { rowIndex in
                    Text("Entry: \(defaults.sampleArray[rowIndex])")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ChartView(defaults: Defaults())
}
