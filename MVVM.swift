import UIKit

// Model
struct Person {
    let name: String
    let age: Int
}

// ViewModel
class PersonViewModel {
    let person: Person
    
    init(person: Person) {
        self.person = person
    }
    
    var name: String {
        return person.name
    }
    
    var age: String {
        return "\(person.age)"
    }
}

// View
class PersonView: UIView {
    let nameLabel = UILabel()
    let ageLabel = UILabel()
    let viewModel: PersonViewModel
    
    init(viewModel: PersonViewModel) {
        self.viewModel = viewModel
        nameLabel.text = viewModel.name
        ageLabel.text = viewModel.age
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

// Usage
let person = Person(name: "John", age: 30)
let viewModel = PersonViewModel(person: person)
let view = PersonView(viewModel: viewModel)
