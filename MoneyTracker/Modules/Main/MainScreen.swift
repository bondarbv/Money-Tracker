import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var coordinator: Coordinator
    @ObservedObject var viewModel = MainViewModel()

    var body: some View {
            VStack(spacing: 25) {
                Text("Test")
                ScrollView {
                    ForEach(viewModel.mockTransactions) { transaction in
                        HStack {
                            Image(transaction.category.rawValue)
                                .resizable()
                                .scaledToFit()
                            Text(transaction.category.rawValue)
                                .font(.openSansRegular(20))
                            Spacer()
                            Text("-\(Int(transaction.amount)) USD")
                                .font(.openSansRegular(20))
                        }
                        .frame(height: 40)
                        .padding(.horizontal)
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 1)
                    }
                }
        }
        .background(LinearGradient.background)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
