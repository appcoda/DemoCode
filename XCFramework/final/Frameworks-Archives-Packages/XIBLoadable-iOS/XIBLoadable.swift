//
//  XIBLoadable.swift
//  XIBLoadable-iOS
//
//  Created by Gabriel Theodoropoulos.
//

import UIKit

public protocol XIBLoadable {
    func load(from xibName: String) -> Bool
    func add(to view: UIView)
}


extension XIBLoadable where Self: UIView {
    @discardableResult
    public func load(from xibName: String) -> Bool {
        guard let xibContents = Bundle.main.loadNibNamed(xibName, owner: self, options: nil),
            let view = xibContents.first as? UIView
            else { return false }

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

        return true
    }
    
    
    public func add(to view: UIView) {
        view.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
