////
////  MapView.swift
////  ApexCompanion
////
////  Created by Mitchell Sharber on 8/12/20.
////  Copyright © 2020 Mitchell Sharber. All rights reserved.
////
//
//import SwiftUI
//import UIKit
//
//struct MapView: View {
//    var body: some View {
//        MapController()
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
//
//struct MapController: UIViewControllerRepresentable {
//    func makeUIViewController(context: UIViewControllerRepresentableContext<MapController>) -> UIViewController {
//        
//        let storyboard = UIStoryboard(name: "Map", bundle: Bundle.main)
//        let controller = storyboard.instantiateViewController(identifier: "Map")
//        
//        return controller
//        
//    }
//    
//    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<MapController>) {
//        
//    }
//}
//
//class MapViewController: UIHostingController<MapView>, UIScrollViewDelegate {
//
//    @IBOutlet weak var scrollView: UIScrollView!
//    @IBOutlet weak var imageView: UIImageView!
//    @IBOutlet weak var imageViewBottomContstraint: NSLayoutConstraint!
//    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
////    @IBOutlet weak var imageVeiwTopConstraint: NSLayoutConstraint!
//    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder,rootView: MapView());
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//    
//    override func viewWillLayoutSubviews() {
//      super.viewWillLayoutSubviews()
//      updateMinZoomScaleForSize(view.bounds.size)
//    }
//    
//    func updateMinZoomScaleForSize(_ size: CGSize) {
//      let widthScale = size.width / imageView.bounds.width
//      let heightScale = size.height / imageView.bounds.height
//      let minScale = min(widthScale, heightScale)
//        
//      scrollView.minimumZoomScale = minScale
//      scrollView.zoomScale = minScale
//    }
//    
//    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
//      return imageView
//    }
//}
