//
//  WebController.swift
//  visor
//
//  Created by Manuel Zegarra on 8/09/15.
//  Copyright (c) 2015 M-Sonic. All rights reserved.
//

import UIKit

class WebController: UIViewController {
    
    

    @IBOutlet weak var webView: UIWebView!
    var nombreArchivo:String = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webView.scalesPageToFit = true;

        println("\(nombreArchivo)")
        
        mostrarPdf()
    }

    
    func mostrarPdf(){
        
        var direccionPDF = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(nombreArchivo, ofType: "pdf")!)
        
                println("\(direccionPDF)")
        
        if let pdfData = NSData(contentsOfURL: direccionPDF!){
            
            webView.loadData(pdfData, MIMEType: "application/pdf", textEncodingName:"utf-8", baseURL: nil)
        
        }else{
        
        }
        
        
        
        
        
    }
   

}
