//
//  MapDetailView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/19/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct MapDetailView: View {
    
    var map: Map
    
    @State var showMenu = false
    @State var showLabels = true
    @State private var isPresented = false
    @State var mapImage: String
    @State var mapImageLabels: String
    

    var body: some View {
            
        ZStack(alignment: .bottomLeading, content: {
        
            ZStack(alignment: .bottomTrailing, content: {
                
                MapView(mapImageName: showLabels ? mapImageLabels : mapImage)
                
                VStack(alignment: .center, spacing: 15) {
                    
                    if self.showMenu {
                        
                        VStack(alignment: .leading, spacing: 18) {
                            VStack(alignment: .leading) {
                                Button("Info") {
                                    
                                    self.isPresented = true
                                    
                                }.sheet(isPresented: $isPresented) {
                                    if self.map.name == "King's Canyon" {
                                        MapInfo(map: self.map, mapOne: true)
                                    } else {
                                        MapInfo(map: self.map, mapOne: false)
                                    }
                                    
                                }
                                
                                Divider()
                            }
                            
                            VStack(alignment: .leading) {
                                Button(action: {
                                    self.mapImage = self.map.lootTier
                                    self.mapImageLabels = self.map.lootTierLabeled
                                    self.showMenu.toggle()
                                }) {
                                    HStack(spacing: 15) {
                                        Text("Loot Tiers")
                                    }
                                }
                                
                                Divider()
                            }
                            
                            VStack(alignment: .leading) {
                                Button(action: {
                                    self.mapImage = self.map.respawnLocations
                                    self.mapImageLabels = self.map.respawnLocationsLabeled
                                    self.showMenu.toggle()
                                }) {
                                    HStack(spacing: 15) {
                                        Text("Respawn Beacons")
                                    }
                                }
                                
                                Divider()
                            }
                            
                            VStack(alignment: .leading) {
                                Button(action: {
                                    self.mapImage = self.map.beaconLocations
                                    self.mapImageLabels = self.map.beaconLocationsLabeled
                                    self.showMenu.toggle()
                                }) {
                                    HStack(spacing: 15) {
                                        Text("Survey Beacons")
                                    }
                                }
                                
                                Divider()
                            }
                            
                            VStack(alignment: .leading) {
                                Button(action: {
                                    
                                }) {
                                    HStack(spacing: 15) {
                                        Text("Jump Towers")
                                    }
                                }
                                
                                Divider()
                            }
                            
                            VStack(alignment: .leading) {
                                Button(action: {
                                    self.mapImage = self.map.replicatorLocations
                                    self.mapImageLabels = self.map.relicatorLocationsLabeled
                                    self.showMenu.toggle()
                                }) {
                                    HStack(spacing: 15) {
                                        Text("Replicator Locations")
                                    }
                                }
                                
                                Divider()
                            }
                            
                            VStack(alignment: .leading) {
                                Button(action: {
                                    self.mapImage = self.map.mapSpecificLocations
                                    self.mapImageLabels = self.map.mapSpecificLocationsLabeled
                                    self.showMenu.toggle()
                                }) {
                                    if self.map.name == "King's Canyon" {
                                        HStack(spacing: 15) {
                                            Text("Bunker Locations")
                                        }
                                    } else {
                                        HStack(spacing: 15) {
                                            Text("Vault Locations")
                                        }
                                    }
                                    
                                }
                                
                                Divider()
                            }
                            
                            if self.map.name == "King's Canyon" {
                                VStack(alignment: .leading) {
                                    Button(action: {
                                        
                                    }) {
                                        
                                        HStack(spacing: 15) {
                                            Text("Charge Towers")
                                        }
                                    }
                                    
                                    Divider()
                                }
                            }
                            
                            VStack(alignment: .leading) {
                                Button(action: {
                                    self.mapImage = self.map.eventLocations.image
                                    self.mapImageLabels = self.map.eventLocations.imageLabeled
                                    self.showMenu.toggle()
                                }) {
                                    HStack(spacing: 15) {
                                        Text("Special Events")
                                    }
                                }
                            }.padding(.bottom)
                        }
                        .frame(width: 158)
                        .padding()
                        .padding(.bottom, 10)
                        .background(Color.white)
                        .clipShape(ArrowShape())
                        .cornerRadius(15)
                        .offset(y: 10)
                        
                    }
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            self.showMenu.toggle()
                            
                        }
                        
                    }) {
                        Image(systemName: self.showMenu ? "xmark" : "arrow.up")
                            .resizable()
                            .frame(width: 20, height: 22)
                            .foregroundColor(.black)
                            .padding()
                    }.background(Color.white)
                    .clipShape(Circle())
                }
                .padding()
                
            })
                .background(Color.black.opacity(0.1).edgesIgnoringSafeArea(.all))
            
            VStack {
                Button(action: {
                    self.showLabels.toggle()
                }) {
                    Image(systemName: self.showLabels ? "t.bubble" : "t.bubble.fill")
                        .resizable()
                        .frame(width: 20, height: 22)
                        .foregroundColor(.black)
                        .padding()
                }
                .background(Color.white)
                .clipShape(Circle())
            }
            .padding()
        })
    }
}

struct MapDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailView(map: mapData[1], mapImage: mapData[1].image, mapImageLabels: mapData[1].imageLabeled)
    }
}

//struct PopOver: View {
//
//    var map: Map
//
//    var body: some View {
//
//        VStack(alignment: .leading, spacing: 18) {
//            VStack(alignment: .leading) {
//                Button(action: {
//
//                }) {
//                    HStack(spacing: 15) {
//                        Text("Loot Tiers")
//                    }
//                }
//
//                Divider()
//            }
//
//            VStack(alignment: .leading) {
//                Button(action: {
//
//                }) {
//                    HStack(spacing: 15) {
//                        Text("Respawn Beacons")
//                    }
//                }
//
//                Divider()
//            }
//
//            VStack(alignment: .leading) {
//                Button(action: {
//
//                }) {
//                    HStack(spacing: 15) {
//                        Text("Jump Towers")
//                    }
//                }
//
//                Divider()
//            }
//
//            VStack(alignment: .leading) {
//                Button(action: {
//
//                }) {
//                    HStack(spacing: 15) {
//                        Text("Replicator Locations")
//                    }
//                }
//
//                Divider()
//            }
//
//            VStack(alignment: .leading) {
//                Button(action: {
//
//                }) {
//                    HStack(spacing: 15) {
//                        Text("Bunker Locations")
//                    }
//                }
//
//                Divider()
//            }
//
//            VStack(alignment: .leading) {
//                Button(action: {
//
//                }) {
//                    HStack(spacing: 15) {
//                        Text("Special Events")
//                    }
//                }
//            }.padding(.bottom)
//        }
//        .frame(width: 158)
//        .padding()
//        .padding(.bottom, 10)
//    }
//}

struct ArrowShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let center = rect.width / 2
        
        return Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height - 20))
            
            path.addLine(to: CGPoint(x: center - 15, y: rect.height - 20))
            path.addLine(to: CGPoint(x: center, y: rect.height - 2))
            path.addLine(to: CGPoint(x: center + 15, y: rect.height - 20))
            
            path.addLine(to: CGPoint(x: 0, y: rect.height - 20))
            
        }
    }
}
