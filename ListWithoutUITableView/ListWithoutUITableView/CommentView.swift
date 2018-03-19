import UIKit

final class CommentView: UIView {
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    let textView = UITextView()
    
    init() {
        super.init(frame: .zero)
        configureSubviews()
    }
    
    private func configureSubviews() {
        backgroundColor = UIColor.blue
        
        textView.isScrollEnabled = false
        textView.font = UIFont.preferredFont(forTextStyle: .body)
        textView.backgroundColor = .white
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textView)
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10.0),
            textView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20.0),
            textView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10.0)
        ])
        
        let label = UILabel()
        label.text = "コメント"
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.backgroundColor = .orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            label.centerYAnchor.constraint(equalTo: textView.centerYAnchor),
            label.rightAnchor.constraint(equalTo: textView.leftAnchor, constant: -10.0)
        ])
        
        label.setContentHuggingPriority(.required, for: .horizontal)
        label.setContentCompressionResistancePriority(.required, for: .horizontal)
    }
    
}
