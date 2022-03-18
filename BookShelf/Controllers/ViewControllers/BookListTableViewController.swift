//
//  BookListTableViewController.swift
//  BookShelf
//
//  Created by Sebastian Banks on 3/18/22.
//

import UIKit




class BookCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
}

class BookListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return BookController.library.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookCellTableViewCell

        let book = BookController.library[indexPath.row]
        cell.titleLabel.text? = book.title
        cell.authorLabel.text? = book.author

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? BookDetailViewController
            else { return }
            
            let bookToSend = BookController.library[indexPath.row]
            
            destination.book = bookToSend
        }
    }
    
    func setupNavBar() {
        self.navigationController?.navigationBar.topItem?.title = "My Bookshelf"
        let navbarAppearance = UINavigationBarAppearance()
        navbarAppearance.backgroundColor = .white
        self.navigationController?.navigationBar.standardAppearance = navbarAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = navbarAppearance
    }

}
