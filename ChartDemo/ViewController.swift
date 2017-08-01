//
//  ViewController.swift
//  ChartDemo
//
//  Created by zhoucan on 2016/12/19.
//  Copyright © 2016年 verfing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         let width = UIScreen.main.bounds.size.height - 75
         let height = UIScreen.main.bounds.size.width - 90
        
        let chartsView = EditorCharts.init(frame: CGRect.init(x: 45, y: 70, width: width, height: height))
        chartsView.yValue = [25,35,25,30,25,25,24,25,21,25,23,25,27,25,21,29,22.5,25,23,25,21.4,25,22,25]
        chartsView.lineColor = UIColor.init(red: 250/255.0, green: 150/255.0, blue: 127/255.0, alpha: 1.0)
        chartsView.showCircle(isShow: true)
        chartsView.callBackYValueArray = { array in
        
          print(array)
            
        }
        view.addSubview(chartsView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
     return .landscapeLeft
    }

}

