//
//  BookItem.swift
//  BookStoreCollectionView
//
//  Created by saw pyaehtun on 28/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class BookItem: UICollectionViewCell {
    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var lblAuthorName: UILabel!
    @IBOutlet weak var lblBookTitle: UILabel!
    
    var book : Book? {
        didSet {
            bookCover.image = book?.coverPhoto
            lblAuthorName.text = book?.authorName
            lblBookTitle.text = book?.bookTitle
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
