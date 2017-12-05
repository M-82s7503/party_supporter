////
//  ViewController.swift
//  Test.swift
//
//  Created by 福田　光希 on 2017/11/21.
//  Copyright © 2017年 福田　光希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /*控えめの変数*/
    var hikaeme = 0
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
    
    /*女性の人数の変数Girls_numberを作成 :担当　大迫*/
    var Girls_number : Int = 0;
    
    @IBAction func plusButton1(_ sender: AnyObject) {
        /*+ボタンが押された時Girls_numberに+1をしてラベルnumGirlsに人数を表示する　:　担当　大迫*/
        Girls_number += 1;
        numGirls.text = String(Girls_number)+"人"
    }
    
    @IBAction func plusButton2(_ sender: AnyObject) {
        Hungry += 1
            numHungry.text = ("\(Hungry)")
    }
    
    @IBAction func plusButton3(_ sender: AnyObject) {
        //＋に関するコード（fu）
        hikaeme += 1
        numNotHungry.text  = "\(hikaeme)人"
    }
    
    @IBAction func minusButton1(_ sender: AnyObject) {
        /*-ボタンが押された時Girls_numberに-1をしてラベルnumGirlsに人数を表示する　:担当　大迫*/
        Girls_number -= 1;
        /*0以下にはならないようにGirls_numberが0以下になる時はGirls_numberを0にするようにif文を使用している*/
        if(Girls_number >= 0){
        numGirls.text = String(Girls_number)+"人"
        }
        else{
            Girls_number = 0;
            numGirls.text = String(Girls_number)+"人"
        }
        
    }
    
    @IBAction func minusButton2(_ sender: AnyObject) {
        if Hungry != 0{
        Hungry -= 1
        }
        numHungry.text = ("\(Hungry)")
    }
    
    @IBAction func minusButton3(_ sender: AnyObject) {
        //- に関するコード（fu）
        hikaeme -= 1
        if(hikaeme < 0){
            hikaeme = 0
        }
       
            numNotHungry.text = "\(hikaeme)人"
        
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
