import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    private let commentView = CommentView()
    private let redView = RedView()
    private let greenView = GreenView()
    private let imageView = CoverImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
    }

    private func configureSubviews() {
        scrollView.isScrollEnabled = true
        scrollView.keyboardDismissMode = .interactive
        scrollView.alwaysBounceVertical = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.contentInset.bottom = 300
        
        commentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(commentView)
        
        commentView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor).isActive = true
        commentView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor).isActive = true
        commentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(redView)
        
        redView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor).isActive = true
        redView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true

        greenView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(greenView)
        
        greenView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor).isActive = true
        greenView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(imageView)
        
        imageView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true

        let views = [
            "comment": commentView,
            "image": imageView,
            "red": redView,
            "green": greenView
        ]
        NSLayoutConstraint.activate(
            NSLayoutConstraint.constraints(withVisualFormat: "V:|[image][comment][red][green]|", options: [], metrics: nil, views: views)
        )
    }
    
}

