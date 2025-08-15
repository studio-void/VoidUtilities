//
//  CheckboxToggleStyleExtension.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CircleCheckToggleStyle: ToggleStyle {
    public func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            HStack {
                Image(
                    systemName: configuration.isOn
                        ? "checkmark.circle.fill" : "circle"
                )
                configuration.label
            }
        }
    }
}

@available(iOS 13.0, *)
extension ToggleStyle where Self == CircleCheckToggleStyle {
    public static var circlecheckstyle: CircleCheckToggleStyle {
        CircleCheckToggleStyle()
    }
}
