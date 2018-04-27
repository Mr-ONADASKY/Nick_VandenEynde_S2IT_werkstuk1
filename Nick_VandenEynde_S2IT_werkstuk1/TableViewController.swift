//
//  TableViewController.swift
//  Nick_VandenEynde_S2IT_werkstuk1
//
//  Created by Nickvde on 27/04/2018.
//  Copyright © 2018 Nickvde. All rights reserved.
//

import UIKit
import CoreLocation

class TableViewController: UITableViewController {

    var personen = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personen.append(Persoon(naam: "Den Imbessielen Boer", voornaam: "Jos", foto: UIImage(named: "foto1")!, adres:  Adres(straat: "ZeemeeuwStraat", huisnummer: 45, postcode: 1765, gemeente: "Den Lemburg"), locatie: CLLocationCoordinate2DMake(50.852183, 4.343737), telefoonnummer: "05352359392395"))
        
        personen.append(Persoon(naam: "Van achter t hoeksken", voornaam: "Willy", foto: UIImage(named: "foto2")!, adres:  Adres(straat: "Huppelpuflaan", huisnummer: 92, postcode: 1735, gemeente: "Den Hunsberg"), locatie: CLLocationCoordinate2DMake(50.8212183, 4.313737), telefoonnummer: "0535234342395"))
        
        personen.append(Persoon(naam: "Van den Delhaize", voornaam: "André", foto: UIImage(named: "foto3")!, adres:  Adres(straat: "ZeemeeuwStraat", huisnummer: 45, postcode: 1945, gemeente: "Merchtem City"), locatie: CLLocationCoordinate2DMake(50.812183, 4.353737), telefoonnummer: "05352359493095"))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = personen[indexPath.row].voornaam
        cell.detailTextLabel?.text = personen[indexPath.row].naam
        cell.imageView?.image = personen[indexPath.row].foto

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! PersoonControllerDetail
        let indexPath = self.tableView.indexPathForSelectedRow
        vc.persoon = personen[(indexPath?.row)!]
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
