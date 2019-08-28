//
//  Extension.swift
//  CollectionView
//
//  Created by saw pyaehtun on 25/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    func registerForCell(strID : String) {
        register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID)
    }
}

