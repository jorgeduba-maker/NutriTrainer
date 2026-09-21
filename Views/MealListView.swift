import SwiftUI

struct AddMealView: View {
    @ObservedObject var vm: NutritionViewModel
    @State private var name = ""
    @State private var calories = ""
    @State private var protein = ""

    var body: some View {
        VStack(spacing: 15) {
            Text("Añadir comida").font(.headline)

            TextField("Nombre ej: Pollo", text: $name)
                .textFieldStyle(.roundedBorder)

            TextField("Kcal ej: 500", text: $calories)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)

            TextField("Proteina ej: 35", text: $protein)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)

            Button("Guardar") {
                let kcal = Double(calories) ?? 0
                let prot = Double(protein) ?? 0
                if !name.isEmpty {
                    vm.meals.append(FoodEntry(name: name, calories: kcal, protein: prot))
                    name = ""; calories = ""; protein = ""
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .disabled(name.isEmpty)
        }
        .padding()
    }
}
