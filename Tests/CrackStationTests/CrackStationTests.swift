import XCTest
import CrackStation

final class CrackStationTests: XCTestCase {
    /* For SHA1 */
    func testCrackStationPasswordOneDigit() {
        // Given
        let crackstation = CrackStation()

        // When
        let password = crackstation.decrypt(shaHash: "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8")

        // Then
        XCTAssert(password == "a")
    }
    
    func testCrackStationPasswordOneDigit2() {
        // Given
        let crackstation = CrackStation()

        // when
        let password2 = crackstation.decrypt(shaHash: "902ba3cda1883801594b6e1b452790cc53948fda")

        // Then
        XCTAssert(password2 == "7")
    }

    func testCrackStationPasswordTwoDigits() {
        // Given
        let crackstation = CrackStation()

        // When
        let password = crackstation.decrypt(shaHash: "8ee51caaa2c2f4ee2e5b4b7ef5a89db7df1068d7")

        // Then
        XCTAssert(password == "92")
    }

    func testCrackStationPasswordTwoDigits2() {
        // Given
        let crackstation = CrackStation()

        // When
        let password = crackstation.decrypt(shaHash: "801c34269f74ed383fc97de33604b8a905adb635")

        // Then
        XCTAssert(password == "AA")
    }

    func testCrackStationPasswordThreeDigits1() {
        // Given
        let crackstation = CrackStation()

        // When
        let password = crackstation.decrypt(shaHash: "4e3b829410608130547609a3e6ba89513d8013d5")

        // Then
        XCTAssert(password == "eta")
    }

    func testCrackStationPasswordThreeDigits2() {
        // Given
        let crackstation = CrackStation()

        // When
        let password = crackstation.decrypt(shaHash: "893a066695ecc655794a2d3f7b03f11a969fede3")

        // Then
        XCTAssert(password == "0i1")
    }

    func testCrackStationPasswordThreeDigits3() {
        // Given
        let crackstation = CrackStation()

        // When
        let password = crackstation.decrypt(shaHash: "59785da3dbfcccd392e34208e69f58a89ef198d2")

        // Then
        XCTAssert(password == "U1D")
    }

    func testCrackStationPasswordThreeDigits4() {
        // Given
        let crackstation = CrackStation()

        // When
        let password = crackstation.decrypt(shaHash: "7560bcbf2a7b023a0643a9252f8c76353972e8c1")

        // Then
        XCTAssert(password == "49p")
    }


    /* For SHA256*/
    func testCrackStationPassword() {
        // Given
        let crackstation = CrackStation()

        // When
        let passwordList = [
            "aa",
            "aaa",
            "0",
            "!?",
            "A?0"
        ]

        let shaHashList = [
            "961b6dd3ede3cb8ecbaacbd68de040cd78eb2ed5889130cceb4c49268ea4d506",
            "9834876dcfb05cb167a5c24953eba58c4ac89b1adf57f28f2f9d09af107ee8f0",
            "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
            "8faf838e27d8b53956614af56e7a87d24d0bc8b650eeea9864009dcad461c6d4",
            "a0cda20ded3ea2ae4dc8fa865512c7a44f0840500a6cb8850ab14f9c4b1f98f6",
        ]

        //Then
        for i in 0...4 {
            let tempPassword = crackstation.decrypt(shaHash: shaHashList[i])
            XCTAssert(passwordList[i] == tempPassword)
        }
    }

    func testCrackStationPassword2() {
        // Given
        let crackstation = CrackStation()

        // When
        let passwordList = [
            "Zz",
            "PT",
            "u99",
            "!2o",
            "???"
        ]

        let shaHashList = [
            "da8517a4b9180acb6987e8e7582b808fc64b631cd892ed36685ded6816f60125",
            "169b032adf2ab80f3bdffbdf14358d9d72565fad7708f65c65cb4d7918a4ffb2",
            "a2ca3270b8497a88bb4dc6659f077cfcaf94e8624b83823cb4d5b99bf957ac67",
            "d852a96ecd82ea35fba1990c9c47831b532f7ed5a59ac43ca8d1bcdbe03d6220",
            "a03b221c6c6eae7122ca51695d456d5222e524889136394944b2f9763b483615",
        ]

        //Then
        for i in 0...4 {
            let tempPassword = crackstation.decrypt(shaHash: shaHashList[i])
            XCTAssert(passwordList[i] == tempPassword)
        }
    }
    
}
