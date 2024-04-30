//
//  ViewController.swift
//  AppTestUik
//
//  Created by ahmed hussien on 30/04/2024.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var textview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //addSwiftUiToUIkit1()
        addSwiftUiToUIkit2()
    }
    
    func addSwiftUiToUIkit1(){
        let childView = UIHostingController(rootView: SwiftUIView())
        addChild(childView)
        childView.view.frame = textview.bounds
        textview.addSubview(childView.view)
        childView.didMove(toParent: self)
    }
    
    func addSwiftUiToUIkit2(){
        //1
        let vc = UIHostingController(rootView: SwiftUIView())
        let swiftuiView = vc.view!
        swiftuiView.translatesAutoresizingMaskIntoConstraints = false
        //2
        ///Add the view controller to the destination view controller.
        addChild(vc)
        view.addSubview(swiftuiView)
        //3
        ///Create and activate the constraints for the swiftui's view.
        NSLayoutConstraint.activate([
            swiftuiView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftuiView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        //4
        ///Notify the child view controller that the move is complete.
        vc.didMove(toParent: self)
    }
    
}

