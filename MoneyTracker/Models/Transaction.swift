import Foundation

enum TransactionType {
    case income
    case expense
}

enum TransactionCategory {
    case uncategorized
    case groceries
    case health
}

struct Transaction: Identifiable {
    let id = UUID()
    let amount: Double
    let type: TransactionType
    let category: TransactionCategory
    let date: Date
    let note: String
}
