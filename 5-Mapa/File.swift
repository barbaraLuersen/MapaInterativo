//
//  File.swift
//  5-Mapa
//
//  Created by Turma02-5 on 04/04/24.
//

import Foundation
import MapKit

struct Location: Identifiable{
    var id = UUID()
    var nome: String
    var cardinalidade: CLLocationCoordinate2D
    var bandeira: String
    var descricao: String
}

var locais = [
    Location(nome: "Argentina", cardinalidade: CLLocationCoordinate2D(latitude: -34.615796, longitude:-58.5156998), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Argentina-1111x740.jpg", descricao: "A Argentina, localizada no extremo sul do continente, é conhecida por sua rica cultura, tango, vastas paisagens, incluindo as espetaculares montanhas dos Andes e as vastas planícies da Pampa. É também famosa por sua carne bovina de alta qualidade e seus vinhos requintados."),
    Location(nome: "Brasil", cardinalidade: CLLocationCoordinate2D(latitude: -15.7217003, longitude: -48.1021713), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Brasil-1111x740.jpg", descricao: "O Brasil é o maior país da América Latina, conhecido por suas praias deslumbrantes, florestas tropicais da Amazônia, diversidade cultural, festas animadas como o Carnaval e cidades vibrantes como Rio de Janeiro e São Paulo."),
    Location(nome: "Bolívia", cardinalidade: CLLocationCoordinate2D(latitude: -16.5206962, longitude: -68.2064795), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Bol%C3%ADvia-1111x740.jpg", descricao: "A Bolívia é um país diversificado, com uma mistura de culturas indígenas e coloniais. Suas paisagens variam de altiplanos áridos a florestas tropicais exuberantes, incluindo o famoso Salar de Uyuni, o maior deserto de sal do mundo. Sua capital, La Paz, é uma das cidades mais altas do mundo."),
    Location(nome: "Chile", cardinalidade: CLLocationCoordinate2D(latitude: -33.4723517, longitude: -70.9594849), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Chile-1111x740.jpg", descricao: "Chile é um país alongado e estreito, com uma geografia diversificada que vai desde o deserto do Atacama, o mais árido do mundo, até as majestosas cordilheiras dos Andes. É famoso por sua produção de vinho de classe mundial, bem como por sua estabilidade política e econômica na região."),
    Location(nome: "Colômbia", cardinalidade: CLLocationCoordinate2D(latitude: 4.6482784, longitude: -74.2726211), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Colombia-1111x740.jpg", descricao: "A Colômbia é um país de contrastes, com praias caribenhas, florestas tropicais, montanhas imponentes e cidades vibrantes como Bogotá e Medellín. É conhecida por sua diversidade cultural, café de alta qualidade e a hospitalidade de seu povo."),
    Location(nome: "Equador", cardinalidade: CLLocationCoordinate2D(latitude: -0.1865936, longitude: -78.5953524), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Equador-1111x740.jpg", descricao: "O Equador é um país compacto, conhecido por sua localização na linha do equador, que lhe confere uma variedade única de ecossistemas, incluindo florestas tropicais, vulcões nevados e as Ilhas Galápagos, famosas por sua vida selvagem única."),
    Location(nome: "Guiana", cardinalidade: CLLocationCoordinate2D(latitude: 6.7876266, longitude: -58.1927333), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Guiana-1111x740.jpg", descricao: "A Guiana é um país situado na costa nordeste da América do Sul, conhecido por sua densa cobertura florestal, rios sinuosos e uma rica diversidade étnica. Suas vastas áreas de floresta tropical abrigam uma abundância de vida selvagem."),
    Location(nome: "Paraguai", cardinalidade: CLLocationCoordinate2D(latitude: -25.2968298, longitude: -57.6804909), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Paraguai-1-1111x740.jpg", descricao: "O Paraguai é um país sem litoral, conhecido por sua história colonial, cultura guarani e paisagens tranquilas. Embora seja um dos países mais pobres da América do Sul, sua população é conhecida por sua hospitalidade e força resiliente."),
    Location(nome: "Suriname", cardinalidade: CLLocationCoordinate2D(latitude: 4.656581, longitude: -55.7074127), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Suriname-1111x740.jpg", descricao: "O Suriname é um país pequeno e diversificado, com uma mistura de influências culturais, incluindo africanas, indianas, indígenas e europeias. Suas florestas tropicais abrigam uma vasta gama de espécies de plantas e animais."),
    Location(nome: "Uruguai", cardinalidade: CLLocationCoordinate2D(latitude: -34.834338, longitude: -56.3622822), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Uruguay-1111x740.jpg", descricao: "O Uruguai é um país conhecido por suas praias pitorescas, vinícolas charmosas e uma qualidade de vida elevada. É uma nação progressista, com uma forte tradição democrática e uma cultura rica em música, literatura e gastronomia."),
    Location(nome: "Venezuela", cardinalidade: CLLocationCoordinate2D(latitude: 10.4683494, longitude: -67.0551797), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Venezuela-1111x740.jpg", descricao: "A Venezuela é um país rico em recursos naturais, incluindo petróleo, mas enfrenta desafios econômicos e políticos. Suas paisagens variam de praias tropicais a montanhas cobertas de neve na Cordilheira dos Andes."),
    Location(nome: "Guiana Francesa", cardinalidade: CLLocationCoordinate2D(latitude: 5.0920646,longitude: -52.5434381), bandeira: "https://www.eccobandeiras.com.br/image/cache/catalog/antigas/Guiana%20Francesa-1111x740.jpg", descricao: "A Guiana Francesa é um território ultramarino da França, conhecido por sua biodiversidade exuberante e pela presença do Centro Espacial de Kourou, onde a Agência Espacial Europeia realiza lançamentos de foguetes. É lar de uma mistura única de culturas caribenhas e europeias.")
]

import Foundation

