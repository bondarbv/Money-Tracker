import SwiftUI

struct OnboardingScreen: View {
    @State var currentIndex = 0
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(OnboardingItem.all) { item in
                page(for: item)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .edgesIgnoringSafeArea(.vertical)
    }

    func page(for item: OnboardingItem) -> some View {
        VStack(spacing: 0) {
            Text(item.title)
            Text(item.subtitle)
        }
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
