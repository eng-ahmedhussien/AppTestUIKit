//
//  Test.swift
//  AppTestUik
//
//  Created by ahmed hussien on 30/04/2024.
//

import Foundation
import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Color.pink
            Button("Hello, SwiftUI!") {
                
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}

//#Preview {
//    TamaraButton()
//}

class TamaraButtonView : UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubviews()
    }

    private func setupSubviews() {
        let vc = UIHostingController(rootView: SwiftUIView())

    }
}
