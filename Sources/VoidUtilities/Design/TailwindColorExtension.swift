
//
//  TailwindColorExtension.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import SwiftUI

@available(iOS 13.0, *)
public extension SwiftUI.Color {
    // MARK: - Hex Code Color
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
    // MARK: - TailwindCSS Colors
    // Slate
    static let slate50 = SwiftUI.Color(hex: "#f8fafc")
    static let slate100 = SwiftUI.Color(hex: "#f1f5f9")
    static let slate200 = SwiftUI.Color(hex: "#e2e8f0")
    static let slate300 = SwiftUI.Color(hex: "#cbd5e1")
    static let slate400 = SwiftUI.Color(hex: "#94a3b8")
    static let slate500 = SwiftUI.Color(hex: "#64748b")
    static let slate600 = SwiftUI.Color(hex: "#475569")
    static let slate700 = SwiftUI.Color(hex: "#334155")
    static let slate800 = SwiftUI.Color(hex: "#1e293b")
    static let slate900 = SwiftUI.Color(hex: "#0f172a")
    static let slate950 = SwiftUI.Color(hex: "#020617")

    // Gray
    static let gray50 = SwiftUI.Color(hex: "#f9fafb")
    static let gray100 = SwiftUI.Color(hex: "#f3f4f6")
    static let gray200 = SwiftUI.Color(hex: "#e5e7eb")
    static let gray300 = SwiftUI.Color(hex: "#d1d5db")
    static let gray400 = SwiftUI.Color(hex: "#9ca3af")
    static let gray500 = SwiftUI.Color(hex: "#6b7280")
    static let gray600 = SwiftUI.Color(hex: "#4b5563")
    static let gray700 = SwiftUI.Color(hex: "#374151")
    static let gray800 = SwiftUI.Color(hex: "#1f2937")
    static let gray900 = SwiftUI.Color(hex: "#111827")
    static let gray950 = SwiftUI.Color(hex: "#030712")

    // Zinc
    static let zinc50 = SwiftUI.Color(hex: "#fafafa")
    static let zinc100 = SwiftUI.Color(hex: "#f4f4f5")
    static let zinc200 = SwiftUI.Color(hex: "#e4e4e7")
    static let zinc300 = SwiftUI.Color(hex: "#d4d4d8")
    static let zinc400 = SwiftUI.Color(hex: "#a1a1aa")
    static let zinc500 = SwiftUI.Color(hex: "#71717a")
    static let zinc600 = SwiftUI.Color(hex: "#52525b")
    static let zinc700 = SwiftUI.Color(hex: "#3f3f46")
    static let zinc800 = SwiftUI.Color(hex: "#27272a")
    static let zinc900 = SwiftUI.Color(hex: "#18181b")
    static let zinc950 = SwiftUI.Color(hex: "#09090b")

    // Neutral
    static let neutral50 = SwiftUI.Color(hex: "#fafafa")
    static let neutral100 = SwiftUI.Color(hex: "#f5f5f5")
    static let neutral200 = SwiftUI.Color(hex: "#e5e5e5")
    static let neutral300 = SwiftUI.Color(hex: "#d4d4d4")
    static let neutral400 = SwiftUI.Color(hex: "#a3a3a3")
    static let neutral500 = SwiftUI.Color(hex: "#737373")
    static let neutral600 = SwiftUI.Color(hex: "#525252")
    static let neutral700 = SwiftUI.Color(hex: "#404040")
    static let neutral800 = SwiftUI.Color(hex: "#262626")
    static let neutral900 = SwiftUI.Color(hex: "#171717")
    static let neutral950 = SwiftUI.Color(hex: "#0a0a0a")

    // Stone
    static let stone50 = SwiftUI.Color(hex: "#fafaf9")
    static let stone100 = SwiftUI.Color(hex: "#f5f5f4")
    static let stone200 = SwiftUI.Color(hex: "#e7e5e4")
    static let stone300 = SwiftUI.Color(hex: "#d6d3d1")
    static let stone400 = SwiftUI.Color(hex: "#a8a29e")
    static let stone500 = SwiftUI.Color(hex: "#78716c")
    static let stone600 = SwiftUI.Color(hex: "#57534e")
    static let stone700 = SwiftUI.Color(hex: "#44403c")
    static let stone800 = SwiftUI.Color(hex: "#292524")
    static let stone900 = SwiftUI.Color(hex: "#1c1917")
    static let stone950 = SwiftUI.Color(hex: "#0c0a09")

    // Red
    static let red50 = SwiftUI.Color(hex: "#fef2f2")
    static let red100 = SwiftUI.Color(hex: "#fee2e2")
    static let red200 = SwiftUI.Color(hex: "#fecaca")
    static let red300 = SwiftUI.Color(hex: "#fca5a5")
    static let red400 = SwiftUI.Color(hex: "#f87171")
    static let red500 = SwiftUI.Color(hex: "#ef4444")
    static let red600 = SwiftUI.Color(hex: "#dc2626")
    static let red700 = SwiftUI.Color(hex: "#b91c1c")
    static let red800 = SwiftUI.Color(hex: "#991b1b")
    static let red900 = SwiftUI.Color(hex: "#7f1d1d")
    static let red950 = SwiftUI.Color(hex: "#450a0a")

    // Orange
    static let orange50 = SwiftUI.Color(hex: "#fff7ed")
    static let orange100 = SwiftUI.Color(hex: "#ffedd5")
    static let orange200 = SwiftUI.Color(hex: "#fed7aa")
    static let orange300 = SwiftUI.Color(hex: "#fdba74")
    static let orange400 = SwiftUI.Color(hex: "#fb923c")
    static let orange500 = SwiftUI.Color(hex: "#f97316")
    static let orange600 = SwiftUI.Color(hex: "#ea580c")
    static let orange700 = SwiftUI.Color(hex: "#c2410c")
    static let orange800 = SwiftUI.Color(hex: "#9a3412")
    static let orange900 = SwiftUI.Color(hex: "#7c2d12")
    static let orange950 = SwiftUI.Color(hex: "#431407")

    // Amber
    static let amber50 = SwiftUI.Color(hex: "#fffbeb")
    static let amber100 = SwiftUI.Color(hex: "#fef3c7")
    static let amber200 = SwiftUI.Color(hex: "#fde68a")
    static let amber300 = SwiftUI.Color(hex: "#fcd34d")
    static let amber400 = SwiftUI.Color(hex: "#fbbf24")
    static let amber500 = SwiftUI.Color(hex: "#f59e0b")
    static let amber600 = SwiftUI.Color(hex: "#d97706")
    static let amber700 = SwiftUI.Color(hex: "#b45309")
    static let amber800 = SwiftUI.Color(hex: "#92400e")
    static let amber900 = SwiftUI.Color(hex: "#78350f")
    static let amber950 = SwiftUI.Color(hex: "#451a03")

    // Yellow
    static let yellow50 = SwiftUI.Color(hex: "#fefce8")
    static let yellow100 = SwiftUI.Color(hex: "#fef9c3")
    static let yellow200 = SwiftUI.Color(hex: "#fef08a")
    static let yellow300 = SwiftUI.Color(hex: "#fde047")
    static let yellow400 = SwiftUI.Color(hex: "#facc15")
    static let yellow500 = SwiftUI.Color(hex: "#eab308")
    static let yellow600 = SwiftUI.Color(hex: "#ca8a04")
    static let yellow700 = SwiftUI.Color(hex: "#a16207")
    static let yellow800 = SwiftUI.Color(hex: "#854d0e")
    static let yellow900 = SwiftUI.Color(hex: "#713f12")
    static let yellow950 = SwiftUI.Color(hex: "#422006")

    // Lime
    static let lime50 = SwiftUI.Color(hex: "#f7fee7")
    static let lime100 = SwiftUI.Color(hex: "#ecfccb")
    static let lime200 = SwiftUI.Color(hex: "#d9f99d")
    static let lime300 = SwiftUI.Color(hex: "#bef264")
    static let lime400 = SwiftUI.Color(hex: "#a3e635")
    static let lime500 = SwiftUI.Color(hex: "#84cc16")
    static let lime600 = SwiftUI.Color(hex: "#65a30d")
    static let lime700 = SwiftUI.Color(hex: "#4d7c0f")
    static let lime800 = SwiftUI.Color(hex: "#3f6212")
    static let lime900 = SwiftUI.Color(hex: "#365314")
    static let lime950 = SwiftUI.Color(hex: "#1a2e05")

    // Green
    static let green50 = SwiftUI.Color(hex: "#f0fdf4")
    static let green100 = SwiftUI.Color(hex: "#dcfce7")
    static let green200 = SwiftUI.Color(hex: "#bbf7d0")
    static let green300 = SwiftUI.Color(hex: "#86efac")
    static let green400 = SwiftUI.Color(hex: "#4ade80")
    static let green500 = SwiftUI.Color(hex: "#22c55e")
    static let green600 = SwiftUI.Color(hex: "#16a34a")
    static let green700 = SwiftUI.Color(hex: "#15803d")
    static let green800 = SwiftUI.Color(hex: "#166534")
    static let green900 = SwiftUI.Color(hex: "#14532d")
    static let green950 = SwiftUI.Color(hex: "#052e16")

    // Emerald
    static let emerald50 = SwiftUI.Color(hex: "#ecfdf5")
    static let emerald100 = SwiftUI.Color(hex: "#d1fae5")
    static let emerald200 = SwiftUI.Color(hex: "#a7f3d0")
    static let emerald300 = SwiftUI.Color(hex: "#6ee7b7")
    static let emerald400 = SwiftUI.Color(hex: "#34d399")
    static let emerald500 = SwiftUI.Color(hex: "#10b981")
    static let emerald600 = SwiftUI.Color(hex: "#059669")
    static let emerald700 = SwiftUI.Color(hex: "#047857")
    static let emerald800 = SwiftUI.Color(hex: "#065f46")
    static let emerald900 = SwiftUI.Color(hex: "#064e3b")
    static let emerald950 = SwiftUI.Color(hex: "#022c22")

    // Teal
    static let teal50 = SwiftUI.Color(hex: "#f0fdfa")
    static let teal100 = SwiftUI.Color(hex: "#ccfbf1")
    static let teal200 = SwiftUI.Color(hex: "#99f6e4")
    static let teal300 = SwiftUI.Color(hex: "#5eead4")
    static let teal400 = SwiftUI.Color(hex: "#2dd4bf")
    static let teal500 = SwiftUI.Color(hex: "#14b8a6")
    static let teal600 = SwiftUI.Color(hex: "#0d9488")
    static let teal700 = SwiftUI.Color(hex: "#0f766e")
    static let teal800 = SwiftUI.Color(hex: "#115e59")
    static let teal900 = SwiftUI.Color(hex: "#134e4a")
    static let teal950 = SwiftUI.Color(hex: "#042f2e")

    // Cyan
    static let cyan50 = SwiftUI.Color(hex: "#ecfeff")
    static let cyan100 = SwiftUI.Color(hex: "#cffafe")
    static let cyan200 = SwiftUI.Color(hex: "#a5f3fc")
    static let cyan300 = SwiftUI.Color(hex: "#67e8f9")
    static let cyan400 = SwiftUI.Color(hex: "#22d3ee")
    static let cyan500 = SwiftUI.Color(hex: "#06b6d4")
    static let cyan600 = SwiftUI.Color(hex: "#0891b2")
    static let cyan700 = SwiftUI.Color(hex: "#0e7490")
    static let cyan800 = SwiftUI.Color(hex: "#155e75")
    static let cyan900 = SwiftUI.Color(hex: "#164e63")
    static let cyan950 = SwiftUI.Color(hex: "#083344")

    // Sky
    static let sky50 = SwiftUI.Color(hex: "#f0f9ff")
    static let sky100 = SwiftUI.Color(hex: "#e0f2fe")
    static let sky200 = SwiftUI.Color(hex: "#bae6fd")
    static let sky300 = SwiftUI.Color(hex: "#7dd3fc")
    static let sky400 = SwiftUI.Color(hex: "#38bdf8")
    static let sky500 = SwiftUI.Color(hex: "#0ea5e9")
    static let sky600 = SwiftUI.Color(hex: "#0284c7")
    static let sky700 = SwiftUI.Color(hex: "#0369a1")
    static let sky800 = SwiftUI.Color(hex: "#075985")
    static let sky900 = SwiftUI.Color(hex: "#0c4a6e")
    static let sky950 = SwiftUI.Color(hex: "#082f49")

    // Blue
    static let blue50 = SwiftUI.Color(hex: "#eff6ff")
    static let blue100 = SwiftUI.Color(hex: "#dbeafe")
    static let blue200 = SwiftUI.Color(hex: "#bfdbfe")
    static let blue300 = SwiftUI.Color(hex: "#93c5fd")
    static let blue400 = SwiftUI.Color(hex: "#60a5fa")
    static let blue500 = SwiftUI.Color(hex: "#3b82f6")
    static let blue600 = SwiftUI.Color(hex: "#2563eb")
    static let blue700 = SwiftUI.Color(hex: "#1d4ed8")
    static let blue800 = SwiftUI.Color(hex: "#1e40af")
    static let blue900 = SwiftUI.Color(hex: "#1e3a8a")
    static let blue950 = SwiftUI.Color(hex: "#172554")

    // Indigo
    static let indigo50 = SwiftUI.Color(hex: "#eef2ff")
    static let indigo100 = SwiftUI.Color(hex: "#e0e7ff")
    static let indigo200 = SwiftUI.Color(hex: "#c7d2fe")
    static let indigo300 = SwiftUI.Color(hex: "#a5b4fc")
    static let indigo400 = SwiftUI.Color(hex: "#818cf8")
    static let indigo500 = SwiftUI.Color(hex: "#6366f1")
    static let indigo600 = SwiftUI.Color(hex: "#4f46e5")
    static let indigo700 = SwiftUI.Color(hex: "#4338ca")
    static let indigo800 = SwiftUI.Color(hex: "#3730a3")
    static let indigo900 = SwiftUI.Color(hex: "#312e81")
    static let indigo950 = SwiftUI.Color(hex: "#1e1b4b")

    // Violet
    static let violet50 = SwiftUI.Color(hex: "#f5f3ff")
    static let violet100 = SwiftUI.Color(hex: "#ede9fe")
    static let violet200 = SwiftUI.Color(hex: "#ddd6fe")
    static let violet300 = SwiftUI.Color(hex: "#c4b5fd")
    static let violet400 = SwiftUI.Color(hex: "#a78bfa")
    static let violet500 = SwiftUI.Color(hex: "#8b5cf6")
    static let violet600 = SwiftUI.Color(hex: "#7c3aed")
    static let violet700 = SwiftUI.Color(hex: "#6d28d9")
    static let violet800 = SwiftUI.Color(hex: "#5b21b6")
    static let violet900 = SwiftUI.Color(hex: "#4c1d95")
    static let violet950 = SwiftUI.Color(hex: "#2e1065")

    // Purple
    static let purple50 = SwiftUI.Color(hex: "#faf5ff")
    static let purple100 = SwiftUI.Color(hex: "#f3e8ff")
    static let purple200 = SwiftUI.Color(hex: "#e9d5ff")
    static let purple300 = SwiftUI.Color(hex: "#d8b4fe")
    static let purple400 = SwiftUI.Color(hex: "#c084fc")
    static let purple500 = SwiftUI.Color(hex: "#a855f7")
    static let purple600 = SwiftUI.Color(hex: "#9333ea")
    static let purple700 = SwiftUI.Color(hex: "#7e22ce")
    static let purple800 = SwiftUI.Color(hex: "#6b21a8")
    static let purple900 = SwiftUI.Color(hex: "#581c87")
    static let purple950 = SwiftUI.Color(hex: "#3b0764")

    // Fuchsia
    static let fuchsia50 = SwiftUI.Color(hex: "#fdf4ff")
    static let fuchsia100 = SwiftUI.Color(hex: "#fae8ff")
    static let fuchsia200 = SwiftUI.Color(hex: "#f5d0fe")
    static let fuchsia300 = SwiftUI.Color(hex: "#f0abfc")
    static let fuchsia400 = SwiftUI.Color(hex: "#e879f9")
    static let fuchsia500 = SwiftUI.Color(hex: "#d946ef")
    static let fuchsia600 = SwiftUI.Color(hex: "#c026d3")
    static let fuchsia700 = SwiftUI.Color(hex: "#a21caf")
    static let fuchsia800 = SwiftUI.Color(hex: "#86198f")
    static let fuchsia900 = SwiftUI.Color(hex: "#701a75")
    static let fuchsia950 = SwiftUI.Color(hex: "#4a044e")

    // Pink
    static let pink50 = SwiftUI.Color(hex: "#fdf2f8")
    static let pink100 = SwiftUI.Color(hex: "#fce7f3")
    static let pink200 = SwiftUI.Color(hex: "#fbcfe8")
    static let pink300 = SwiftUI.Color(hex: "#f9a8d4")
    static let pink400 = SwiftUI.Color(hex: "#f472b6")
    static let pink500 = SwiftUI.Color(hex: "#ec4899")
    static let pink600 = SwiftUI.Color(hex: "#db2777")
    static let pink700 = SwiftUI.Color(hex: "#be185d")
    static let pink800 = SwiftUI.Color(hex: "#9d174d")
    static let pink900 = SwiftUI.Color(hex: "#831843")
    static let pink950 = SwiftUI.Color(hex: "#500724")

    // Rose
    static let rose50 = SwiftUI.Color(hex: "#fff1f2")
    static let rose100 = SwiftUI.Color(hex: "#ffe4e6")
    static let rose200 = SwiftUI.Color(hex: "#fecdd3")
    static let rose300 = SwiftUI.Color(hex: "#fda4af")
    static let rose400 = SwiftUI.Color(hex: "#fb7185")
    static let rose500 = SwiftUI.Color(hex: "#f43f5e")
    static let rose600 = SwiftUI.Color(hex: "#e11d48")
    static let rose700 = SwiftUI.Color(hex: "#be123c")
    static let rose800 = SwiftUI.Color(hex: "#9f1239")
    static let rose900 = SwiftUI.Color(hex: "#881337")
    static let rose950 = SwiftUI.Color(hex: "#4c0519")
}
