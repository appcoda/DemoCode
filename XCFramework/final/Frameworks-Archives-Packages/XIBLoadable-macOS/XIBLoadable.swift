//
//  XIBLoadable.swift
//  XIBLoadable-macOS
//
//  Created by Gabriel Theodoropoulos.
//

import AppKit

public protocol XIBLoadable {
    func load(from xibName: String) -> Bool
    func add(to view: NSView)
}


extension XIBLoadable where Self: NSView {
    @discardableResult
    public func load(from xibName: String) -> Bool {
        var xibObjects: NSArray?
        let xibName = NSNib.Name(stringLiteral: xibName)

        if Bundle.main.loadNibNamed(xibName, owner: self, topLevelObjects: &xibObjects) {
            guard let nibObjects = xibObjects else { return false }
            let viewObjects = nibObjects.filter { $0 is NSView }

            if viewObjects.count > 0 {
                guard let view = viewObjects[0] as? NSView else { return false }
                self.addSubview(view)
                view.translatesAutoresizingMaskIntoConstraints = false
                view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
                view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
                view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
                view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

                return true
            }
        }

        return false
    }
    
    
    public func add(to view: NSView) {
        view.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
