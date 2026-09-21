import Foundation
import SwiftUI

struct FoodEntry: Identifiable, Codable {
    var id = UUID()
    var name: String
    var calories: Double
    var protein: Double
}

class NutritionViewModel: ObservableObject {
    @Published var meals: [FoodEntry] = []

    var totalKcal: Double {
        meals.reduce(0) { $0 + $1.calories }
    }
    var totalProtein: Double {
        meals.reduce(0) { $0 + $1.protein }
    }
}
