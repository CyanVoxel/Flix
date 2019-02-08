//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by TRAVIS ABENDSHIEN on 2/7/19.
//  Copyright © 2019 TRAVIS ABENDSHIEN. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    var movie: [String:Any]!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        //Forms URL for poster image
        let baseUrl185 = "https://image.tmdb.org/t/p/w185"
        let baseUrl780 = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl185 + posterPath)
        
        //Forms URL for backdrop image
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl780 + backdropPath)
        
        //Sets images from the URLs
        posterView.af_setImage(withURL: posterUrl!)
        backdropView.af_setImage(withURL: backdropUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
