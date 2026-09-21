import SwiftUI
struct DashboardView: View {
    @EnvironmentObject var vm: NutritionViewModel
    let goal = MacroGoal()
    var body: some View {
        VStack(spacing:20){
            Text("NutriTrainer - 17 Pro Max").font(.title2.bold())
            HStack{
                VStack{ Text("\(Int(vm.totalCalories))").bold(); Text("Kcal")}
                Spacer()
                VStack{ Text("\(Int(vm.totalProtein))g").bold(); Text("Prote")}
                Spacer()
                VStack{ Text("\(Int(goal.calories-vm.totalCalories))").bold(); Text("Restante")}
            }.padding().background(.ultraThinMaterial).cornerRadius(16)
            Spacer()
        }.padding()
    }
}
