//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 桑原雅史 on 2021/05/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CountUpLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ラベルの文字を0と表示したい
        CountUpLabel.text = "0"
        
    }


    
    @IBAction func plus(_ sender: Any) {
        
        //カウントアップさせたい
        count = count + 1
        
        //ラベルに文字を反映したい(数字)
        CountUpLabel.text = String(count)
        
        //もし10以上になったら色を黄色に変更したい
        if count >= 10{
            changeTextColor()
        }
        
    }
    
    
    @IBAction func minus(_ sender: Any) {
        
        //カウントダウンさせたい
        count = count - 1
        
        //ラベルに文字を反映したい(数字)
        CountUpLabel.text = String(count)
        
        //もし0以下になったら色を白に変更したい
        if count <= 0{
            resetColor()
        }
    }
    
    //新しくメソッドが作成された
    func changeTextColor(){
        
        CountUpLabel.textColor = .yellow
    }
    
    func resetColor(){
        
        CountUpLabel.textColor = .white
        
    }
    
    
}

