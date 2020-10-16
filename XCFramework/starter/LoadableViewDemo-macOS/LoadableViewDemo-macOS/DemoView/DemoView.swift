//
//  DemoView.swift
//  LoadableViewDemo-macOS
//
//  Created by Gabriel Theodoropoulos.
//

import Cocoa

class DemoView: NSView {

    init() {
        super.init(frame: .zero)
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
