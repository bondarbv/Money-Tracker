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
        index: 0, title: "Spending tracker", subtitle: "Tracking all spending and receiving", isLast: false
    )
    static let secondPage =  OnboardingItem(
        index: 1, title: "Save your money", subtitle: "Analyze statistics and optimize spending", isLast: false
    )
    static let thirdPage =  OnboardingItem(
        index: 2, title: "Easy to use", subtitle: "Always know the current budget", isLast: true
    )
}
