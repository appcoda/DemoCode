//
//  DemoView.swift
//  ViewLoaderDemo-iOS
//
//  Created by Gabriel Theodoropoulos.
//

import UIKit
import XIBLoadable_iOS

class DemoView: UIView, XIBLoadable {

    init() {
        super.init(frame: .zero)
        load(from: "\(Self.self)")
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
