import UIKit

final class RedView: UIView {
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    init() {
        super.init(frame: .zero)
        configureSubviews()
    }
    
    private func configureSubviews() {
        backgroundColor = .red
        
        let label = UILabel()
        label.text = "あかーーーーーーい"
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.backgroundColor = .orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        
        label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20.0).isActive = true
        label.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 10.0).isActive = true
        label.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10.0).isActive = true
    }

}
