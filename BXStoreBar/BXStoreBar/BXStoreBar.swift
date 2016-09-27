//
//  BXStoreBar.swift
//  BXStoreBar
//
//  Created by xiaoxiao on 16/8/8.
//  Copyright © 2016年 bianxiang. All rights reserved.
//

//*=====================================*
//* 公司:上海笑溢网络科技有限公司            *
//* 开发作者:卞翔                        *
//* 联系QQ: 1023537528                   *
//* iOS技术交流群: 160603792              *
//* GitHub:https://github.com/bianxiang *
//* CSDN:http://blog.csdn.net/bx_jobs   *
//*=====================================*
//*/



import UIKit

class BXStoreBar: UIView {

    
    var aboveView : UIView!
    var informationLabel : UILabel!
    var informationFont : UIFont! {
        didSet {
            informationLabel.font = informationFont
        }
    }
    var informationColor : UIColor! {
        didSet {
            informationLabel.textColor = informationColor
        }
    }
    
    var topColor : UIColor? {
        didSet {
            aboveView.backgroundColor = topColor
        }
    }
    var bottomColor : UIColor? {
        didSet {
            self.backgroundColor = bottomColor
        }
    }
    var value:(current:Int,max:Int)!
        {
        didSet{
            self.totalValue = self.value.max
            self.currentValue = self.value.current
        }
    }
    var currentValue :Int! {
        didSet {
            
            informationLabel.text = "\(currentValue!) / \(totalValue!) "
//            updateFrame()
            aboveView.frame.size.width = CGFloat(Double(currentValue) / Double(totalValue)) * self.frame.width
            layoutIfNeeded()
            
        }
    }
    
    
    var totalValue : Int! {
        didSet {
            
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    
    
    func setup() {
        
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        
        self.backgroundColor = UIColor.gray
        
        aboveView = UIView(frame:CGRect(x: 0, y: 0, width: 0, height: self.frame.height))
        aboveView.backgroundColor = UIColor.yellow
        self.addSubview(aboveView)
        
        informationLabel = UILabel()
        
        informationLabel.text = "0/0"
        informationLabel.font = UIFont.systemFont(ofSize: 10)
        informationLabel.textColor = UIColor(white: 0.8, alpha: 1)
//        updateFrame()
        
        aboveView.addSubview(informationLabel)
        layoutIfNeeded()
    }
    
    
    func updateFrame(){
        informationLabel.sizeToFit()
        informationLabel.center = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateFrame()
    }

}
