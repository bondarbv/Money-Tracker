import SwiftUI

extension Font {
    static func openSans(_ size: CGFloat) -> Font {
        custom("OpenSans-Regular", size: size)
    }

    static func openSansMedium(_ size: CGFloat) -> Font {
        custom("OpenSans-Medium", size: size)
    }

    static func openSansSemiBold(_ size: CGFloat) -> Font {
        custom("OpenSans-SemiBold", size: size)
    }

    static func openSansCustomBold(_ size: CGFloat) -> Font {
        custom("OpenSans-Bold", size: size)
    }
}
