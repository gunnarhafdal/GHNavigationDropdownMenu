//
//  ViewController.swift
//  GHNavigationDropdownMenu
//
//  Created by Pham Ba Tho on 6/8/15.
//  Copyright (c) 2015 PHAM BA THO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedCellLabel: UILabel!
    var menuView: GHNavigationDropdownMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = [
            GHDropdownItem(title: "Most Popular", subtitle: "from our users"),
            GHDropdownItem(title: "Latest", subtitle: ""),
            GHDropdownItem(title: "Trending", subtitle: "See what's happening"),
            GHDropdownItem(title: "Nearest", subtitle: "to you"),
            GHDropdownItem(title: "Top Picks", subtitle: "by our editors"),
        ]
        self.selectedCellLabel.text = items.first?.title
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
        
        
        menuView = GHNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, selected: items[0], items: items)
        menuView.cellHeight = 50
        menuView.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        menuView.cellSelectionColor = UIColor(red: 0.0/255.0, green:160.0/255.0, blue:195.0/255.0, alpha: 1.0)
        menuView.shouldKeepSelectedCellColor = true
        menuView.cellTextLabelColor = UIColor.white
        menuView.cellTextLabelFont = UIFont(name: "Avenir-Heavy", size: 17)
        menuView.cellTextLabelAlignment = .left // .Center // .Right // .Left
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.5
        menuView.maskBackgroundColor = UIColor.black
        menuView.maskBackgroundOpacity = 0.3
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            self.selectedCellLabel.text = items[indexPath].title
        }
        
        self.navigationItem.titleView = menuView
    }
}

