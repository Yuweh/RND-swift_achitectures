# RND-swift_achitectures


1. Model-View-Controller (MVC)
MVC is a classic app architecture pattern that has been used in iOS development since the early days of the platform. Here's a basic example:

```
// Model
struct Person {
    let name: String
    let age: Int
}

// View
class PersonView: UIView {
    let nameLabel = UILabel()
    let ageLabel = UILabel()
    
    init(person: Person) {
        nameLabel.text = person.name
        ageLabel.text = "\(person.age)"
        super.init(frame: .zero)
        addSubview(nameLabel)
        addSubview(ageLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.frame = CGRect(x: 0, y: 0, width: bounds.width, height: 20)
        ageLabel.frame = CGRect(x: 0, y: 30, width: bounds.width, height: 20)
    }
}

// Controller
class PersonViewController: UIViewController {
    let person: Person
    let personView: PersonView
    
    init(person: Person) {
        self.person = person
        self.personView = PersonView(person: person)
        super.init(nibName: nil, bundle: nil)
        view.addSubview(personView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        personView.frame = CGRect(x: 20, y: 100, width: view.bounds.width - 40, height: 60)
    }
}

// Usage
let person = Person(name: "John", age: 30)
let controller = PersonViewController(person: person)


```

