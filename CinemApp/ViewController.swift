//
//  ViewController.swift
//  CinemApp
//
//  Created by Rodrigo on 6/25/18.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Alamofire
import OperaSwift
import RxSwift
import UIKit

class ViewController: UIViewController {
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        let request =  MovieApi.Movie.GetMovies()
        request
            .rx.collection("results")
            .subscribe(onSuccess: { (movies: [Movie]) in
                print(movies)
            }, onError: { (error) in
                print(error.localizedDescription)
            })
            .disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
