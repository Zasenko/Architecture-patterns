//
//  Presenter.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 07.12.22.
//

import Foundation

/// протоко, который будет реализовывать view
protocol PresenterRootView {
    func showHash(_ string: String)
}

/// протокол, который будет реализовывать model
protocol PresenterModel {
    func getHast(_ string: String) -> String
}

class Presenter {
    let view: PresenterRootView
    let model: PresenterModel
    
    init() {
        self.view = MVPView()
        self.model = MVPModel()
    }
}

extension Presenter: MVPPresenterProtocol {
    //Presenter получил уведомление от View
    func getHash(_ string: String) {
        //Presenter отправил запрос в Model
        let hash = model.getHast(string)
        //Presenter отправляет обработанную информацию обратно во View
        view.showHash(hash)
    }
}
