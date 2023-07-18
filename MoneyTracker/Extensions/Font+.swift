import SwiftUI

extension Font {
    static func openSansRegular(_ size: CGFloat = 12) -> Font {
        custom("OpenSans-Regular", size: size)
    }

    static func openSansMedium(_ size: CGFloat = 16) -> Font {
        custom("OpenSans-Medium", size: size)
    }

    static func openSansSemiBold(_ size: CGFloat = 24) -> Font {
        custom("OpenSans-SemiBold", size: size)
    }

    static func openSansBold(_ size: CGFloat = 32) -> Font {
        custom("OpenSans-Bold", size: size)
    }
}
