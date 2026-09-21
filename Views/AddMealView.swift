import SwiftUI

struct AddMealView: View {
    @ObservedObject var vm: NutritionViewModel
    @State private var name = ""
    @State private var calories = "500"
    @State private var protein = "35"

    var body: some View {
        VStack(spacing: 15) {
            Text("Añadir comida").font(.headline).bold()

            TextField("Nombre: Pollo + Arroz", text: $name)
                .textFieldStyle(.roundedBorder)

            HStack {
                TextField("Kcal", text: $calories)
                    .keyboardType(.numberPad)
                    .textFieldStyle(.roundedBorder)
                TextField("Prote", text: $protein)
                    .keyboardType(.numberPad)
                    .textFieldStyle(.roundedBorder)
            }

            Button("Guardar comida") {
                let kcal = Double(calories) ?? 0
                let prot = Double(protein) ?? 0
                if !name.isEmpty {
                    vm.meals.append(FoodEntry(name: name, calories: kcal, protein: prot))
                    name = ""
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .disabled(name.isEmpty)
        }
        .padding()
    }
}
