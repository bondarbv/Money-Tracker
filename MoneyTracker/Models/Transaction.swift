import Foundation

enum TransactionType {
    case income
    case expense
}

enum TransactionCategory: String {
    case uncategorized = "Uncategorized"
    case groceries = "Groceries"
    case health = "Health"
}

struct Transaction: Identifiable {
    let id = UUID()
    let amount: Double
    let type: TransactionType
    let category: TransactionCategory
    let date: Date
    let note: String
}
