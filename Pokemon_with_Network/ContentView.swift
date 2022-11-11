//
//  ContentView.swift
//  Pokemon_with_Network
//
//  Created by Maxim on 09.11.2022.
//

import SwiftUI

struct PokemobApp: Hashable, Codable {
    let results: Pokemon
}

struct Pokemon: Hashable, Codable {
    let name: String
    let url: String
}

class PokemonModel: ObservableObject {
    @Published var pokemons: [Pokemon] = []

    func fetchData() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon") else { return }

        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print("error")
                return
            }
            do {
                let pokemons = try JSONDecoder().decode([Pokemon].self, from: data)
            } catch {
                print("Bad news")
            }
        }.resume()
    }
}

struct ContentView: View {
    @StateObject private var pokemonsModel = PokemonModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(pokemonsModel.pokemons, id: \.self) { pokemon in
                    VStack {
                        Text(pokemon.name)
                    }
                }
            }
            .navigationTitle("Pokemons")
            .onAppear {
                pokemonsModel.fetchData()
            }

        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
