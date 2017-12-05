////
//  ViewController.swift
//  Test.swift
//
//  Created by 福田　光希 on 2017/11/21.
//  Copyright © 2017年 福田　光希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  //設定値を扱うキーを設定(熊)
    let settingKey = "party_value"
    override func viewDidLoad() {
        super.viewDidLoad()
      //UserDefaultsのインスタンスを生成（by 熊)
      let settings = UserDefaults.standard
      //UserDefaultsに初期値を登録（熊）
      settings.register(defaults: [settingKey:1])
      
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
      
    }
    
    /*以下の@がついた，４つの変数と，メソッドは画面のLabelとbuttonを関連付けしたもの．（熊）*/
    @IBOutlet weak var numPeople: UILabel!
    
    @IBOutlet weak var numGirls: UILabel!
    
    @IBOutlet weak var numHungry: UILabel!
    
    @IBOutlet weak var numNotHungry: UILabel!

    var Hungry : Int = 0;
    
    @IBOutlet weak var sumGram: UILabel!
    
    @IBAction func plusButton1(_ sender: AnyObject) {
    }
    
    @IBAction func plusButton2(_ sender: AnyObject) {
        Hungry += 1
        if  
        numHungry.text = ("\(Hungry)")
    }
    
    @IBAction func plusButton3(_ sender: AnyObject) {
    }
    
    @IBAction func minusButton1(_ sender: AnyObject) {
    }
    
    @IBAction func minusButton2(_ sender: AnyObject) {
        if Hungry != 0{
        Hungry -= 1
        }
        numHungry.text = ("\(Hungry)")
    }
    
    @IBAction func minusButton3(_ sender: AnyObject) {
    }
    
  @IBAction func decision1(_ sender: AnyObject) {
    //UserDefaultsを生成（熊）
    let settings = UserDefaults.standard
    //記憶されている値を代入
    let partyValue = settings.integer(forKey: settingKey)
    let sum :Int
    sum = partyValue * 100
    sumGram.text = ("\(sum)")
    
    
    
  }
  //合計人数設定画面に遷移（熊）
  @IBAction func sumofpeopleButtonAction(_ sender: AnyObject) {
    performSegue(withIdentifier:"goSumofpeople", sender: nil)
  }
}
