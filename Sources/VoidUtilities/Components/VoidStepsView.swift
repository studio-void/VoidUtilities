//
//  VoidStepsView.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import SwiftUI

@available(iOS 16.0, *)
public struct GodingStepsView: View {
    @State public var currentStep: Int
    @State public var totalSteps: Int
    @State public var tintColor: Color
    @State public var disabledOpacity: Double
    
    public init(currentStep: Int, totalSteps: Int, tintColor: Color, disabledOpacity: Double = 0.3) {
        self._currentStep = State(initialValue: currentStep)
        self._totalSteps = State(initialValue: totalSteps)
        self._tintColor = State(initialValue: tintColor)
        self._disabledOpacity = State(initialValue: disabledOpacity)
    }

    public var body: some View {
        HStack {
            ForEach(1...totalSteps, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 10)
                    .foregroundColor(index <= currentStep ? tintColor : tintColor.opacity(disabledOpacity))
                    .animation(.easeInOut, value: currentStep)
            }
        }
    }
}
