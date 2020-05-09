//
//  introViewController.swift
//  introApp1
//
//  Created by ryota on 2020/05/09.
//  Copyright © 2020 Honda Ryota. All rights reserved.
//

import UIKit
import Lottie

class introViewController: UIViewController ,UIScrollViewDelegate{

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    // Jsonファイルを格納
    var onboardArray = ["1","2","3","4","5"]
    
    var onboardStringArray = ["確信","信頼","十実","躍動","促進"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ページングを表示
        scrollView.isPagingEnabled = true
        
        setUpScroll()
        
        for i in 0...4{
            
            // Jsonファイルによるアニメーションの表示
            let animationView = AnimationView()
            let animation = Animation.named(onboardArray[i])
            // アニメーションの設定
            animationView.frame = CGRect(x:CGFloat(i) * view.frame.size.width,y: 0, width:scrollView.frame.size.width, height:scrollView.frame.size.height)
            animationView.animation = animation
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            // 表示
            scrollView.addSubview(animationView)
        }
    
    }
    
    
    
    // ナビゲーションバーを消す
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    
    // スクロールのセットアップ
    func setUpScroll(){
        
        scrollView.delegate = self
        
        // スクロールのフォント設定
        // 幅は配列分使用(＊５)
        scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: scrollView.frame.size.height)
        
        for i in 0...4{
            
            // onbordLabelに設定情報を格納
            let onboardLabel  = UILabel(frame: CGRect(x:CGFloat(i) * view.frame.size.width,y: view.frame.size.height/3, width:scrollView.frame.size.width, height:scrollView.frame.size.height))
            
            onboardLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            onboardLabel.textAlignment = .center
            onboardLabel.text = onboardStringArray[i]
            //表示
            scrollView.addSubview(onboardLabel)
        }
        
        
        
        
    }
    


}
