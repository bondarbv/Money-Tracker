import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var coordinator: Coordinator
    var transactions: [Transaction] = [Transaction(amount: 100, type: .income, category: .health, date: Date(), note: "Note")]

    var body: some View {
        VStack(spacing: 0) {
            ForEach(transactions) { transaction in
                Text(transaction.note)
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
