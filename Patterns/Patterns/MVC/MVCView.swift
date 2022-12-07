//
//  MVCView.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 22.11.22.
//

import UIKit

class MVCView: UIView {
    
    let textField = UITextField()
    let button = UIButton()
    let lable = UILabel()
    
    //MARK: - init's

    init() {
        super.init(frame: CGRect())
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - create Views
    
    func createView() {
        addSubview(textField)
        addSubview(button)
        addSubview(lable)
    }
    
    //MARK: - Constraints

    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
