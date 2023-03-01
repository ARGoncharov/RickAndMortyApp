//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Алексей  on 01.03.2023.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            self.addSubview($0)
        })
    }
}
