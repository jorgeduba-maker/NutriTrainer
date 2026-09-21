import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView{
            DashboardView().tabItem{Label("Hoy", systemImage:"chart.bar.fill")}
            MealListView().tabItem{Label("Comidas", systemImage:"fork.knife")}
        }
    }
}
