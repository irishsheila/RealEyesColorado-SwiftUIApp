//
//  RealEyesColoradoTests.swift
//  RealEyesColoradoTests
//
//  Created by Sheila Doherty on 3/9/21.
//

import XCTest
@testable import RealEyesColorado

class RealEyesColoradoTests: XCTestCase {
    
    func testDecodingJson() {
        let locations: [Location] =  Bundle.main.decode("locations.json")
        
        XCTAssertEqual(locations[0].id, "garden_of_the_gods")
        XCTAssertEqual(locations[0].name, "Garden of the Gods")
        XCTAssertEqual(locations[0].headline, "The Garden of the Gods is public park located in Colorado Springs")
        XCTAssertEqual(locations[0].headerImage, "garden-of-the-gods-header")
        XCTAssertEqual(locations[0].links[0].title, "Visitor & Nature Center")
        XCTAssertEqual(locations[0].videoID, "ga_4vhyAZGM")
        
        XCTAssertEqual(locations[5].id, "dinosaur_monument")
        XCTAssertEqual(locations[5].name, "Dinosaur National Monument")
        XCTAssertEqual(locations[5].headline, "Located in a region of spectacular canyons & mountains, Dinosaur National Monument has produced a large number of complete dinosaur skeletons")
        XCTAssertEqual(locations[5].headerImage, "dinosaur-header")
        XCTAssertEqual(locations[5].links[0].title, "National Park Service: Dinosaur National Monument")
        XCTAssertEqual(locations[5].videoID, "PoCN4Lo9Lkk")
    }
}
