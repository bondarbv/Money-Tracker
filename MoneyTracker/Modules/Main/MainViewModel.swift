import Foundation

final class MainViewModel: ObservableObject {
    @Published var mockTransactions: [Transaction] = [
        Transaction(amount: 100, type: .income, category: .health, date: Date(), note: "Note"),
        Transaction(amount: 200, type: .income, category: .groceries, date: Date(), note: "Note"),
        Transaction(amount: 100, type: .income, category: .uncategorized, date: Date(), note: "Note"),
        Transaction(amount: 200, type: .income, category: .groceries, date: Date(), note: "Note"),
        Transaction(amount: 100, type: .income, category: .health, date: Date(), note: "Note"),
        Transaction(amount: 200, type: .income, category: .groceries, date: Date(), note: "Note"),
        Transaction(amount: 100, type: .income, category: .health, date: Date(), note: "Note"),
        Transaction(amount: 200, type: .income, category: .groceries, date: Date(), note: "Note"),
        Transaction(amount: 100, type: .income, category: .health, date: Date(), note: "Note"),
        Transaction(amount: 200, type: .income, category: .groceries, date: Date(), note: "Note"),
    ]
}
