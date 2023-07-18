import SwiftUI

struct OnboardingScreen: View {
    @State var currentIndex = 0

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(OnboardingItem.all, id: \.index) { item in
                page(for: item)
                    .tag(item.index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .edgesIgnoringSafeArea(.vertical)
        .onAppear{
            UIScrollView.appearance().bounces = false
        }
    }

    func page(for item: OnboardingItem) -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Text(item.title)
                .font(.openSansBold())
                .foregroundColor(.text)
                .kerning(0.5)
            Text(item.subtitle)
                .font(.openSansMedium())
                .foregroundColor(.text)
                .kerning(0.5)
                .frame(height: 66)
            button(isLast: item.isLast)
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 32)
        .background(Color.onboardingBackground)
    }

    func button(isLast: Bool) -> some View {
        Button {
            if isLast {
                print("Last")
            } else {
                withAnimation {
                    currentIndex += 1
                }
            }
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.onboardingButton)
                .frame(height: 50)
                .shadow(radius: 5, y: 10)
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
