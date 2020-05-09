  //
//  BaseViewController.swift
//  introApp1
//
//  Created by ryota on 2020/05/10.
//  Copyright © 2020 Honda Ryota. All rights reserved.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData()
        
        scrollToSlide(at: 0, animated: true)
        
        
  
    }
    
    override var headerView: UIView?{

        let headerView = UIImageView()
        headerView.isUserInteractionEnabled = true
        headerView.contentMode = .scaleToFill
        headerView.image = UIImage(named: "")
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let headerHeight:CGFloat
        if #available(iOS 11.0, *){
            
            headerHeight = view.bounds.height/4 + view.safeAreaInsets.top
        }else{
            
            headerHeight = view.bounds.height/4 + topLayoutGuide.length
            
        }
        
        headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
        
        return headerView
    }

    override var titlesInSwitcher: [String]{
        
        return ["Top","AdemaNews","Yahoo!!","IT","Buzz","CNN"]
    }
    
    
    override  func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        
        switch index{
            
        case 0:
            return
            
        }
    }
    
    

 

}
