//
//  Double+.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/10/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
