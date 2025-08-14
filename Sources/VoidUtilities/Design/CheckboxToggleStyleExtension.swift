//
//  CheckboxToggleStyleExtension.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CheckboxToggleStyle: ToggleStyle {
    public func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                configuration.label
            }
        }
    }
}

@available(iOS 13.0, *)
public extension ToggleStyle where Self == CheckboxToggleStyle {
    static var checkboxstyle: CheckboxToggleStyle { CheckboxToggleStyle() }
}
