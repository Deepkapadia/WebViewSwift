//
//  ViewController.swift
//  WebViewSwift
//
//  Created by MAC OS on 5/19/17.
//  Copyright © 2017 MAC OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webv: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // for custom file display
        var str=String();
        str = Bundle.main.path(forResource: "ENERGYSTAR", ofType: "pdf")!;
        let url = URL(string: str);
        webv.loadRequest(URLRequest(url: url!));
        
        //for external web page
        //let url2 = URL(string: "http://www.topsint.com/topserp/index.php?lg=1");
        //webv.loadRequest(URLRequest(url: url2!));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

