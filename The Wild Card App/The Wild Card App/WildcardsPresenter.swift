//
//  WildcardsPresenter.swift
//  The Wild Card App
//
//  Created Tolga Caner on 26/06/2017.
//  Copyright © 2017 Tolga Caner. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class WildcardsPresenter: WildcardsPresenterProtocol {

    weak var view: WildcardsViewProtocol?
    var interactor: WildcardsInteractorInputProtocol?
    private let router: WildcardsWireframeProtocol

    init(interface: WildcardsViewProtocol, interactor: WildcardsInteractorInputProtocol?, router: WildcardsWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
    func viewLoaded() {
        LoadingManager.showLoading()
        self.interactor?.fetchWildcards()
    }
    
    

}

extension WildcardsPresenter: WildcardsInteractorOutputProtocol {
    
    func wildcardsFetched(_ wildcards: [WildcardEntity]) {
        self.view?.setWildcards(wildcards)
        LoadingManager.hideLoading()
    }
    
    internal func wildcardsFetchFailed() {
        self.view?.showNoUsersAlert()
        LoadingManager.hideLoading()
    }
}
