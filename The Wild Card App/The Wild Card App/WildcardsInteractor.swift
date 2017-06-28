//
//  WildcardsInteractor.swift
//  The Wild Card App
//
//  Created Tolga Caner on 26/06/2017.
//  Copyright © 2017 Tolga Caner. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class WildcardsInteractor: WildcardsInteractorInputProtocol {

    weak var output: WildcardsInteractorOutputProtocol?
    
    func fetchWildcards() {
        FetchCommand() {(wildcards : [WildcardEntity]) in
            self.output?.wildcardsFetched(wildcards)
        }.execute()
    }
}
