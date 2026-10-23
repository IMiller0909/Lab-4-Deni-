import SwiftUI

struct ContentView: View {
    @State private var hobby = ""

    var body: some View {
        ZStack {
            // Фон екрана
            Color.blue.opacity(0.08)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    Text("Про мене")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)

                    // Іконка на круглому фоні
                    ZStack {
                        Circle()
                            .fill(Color.blue.opacity(0.15))
                            .frame(width: 130, height: 130)

                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.blue)
                    }
                    .padding(.top, 10)

                    Text("Биков Денис")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    Text("Студент 2 курсу")
                        .font(.headline)
                        .foregroundColor(.secondary)

                    // Інформація про навчання
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Image(systemName: "graduationcap.fill")
                                .foregroundColor(.blue)
                                .font(.title2)

                            Text("Моє навчання")
                                .font(.headline)
                                .foregroundColor(.primary)

                            Spacer()
                        }

                        Text("Вивчаю програмування та створення застосунків для iOS.")
                            .font(.body)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(15)
                    .shadow(
                        color: .black.opacity(0.1),
                        radius: 4,
                        x: 0,
                        y: 2
                    )

                    // Поле введення
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Моє захоплення")
                            .font(.headline)
                            .foregroundColor(.blue)

                        TextField("Введіть своє захоплення", text: $hobby)
                            .textFieldStyle(.roundedBorder)
                            .font(.body)
                            .foregroundColor(.primary)
                            .padding(.vertical, 4)

                        Text("Тут можна написати, чим ви любите займатися.")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(15)
                }
                .padding(20)
                .frame(maxWidth: 600)
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    ContentView()
}
