import SwiftUI

struct OnboardingScreen: View {
    @EnvironmentObject var coordinator: Coordinator
    @State var currentIndex = 0

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(OnboardingItem.all, id: \.index) { item in
                page(for: item)
                    .tag(item.index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background(LinearGradient.background)
        .onAppear {
            UIScrollView.appearance().bounces = false
        }
    }

    func page(for item: OnboardingItem) -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Image(item.asset)
                .resizable()
                .scaledToFit()
            Spacer()
            Text(item.title)
                .font(.openSansBold())
                .foregroundColor(.text)
                .kerning(0.5)
            Text(item.subtitle)
                .font(.openSansMedium())
                .foregroundColor(.text)
                .kerning(0.5)
            button(isLast: item.isLast)
        }
        .padding(.horizontal)
        .padding(.bottom, 32)
    }

    func button(isLast: Bool) -> some View {
        Button {
            if isLast {
                coordinator.pushMainScreen()
                UserDefaults.standard.wasOnboardingScreenShown = true
            } else {
                withAnimation {
                    currentIndex += 1
                }
            }
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.onboardingButton)
                .frame(height: 50)
                .shadow(radius: 10, y: 10)
                .overlay {
                    Text(isLast ? "Start" : "Continue")
                        .font(.openSansSemiBold())
                        .foregroundColor(.buttonTitle)
                        .kerning(0.5)
                }
        }
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
