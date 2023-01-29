import UIKit

let tableView = UITableView()
let indexPath = IndexPath(row: 0, section: 0)
let urlString = "https://some_host.com/file.png"
let queue = OperationQueue()
queue.addOperation {
    if let imageUrl = URL(string: urlString) {
        if let imageData = try? Data(contentsOf: imageUrl) {
            if let image = UIImage(data: imageData) {
                let mainQueue = OperationQueue.main
                mainQueue.addOperation {
                    if let cell = tableView.cellForRow(at: indexPath) {
                        cell.imageView?.image = image
                    }
                }
            }
        }
    }
}
