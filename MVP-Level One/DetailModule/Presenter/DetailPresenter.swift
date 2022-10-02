//
//  DetailPresenter.swift
//  MVP-Level One
//
//  Created by Алия Тлеген on 29.09.2022.
//

import Foundation

protocol DetailViewProtocol: class {
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: class {
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?)
    func setComment()
    func tap()
}

class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: DetailViewProtocol?
    var router: RouterProtocol?
    let networkService: NetworkServiceProtocol!
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.comment = comment
        self.router = router
    }
    
    func tap() {
        router?.popToRoot()
    }
    
    public func setComment() {
        self.view?.setComment(comment: comment)
    }
}
