//
//  ViewController.swift
//  Emplate
//
//  Created by Salma Ashour on 12/5/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class OffersViewController: UIViewController {
    
    var offers: [Offer] = []
    fileprivate let offerPresenter = OfferPresenter(networkManager: NetworkManager())
    
    @IBOutlet weak var indicatorView: NVActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        indicatorView.type = .circleStrokeSpin
        offerPresenter.attachView(self)
        offerPresenter.getOffers()
        }
}

extension OffersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferCell") as! OfferCell
        cell.setupCell(offer: offers[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

extension OffersViewController : OfferView {
    func startLoading() {
        indicatorView.startAnimating()
    }
    
    func finishLoading() {
        indicatorView.stopAnimating()
    }
    
    func setOffers(_ offers: [Offer]) {
        self.offers = offers
        tableView.reloadData()
    }
    
    func setEmptyOffers() {
    
    }
    
    
}

