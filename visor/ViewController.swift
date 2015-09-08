//
//  ViewController.swift
//  visor
//
//  Created by Manuel Zegarra on 8/09/15.
//  Copyright (c) 2015 M-Sonic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    var arregloPdfs:[String] = ["pdf_1","pdf_2","pdf_3","pdf_4","pdf_5","pdf_6","pdf_7","pdf_8","pdf_9"]
    var pdfSeleccionado:Int = 0
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloPdfs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        cell.textLabel?.text = self.arregloPdfs[indexPath.row]
        cell.imageView?.image = UIImage(named: "book");
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        pdfSeleccionado = indexPath.row;
        
         println("pdfSeleccionado \(pdfSeleccionado)")
        
        self.performSegueWithIdentifier("haciaVisorPdf", sender: pdfSeleccionado)
        
       /*
        var renglon = indexPath.row;
        
        var section = indexPath.section
        
        println("renglon \(renglon)")
        println("seccion \(section)")*/
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var seleccion = sender as! Int;
        
        var webController = segue.destinationViewController as! WebController
        webController.nombreArchivo = arregloPdfs[seleccion];
        
        
    }
}

