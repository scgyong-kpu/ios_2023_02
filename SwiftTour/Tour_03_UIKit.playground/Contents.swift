import UIKit

let tableView = UITableView()
let indexPath = IndexPath(row: 0, section: 0)
let urlString = "https://some_host.com/file.png"
let queue = OperationQueue()
queue.addOperation {
    let imageUrl = URL(string: urlString)
    if imageUrl == nil { return }
    let imageData = try? Data(contentsOf: imageUrl!)
    if imageData == nil { return }
    let image = UIImage(data: imageData!)
    if image == nil { return }
    let mainQueue = OperationQueue.main
    mainQueue.addOperation {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.imageView?.image = image
    }
}
