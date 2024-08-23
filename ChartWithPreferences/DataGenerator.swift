//  DataGenerator.swift
//  SwiftChartsExamples
//
//  Created by Konrad on 25/07/2024.
//

import SwiftUI

class DataGenerator: ObservableObject {
    @Published var count: Int {
        didSet {
            generateData()
        }
    }
    @Published var data: [[Double]] = []

    init(count: Int = 10) {
        self.count = count
        generateData()
    }

    private func generateData() {
        var generatedData: [[Double]] = []

        for _ in 0..<count {
            // Random date within last year
            let timestamp = Date().timeIntervalSince1970 - TimeInterval.random(in: 0..<365*24*60*60)
            let value1 = Double.random(in: 1...1000)
            let value2 = round(Double.random(in: 1...3))

            generatedData.append([timestamp, value1, value2])
        }

        data = generatedData
    }
}
