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
                .font(.title)
                .foregroundColor(.text)
            Text(item.subtitle)
                .font(.title2)
                .foregroundColor(.text)
            button(isLast: item.isLast)
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
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
                .frame(height: 40)
        }
        .overlay {
            Text(isLast ? "Start" : "Continue")
                .foregroundColor(.white)
        }
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
