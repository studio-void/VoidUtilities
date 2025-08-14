//
//  CheckboxToggleStyleExtension.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
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

extension ToggleStyle where Self == CheckboxToggleStyle {
    static var checkboxstyle: CheckboxToggleStyle { CheckboxToggleStyle() }
}
