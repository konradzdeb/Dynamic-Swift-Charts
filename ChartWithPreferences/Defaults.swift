//
//  Defaults.swift
//  ChartWithPreferences
//
//  Created by Konrad on 22/08/2024.
//

import SwiftUI

class Defaults: ObservableObject {
    @AppStorage("row_count") var rowCount: Int = 1
    @AppStorage("sample_array") var sampleArray: [[Double]] = [[0.0, 0.0, 0.0]]
}
