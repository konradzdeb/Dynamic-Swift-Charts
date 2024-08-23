import SwiftUI

struct DailyAverage: Identifiable {
    let id = UUID()  // Automatically generate a unique ID
    let date: Date
    let averageValue2: Double
}

struct DataUtilities {
    static func calculateDailyAverages(from data: [[Double]]) -> [DailyAverage] {
        let groupedData = Dictionary(grouping: data, by: { dateFromTimestamp($0[0]) })
        return groupedData.map { (date, entries) in
            let totalValue2 = entries.reduce(0) { $0 + $1[2] }
            let averageValue2 = totalValue2 / Double(entries.count)
            return DailyAverage(date: date, averageValue2: averageValue2)
        }
        .sorted { $0.date < $1.date }
    }

    static func dateFromTimestamp(_ timestamp: Double) -> Date {
        let date = Date(timeIntervalSince1970: timestamp)
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        return calendar.date(from: components) ?? date
    }

    static func dateFormattedString(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: date)
    }
}
