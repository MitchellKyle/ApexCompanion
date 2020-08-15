////
////  MapView.swift
////  ApexCompanion
////
////  Created by Mitchell Sharber on 8/9/20.
////  Copyright © 2020 Mitchell Sharber. All rights reserved.
////
//
//import SwiftUI
//
//struct MapView: View {
//    
//    @State var scale: CGFloat = 1.0
//    @State var isTapped: Bool = false
//    @State var pointTapped: CGPoint = CGPoint.zero
//    @State var draggedSize: CGSize = CGSize.zero
//    @State var previousDragged: CGSize = CGSize.zero
//    
//    var body: some View {
//        
//        GeometryReader { reader in
//            Image("kings_canyon")
//                .resizable()
//                .scaledToFit()
//                .animation(.default)
//                .offset(x: self.draggedSize.width, y: self.draggedSize.height)
//                .scaleEffect(self.scale)
//                .scaleEffect(self.isTapped ? 2.5 : 1, anchor: UnitPoint(x: self.pointTapped.x / reader.frame(in: .global).maxX, y: self.pointTapped.y / reader.frame(in: .global).maxY))
//                .gesture(TapGesture(count: 2).onEnded({
//                        self.isTapped = !self.isTapped
//                    }).simultaneously(with: DragGesture(minimumDistance: 0, coordinateSpace: .global).onChanged({ (value) in
//                        self.pointTapped = value.startLocation
//                        self.draggedSize = CGSize(width: value.translation.width + self.previousDragged.width, height: value.translation.height + self.previousDragged.height)
//                    }).onEnded({ (value) in
////                        print(value.location)
//                        let offsetWidth = (reader.frame(in: .global).maxX * self.scale - reader.frame(in: .global).maxX) / 2
//                        let offsetHeight = (reader.frame(in: .global).maxY * self.scale - reader.frame(in: .global).maxY) / 2
//                        let newDraggedSize = self.draggedSize.width * self.scale
//                        if newDraggedSize > offsetWidth {
//                            self.draggedSize = CGSize(width: offsetWidth / self.scale, height: value.translation.height + self.previousDragged.height)
//                        }
//                        else if newDraggedSize < offsetWidth {
//                            self.draggedSize = CGSize(width: -offsetWidth / self.scale, height: value.translation.height + self.previousDragged.height)
//                        }
////                        else {
////                            self.draggedSize = CGSize(width: value.translation.width + self.previousDragged.width, height: value.translation.height + self.previousDragged.height)
////                        }
//                        else if newDraggedSize > offsetHeight {
//                            self.draggedSize = CGSize(width: value.translation.width + self.previousDragged.width, height: offsetHeight / self.scale)
//                        }
//                        else if newDraggedSize < offsetHeight {
//                            self.draggedSize = CGSize(width: value.translation.width + self.previousDragged.width, height: -offsetHeight / self.scale)
//                        }
//                        else {
//                            self.draggedSize = CGSize(width: value.translation.width + self.previousDragged.width, height: value.translation.height + self.previousDragged.height)
//                        }
//                        self.previousDragged = self.draggedSize
//                })))
//                .gesture(MagnificationGesture().onChanged({ (scale) in
//                    self.scale = scale.magnitude
//                }).onEnded({ (scaleFinal) in
//                    self.scale = scaleFinal.magnitude
//                    if self.scale > 2.5 {
//                        self.scale = 2.5
//                    }
//                    else if self.scale < 1 {
//                        self.scale = 1
//                    }
//                }))
//        }
//        
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
