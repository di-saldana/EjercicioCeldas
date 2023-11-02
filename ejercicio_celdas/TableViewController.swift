//
//  TableViewController.swift
//  ejercicio_celdas
//
//  Created by Dianelys Saldaña on 11/2/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    var libros : [Libro] = []
    
    let libro1 = Libro(titulo: "The Seven Husbands of Evelyn Hugo", autor: "Taylor Jenkins Reid", portada: UIImage(named: "tshoeh_cover") ?? UIImage())
    let libro2 = Libro(titulo: "On Earth We're Briefly Gorgeous", autor: "Ocean Vuong", portada: UIImage(named: "oewbg_cover") ?? UIImage())
    let libro3 = Libro(titulo: "Little Weirds", autor: "Jenny Slate", portada: UIImage(named: "lw_cover") ?? UIImage())

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.title = "Mi tabla personalizada"
        
        libros = [libro1, libro2, libro3]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        let libro = libros[indexPath.row]

        cell.labelTitle?.text = "Título: \(libro.titulo)"
        cell.labelAuthor?.text = "Autor: \(libro.autor)"
        cell.imagen?.image = libro.portada
        
        if indexPath.row % 2 != 0 {
            cell.fondo.image = UIImage(named:"fondo_celda1.png")
        }
        else {
            cell.fondo.image = UIImage(named:"fondo_celda2.png")
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
