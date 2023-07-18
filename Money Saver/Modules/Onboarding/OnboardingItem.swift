import Foundation

struct OnboardingItem {
    let index: Int
    let title: String
    let subtitle: String
    let isLast: Bool
}

extension OnboardingItem {
    static let all = [firstPage, secondPage, thirdPage]
}

extension OnboardingItem {
    static let firstPage =  OnboardingItem(
        index: 0, title: "First title", subtitle: "First subtitle First subtitle First subtitle", isLast: false
    )
    static let secondPage =  OnboardingItem(
        index: 1, title: "Second title", subtitle: "Second subtitle Second subtitle Second subtitle", isLast: false
    )
    static let thirdPage =  OnboardingItem(
        index: 2, title: "Third subtitle", subtitle: "Third subtitle Third subtitle Third subtitle", isLast: true
    )
}
