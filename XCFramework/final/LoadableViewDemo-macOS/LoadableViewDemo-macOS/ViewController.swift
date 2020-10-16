//
//  ViewController.swift
//  LoadableViewDemo-macOS
//
//  Created by Gabriel Theodoropoulos.
//

import Cocoa

class ViewController: NSViewController {

    var demoView: DemoView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    override func viewWillAppear() {
        super.viewWillAppear()
        
        if demoView == nil {
            demoView = DemoView()
            demoView?.add(to: self.view)
        }
    }
    

}

