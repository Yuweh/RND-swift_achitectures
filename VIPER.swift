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
