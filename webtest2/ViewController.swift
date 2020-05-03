//
//  ViewController.swift
//  webtest2
//
//  Created by Debamitro Chakraborti on 02/05/20.
//  Copyright © 2020 Debamitro Chakraborti. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    var numberOfClicks : NSInteger = 0
    
    @IBAction func theGoButtonClicked(_ sender: Any) {
        goToAddress (address: theAddressBar.stringValue)
    }
    @IBAction func theAddressBarEntered(_ sender: Any) {
        goToAddress(address: theAddressBar.stringValue)
    }
    @IBAction func theBackButtonClicked(_ sender: Any) {
    }
    func goToAddress (address: String) {
        numberOfClicks += 1
        
        if numberOfClicks == 6
        {
            let theURL = URL (string: address)
            let request = URLRequest (url: theURL!)
            theWebView.load (request)
            numberOfClicks = 0
        }
        else if numberOfClicks == 5 {
            theWebView.loadHTMLString("<html><body><h1>Go grab a coffee</h1></body></html>", baseURL: nil)
        }
        else if numberOfClicks == 4 {
            theWebView.loadHTMLString("<html><body><h2>Wondering where to write the answer? </h2></body></html>", baseURL: nil)
        }
        else if numberOfClicks == 3 {
            theWebView.loadHTMLString("<html><body><h2>Prove that you are serious - what's 3 + 3?</h2></body></html>", baseURL: nil)
        }
        else if numberOfClicks == 2 {
            theWebView.loadHTMLString("<html><body><h2>Hey what's the rush?</h2></body></html>", baseURL: nil)
        }
        else{
            theWebView.loadHTMLString("<html><body><h2>Are you sure you want to go to " + address + "?</h2></body></html>", baseURL: nil)
        }
    }

    @IBOutlet weak var theWebView: WKWebView!
    @IBOutlet weak var theAddressBar: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        theAddressBar.stringValue = "https://"
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

