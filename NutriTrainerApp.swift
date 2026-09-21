import SwiftUI
@main
struct NutriTrainerApp: App {
    @StateObject var vm = NutritionViewModel()
    var body: some Scene { WindowGroup{ ContentView().environmentObject(vm) } }
}
