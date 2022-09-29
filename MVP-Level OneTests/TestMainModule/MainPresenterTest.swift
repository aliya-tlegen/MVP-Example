//
//  MainPresenterTest.swift
//  MVP-Level OneTests
//
//  Created by Алия Тлеген on 27.09.2022.
//

import XCTest
@testable import MVP_Level_One

class MockView: MainViewProtocol {
    var titleTest: String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
}

class MainPresenterTest: XCTestCase {

    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    
    override func setUpWithError() throws {
        view = MockView()
        person = Person(firstName: "Baz", lastName: "Bar")
        presenter = MainPresenter(view: view, person: person)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "person is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
//    func testView() {
//        presenter.showGreeting()
//        XCTAssertEqual(view.titleTest, "Baz Bar")
//    }
    
    func testPersonModel() {
        XCTAssertEqual(person.firstName, "Baz")
        XCTAssertEqual(person.lastName, "Bar")
    }
}
