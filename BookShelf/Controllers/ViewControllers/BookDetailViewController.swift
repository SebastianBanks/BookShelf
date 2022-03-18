//
//  BookDetailViewController.swift
//  BookShelf
//
//  Created by Sebastian Banks on 3/18/22.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var releasedLabel: UILabel!
    
    
    
    var book: Book?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        
        guard let book = book else { return }
        nameLabel.text = book.title
        nameLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
        coverImage.image = UIImage(named: book.cover)
        authorLabel.text = book.author
        releasedLabel.text = "Release Date: \(book.releaseYear)"
        descLabel.text = book.desc
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
