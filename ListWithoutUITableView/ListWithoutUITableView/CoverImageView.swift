import UIKit

final class CoverImageView: UIView {
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    let imageView = UIImageView()
    
    init() {
        super.init(frame: .zero)
        configureSubviews()
    }
    
    private func configureSubviews() {
        backgroundColor = UIColor.blue
        
        imageView.image = #imageLiteral(resourceName: "sample")
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}
