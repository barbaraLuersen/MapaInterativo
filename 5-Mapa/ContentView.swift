//
//  ContentView.swift
//  5-Mapa
//
//  Created by Turma02-5 on 04/04/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        ))
    
    @State private var mostrarSheet = false
    
    @State var auxiliar: Location = Location(nome: "", cardinalidade: CLLocationCoordinate2D(latitude: 0, longitude: 0), bandeira: "", descricao: "")
    
    @State private var localSelecionado = CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253)
    
    var body: some View {
        
        ZStack{
            VStack{
               
                Map(position: $position) {
                    ForEach(locais) { location in
                        Annotation(location.nome, coordinate: location.cardinalidade) {
                            ZStack {
                                Image(systemName: "pin.fill").font(.largeTitle)
                            }.onTapGesture {
                               
                                auxiliar = location
                                
                                print(location)
                                print(auxiliar)
                                mostrarSheet = true
                            }
                            
                        }
                    }
                }
            }
            VStack{
                VStack{
                    Text("Mapa América Latina").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundStyle(Color.black)
                    Text(auxiliar.nome).font(.title3).bold().foregroundStyle(Color.black)
                    
                }.frame(width: 400, height: 80).background(.white).opacity(0.8)
               
                
                Spacer()
                ScrollView (.horizontal){
                    
                    HStack{
                        ForEach(locais) { loc in
                            AsyncImage(url: URL(string: loc.bandeira)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            } placeholder: {
                                ProgressView()
                            }
                            .onTapGesture {
                                auxiliar = loc
                                print(loc)
                                position = MapCameraPosition.region(MKCoordinateRegion(
                                    center: loc.cardinalidade,
                                    span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
                                ))
                            }
                            .padding()
                            .frame(width: 150, height: 100)
                        }
                        
                    }
                    .sheet(isPresented: $mostrarSheet) {
                        
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color.white)
                            
                            VStack{
                                Spacer()
                                VStack{
                                    AsyncImage(url: URL(string: auxiliar.bandeira)){ image in
                                        image
                                            .resizable()
                                    } placeholder: {
                                        ProgressView()
                                    } .frame(width: 320, height: 210)
                                }.padding()
                                VStack{
                                    Text(auxiliar.nome).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                                        .padding()
                                    Text(auxiliar.descricao).font(.title3)
                                }.padding(EdgeInsets(top: 8, leading: 32, bottom: 0, trailing: 32))
                                Spacer()
                            }
                        }
                    }
                }
            }
            
            
        }
    }
    
}


#Preview {
    ContentView()
}
