//
//  DateExtension.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import Foundation

@available(iOS 15.0, *)
public extension Date {
    func timeAgoDisplay() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}

@available(iOS 15.0, *)
public extension DateFormatter {
    static let ymdDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 MM월 dd일"  // Custom date format
        return formatter
    }()
}

@available(iOS 15.0, *)
public extension DateFormatter {
    static let ymdhmDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy. MM. dd. HH:mm"
        return formatter
    }()
}

@available(iOS 15.0, *)
public extension Date {
    // Convert Date to String with the format YYYY.MM.DD hh:mm:ss
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd HH:mm:ss"
        return formatter.string(from: self)
    }
}

@available(iOS 15.0, *)
public extension Date {
    // Convert Date to String with the format YYYY.MM.DD hh:mm:ss
    func toHMString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: self)
    }
    
    func toYMDString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd"
        return formatter.string(from: self)
    }
}

@available(iOS 15.0, *)
public extension String {
    // Convert String to Date with the format YYYY.MM.DD hh:mm:ss
    func toDate() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd HH:mm:ss"
        return formatter.date(from: self)
    }
}

@available(iOS 15.0, *)
public func calcTimeDiffString(from: String, to: String) -> String {
    let fromDate = from.toDate()!
    let toDate = to.toDate()!
    let diff = Int(toDate.timeIntervalSince(fromDate))
    // to 00:00:00 (02d) format
    let diffStr = String(format: "%02d:%02d:%02d", Int(diff / 3600), Int((diff / 60) % 60), Int(diff % 60))
    return diffStr
}

@available(iOS 15.0, *)
public func calcTimeDiffDate(from: Date, to: Date) -> String {
    let diff = Int(to.timeIntervalSince(from))
    // to 00:00:00 (02d) format
    let diffStr = String(format: "%02d:%02d:%02d", Int(diff / 3600), Int((diff / 60) % 60), Int(diff % 60))
    return diffStr
}
