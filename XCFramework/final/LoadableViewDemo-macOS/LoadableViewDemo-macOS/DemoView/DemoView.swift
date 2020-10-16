//
//  DemoView.swift
//  LoadableViewDemo-macOS
//
//  Created by Gabriel Theodoropoulos.
//

import Cocoa
import XIBLoadable_macOS

class DemoView: NSView, XIBLoadable {

    init() {
        super.init(frame: .zero)
        load(from: "\(Self.self)")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
