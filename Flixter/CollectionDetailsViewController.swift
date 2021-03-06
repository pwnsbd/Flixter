//
//  ColletionDetailsViewController.swift
//  Flixter
//
//  Created by Pawan on 10/2/20.
//

import UIKit
import AlamofireImage

class CollectionDetailsViewController: UIViewController {

    var movie : [String:Any]!
    
    
    
   
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            print(movie["title"])
        
        titleLabel.text = movie["title"] as! String
        
        synopsisLabel.text = movie["overview"] as! String
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        let backdrop = movie["backdrop_path"] as! String
        let backgroundImage = URL(string: "https://image.tmdb.org/t/p/w780" + backdrop)
        
        backgroundView.af_setImage(withURL: backgroundImage!)
        
        
        
        // Do any additional setup after loading the view.
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
