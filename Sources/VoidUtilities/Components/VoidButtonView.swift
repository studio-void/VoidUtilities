//
//  VoidButtonView.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import SwiftUI

@available(iOS 16.0, *)
public struct VoidButtonView: View {
    @State public var bgColor: Color
    @State public var fgColor: Color
    @State public var fontWt: Font.Weight
    @State public var fontSize: CGFloat
    @State public var icon: String
    @State public var label: String
    @State public var isLoading: Bool
    @State public var height: CGFloat
    
    public init(bgColor: Color = .blue, fgColor: Color = .white, fontWt: Font.Weight = .medium, fontSize: CGFloat = 20, icon: String = "", label: String = "Button", isLoading: Bool = false, height: CGFloat = 50) {
        self._bgColor = State(initialValue: bgColor)
        self._fgColor = State(initialValue: fgColor)
        self._fontWt = State(initialValue: fontWt)
        self._fontSize = State(initialValue: fontSize)
        self._icon = State(initialValue: icon)
        self._label = State(initialValue: label)
        self._isLoading = State(initialValue: isLoading)
        self._height = State(initialValue: height)
    }
    
    public var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(isLoading ? bgColor.opacity(0.8) : bgColor)
                .frame(height: height)
            HStack{
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: fgColor))
                } else {
                    Image(systemName: icon)
                        .foregroundColor(fgColor)
                        .fontWeight(fontWt)
                        .font(.system(size: fontSize))
                    Text(label)
                        .foregroundColor(fgColor)
                        .fontWeight(fontWt)
                        .font(.system(size: fontSize))
                }
            }
        }
    }
}
