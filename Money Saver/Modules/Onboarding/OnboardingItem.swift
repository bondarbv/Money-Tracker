import Foundation

struct OnboardingItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
}

extension OnboardingItem {
    static let all = [firstPage, secondPage, thirdPage]
}

extension OnboardingItem {
    static let firstPage =  OnboardingItem(title: "first", subtitle: "first")
    static let secondPage =  OnboardingItem(title: "second", subtitle: "second")
    static let thirdPage =  OnboardingItem(title: "third", subtitle: "third")
}
