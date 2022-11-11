////
////  PokemonApp.swift
////  Pokemon_with_Network
////
////  Created by Maxim on 09.11.2022.
////
//
//import Foundation
//
//struct PokemonApp: Decodable {
//    let results: [Pokemon]
//
//}
//
//struct Pokemon: Decodable {
//    let name: String
//    let url: Character
//}
//
//struct Character: Decodable {
//    let sprites: Sprites
//}
//
//struct Sprites: Decodable {
//    let other: Front
//}
//struct Front: Decodable {
//    let front_default: String
//}
//
//class NetworkManager: ObservableObject {
//
//@Published var pokemons: [PokemonApp] = []
//
//
//func fetchPokemons(url: String, completion: @escaping([Pokemon]) -> Void) {
//    guard let url = URL(string: url) else { return }
//
//    let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
//        // извлекаем опциональную дату
//        guard let data = data else {
//            return
//        }
//        // преобразуем дату из 1001011010 для удобства сервера, модели
//        do {
//
////            let pokemons = try JSONDecoder().decode([PokemonApp].self, from: data)
//            DispatchQueue.main.async {
//                self?.pokemons = pokemons
//            }
//        } catch {
//            print(error)
//        }
//
//    }.resume()
//}
//}
