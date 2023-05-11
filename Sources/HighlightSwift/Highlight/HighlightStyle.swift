import SwiftUI

public struct HighlightStyle {
    let selectorsText: String
    let backgroundHex: String
    
    public init(_ name: Name, colorScheme: ColorScheme = .light) {
        switch colorScheme {
        case .light:
            self.selectorsText = String(describing: HighlightStyleSelectors.light(name))
            self.backgroundHex = String(describing: HighlightStyleBackground.light(name))
        case .dark:
            self.selectorsText = String(describing: HighlightStyleSelectors.dark(name))
            self.backgroundHex = String(describing: HighlightStyleBackground.dark(name))
        @unknown default:
            self.selectorsText = ""
            self.backgroundHex = ""
        }
    }
    
    public enum Name: String, CaseIterable, Identifiable, Equatable {
        public var id: String {
            rawValue
        }
        
        case a11y = "a11y"
        case atomOne = "Atom One"
        case classic = "Classic"
        case edge = "Edge"
        case github = "GitHub"
        case google = "Google"
        case gradient = "Gradient"
        case grayscale = "Grayscale"
        case harmonic16 = "Harmonic16"
        case heetch = "Heetch"
        case horizon = "Horizon"
        case humanoid = "Humanoid"
        case ia = "iA"
        case isblEditor = "ISBL Editor"
        case kimbie = "Kimbie"
        case nnfx = "NNFX"
        case pandaSyntax = "Panda Syntax"
        case papercolor = "Papercolor"
        case paraiso = "Paraiso"
        case qtcreator = "QT Creator"
        case silk = "Silk"
        case solarFlare = "Solar Flare"
        case solarized = "Solarized"
        case stackoverflow = "StackOverflow"
        case standard = "Standard"
        case summerfruit = "Summerfruit"
        case synthMidnightTerminal = "Synth Midnight Terminal"
        case tokyoNight = "Tokyo Night"
        case unikitty = "Unikitty"
        case xcode = "Xcode"
    }
}
