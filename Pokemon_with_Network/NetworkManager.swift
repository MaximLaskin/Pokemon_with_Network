////
////  NetworkManager.swift
////  Pokemon_with_Network
////
////  Created by Maxim on 09.11.2022.
////
//
//import Foundation
//
//enum NetworkError: Error {
//    case invalidURL
//    case noData
//    case decodingError
//}
//
//enum List: String {
//    case url = "https://pokeapi.co/api/v2/pokemon"
//}
//
////class NetworkManager: ObservableObject {
////
////    @Published var pokemons: [Pokemon] = []
////
////    static let shared = NetworkManager()
//
//
////    func fetchPokemons(url: String, completion: @escaping([Pokemon]) -> Void) {
////        guard let url = URL(string: url) else { return }
////
////        URLSession.shared.dataTask(with: url) { data, _, error in
////            // извлекаем опциональную дату
////            guard let data = data else {
////                return
////            }
////            // преобразуем дату из 1001011010 для удобства сервера, модели
////            do {
////                let decoder = JSONDecoder()
////                let pokemonApp = try decoder.decode(PokemonApp.self, from: data)
////                completion(pokemonApp.results)
////
////                DispatchQueue.main.async {
////                    self.pokemons = pokemons
////                }
////            } catch {
////                print(error)
////            }
////
////
////
////        }.resume()
////    }
//
////
////    private init() {}
////}
