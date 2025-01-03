import Combine
import CombineSchedulers
import CombineSchedulersPOC
import XCTest

final class CombineSchedulersPOCTests: XCTestCase {

    func test() async {
        let startTime = CFAbsoluteTimeGetCurrent()
        var testSubject = PassthroughSubject<Bool, Error>()
        let test = DispatchQueue.test

        print("##### INITIALIZED #####")
        print(CFAbsoluteTimeGetCurrent() - startTime)

        testSubject.send(true)
        print("##### sent true #####")
        print(CFAbsoluteTimeGetCurrent() - startTime)

        testSubject.send(completion: .finished)
        print("##### sent finished #####")
        print(CFAbsoluteTimeGetCurrent() - startTime)

        await test.advance()
        print("##### advance #####")
        print(CFAbsoluteTimeGetCurrent() - startTime)
    }

}
