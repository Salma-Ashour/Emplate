//
//  ViewController.swift
//  Emplate
//
//  Created by Salma Ashour on 12/5/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import UIKit

class OffersViewController: UIViewController {
    
    var offers: [Offer] = []
    fileprivate let offerPresenter = OfferPresenter(networkManager: NetworkManager())
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        offerPresenter.attachView(self)
        offerPresenter.getOffers()
        }
}

extension OffersViewController: UITableViewDelegate {
    
    
}

extension OffersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferCell") as! OfferCell
        cell.offerName.text = offers[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

extension OffersViewController : OfferView {
    func startLoading() {
        
    }
    
    func finishLoading() {
        
    }
    
    func setOffers(_ offers: [Offer]) {
        self.offers = offers
        tableView.reloadData()
    }
    
    func setEmptyOffers() {
    
    }
    
    
}

