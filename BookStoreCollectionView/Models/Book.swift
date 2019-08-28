//
//  Book.swift
//  BookStoreCollectionView
//
//  Created by saw pyaehtun on 28/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import Foundation
import UIKit

class Book {
    var coverPhoto : UIImage?
    var bookTitle : String?
    var authorName : String?
    
    init(coverPhoto : UIImage?, bookTitle : String?, authorName : String?) {
        self.coverPhoto = coverPhoto
        self.bookTitle = bookTitle
        self.authorName = authorName
    }
}
