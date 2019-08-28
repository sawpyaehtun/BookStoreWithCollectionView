//
//  BookStoreViewController.swift
//  BookStoreCollectionView
//
//  Created by saw pyaehtun on 28/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class BookStoreViewController: UIViewController {
    @IBOutlet weak var collectionViewBookStore: UICollectionView!
    
    let numberOfItemsInRow : CGFloat = 3.0
    let spacing : CGFloat = 9
    let leadingSpace : CGFloat = 10
    let TrailingSpace : CGFloat = 10
    var books : [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareData()
        setupNavigationBar()
        setUpCollectionView()
    }
    
    private func prepareData(){
        let bookOne = Book(coverPhoto: UIImage(named: "one"), bookTitle: "Peter Pan", authorName: "J.M.Barrie")
        let bookTwo = Book(coverPhoto: UIImage(named: "two"), bookTitle: "It had to be you", authorName: "Lynda Renham")
        let bookThree = Book(coverPhoto: UIImage(named: "three"), bookTitle: "There There", authorName: "Tommy Orange")
        let bookFour = Book(coverPhoto: UIImage(named: "four"), bookTitle: "Biology : Student's Book", authorName: "Moran Seconday")
        let bookFive = Book(coverPhoto: UIImage(named: "five"), bookTitle: "The Wedding Date", authorName: "Jasmine Guillary")
        let bookSix = Book(coverPhoto: UIImage(named: "six"), bookTitle: "Stay and Fight", authorName: "Madeline Ffitch")
        let bookSeven = Book(coverPhoto: UIImage(named: "seven"), bookTitle: "The Little Mermaid", authorName: "Hans Christian Andersen")
        
        books = [bookOne,bookTwo,bookThree,bookFour,bookFive,bookSix,bookSeven]
        
        books.append(contentsOf: books)
    }
  
    private func setupNavigationBar(){
        let bellItem = UIBarButtonItem(image: #imageLiteral(resourceName: "bell"), style: .plain, target: self, action: nil)
        bellItem.tintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        let scanItem = UIBarButtonItem(image: #imageLiteral(resourceName: "scanner"), style: .plain, target: self, action: nil)
        scanItem.tintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        navigationItem.rightBarButtonItems = [bellItem,scanItem]
        
        let menuItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: nil)
        menuItem.tintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        navigationItem.leftBarButtonItems = [menuItem]
    }
    
    private func setUpCollectionView(){
        collectionViewBookStore.dataSource = self
        collectionViewBookStore.delegate = self
        
        collectionViewBookStore.registerForCell(strID: String(describing: BookItem.self))
        
        let layout = collectionViewBookStore.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        // calculating total padding
        let totalPadding : CGFloat = ((numberOfItemsInRow - 1) * spacing) + leadingSpace + TrailingSpace
        let itemWidth = (self.view.frame.width - totalPadding) / numberOfItemsInRow
        
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth * 2.5)
    }

}

extension BookStoreViewController : UICollectionViewDelegate{
    
}

extension BookStoreViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookItem.self), for: indexPath) as? BookItem
        item?.book = books[indexPath.row]
        return item!
    }
    
    
}
