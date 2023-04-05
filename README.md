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


2. Model-View-ViewModel (MVVM)
MVVM is a newer architecture pattern that has gained popularity in recent years. In this pattern, the app is again divided into three components: the Model, View, and ViewModel. The ViewModel acts as an intermediary between the Model and View, and is responsible for providing the View with data and updating the Model based on user interactions. Here is an example of implementing MVVM in Swift:

```
// Model
struct Person {
  var name: String
  var age: Int
}

// View
class PersonView: UIView {
  var nameLabel: UILabel
  var ageLabel: UILabel
  var viewModel: PersonViewModel

  // Set up UI elements and constraints
  // ...
}

// ViewModel
class PersonViewModel {
  var person: Person

  func updateName(_ name: String) {
    person.name = name
  }

  func updateAge(_ age: Int) {
    person.age = age
  }
}

// Controller
class PersonViewController: UIViewController {
  var personView: PersonView
  var viewModel: PersonViewModel

  override func viewDidLoad() {
    super.viewDidLoad()
    // Set up the view model and view
    personView.viewModel = viewModel
    personView.nameLabel.text = viewModel.person.name
    personView.ageLabel.text = "\(viewModel.person.age)"
    view.addSubview(personView)
  }
}


```



3. VIPER
VIPER is an architecture pattern that is designed to make it easy to write modular, testable, and maintainable code. It stands for View, Interactor, Presenter, Entity, and Router. The View and Presenter components are responsible for handling user input and updating the UI, while the Interactor and Entity components are responsible for handling business logic and data storage. The Router component is responsible for handling navigation between screens. Here is an example of implementing VIPER in Swift:

```
// Entity
struct Person {
  var name: String
  var age: Int
}

// View
protocol PersonViewProtocol: AnyObject {
  func setName(_ name: String)
  func setAge(_ age: Int)
}

class PersonViewController: UIViewController, PersonViewProtocol {
  var presenter: PersonPresenterProtocol

  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.viewDidLoad()
  }

  func setName(_ name: String) {
    // Update the UI
  }

  func setAge(_ age: Int) {
    // Update the UI
  }
}

// Presenter
protocol PersonPresenterProtocol {
  func viewDidLoad()
  func updateName(_ name:



```

