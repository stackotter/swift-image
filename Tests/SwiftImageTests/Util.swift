import XCTest
import SwiftImage

internal func XCTAssertEqual<I: ImageProtocol, F: FloatingPoint>(
    _ expression1: @autoclosure () throws -> I,
    _ expression2: @autoclosure () throws -> I,
    accuracy: F,
    _ message: @autoclosure () -> String = "",
    file: StaticString = #file,
    line: UInt = #line
) where I.Pixel == F {
    do {
        let e1 = try expression1()
        let e2 = try expression2()
        let m = message()

        XCTAssertEqual(e1.width, e2.width, m == "" ? "width" : "\(m) (width)", file: file, line: line)
        XCTAssertEqual(e1.height, e2.height, m == "" ? "height" : "\(m) (height)", file: file, line: line)

        for (y1, y2) in zip(e1.yRange, e2.yRange) {
            for (x1, x2) in zip(e1.xRange, e2.xRange) {
                XCTAssertEqual(e1[x1, y1], e2[x2, y2], accuracy: accuracy, m == "" ? "[\(x1), \(y1)], [\(x2), \(y2)]" : "\(m) ([\(x1), \(y1)], [\(x2), \(y2)])", file: file, line: line)
            }
        }
    } catch let error {
        XCTAssertThrowsError(error, message(), file: file, line: line)
    }
}

internal func XCTAssertEqual<I: ImageProtocol, F: FloatingPoint>(
    _ expression1: @autoclosure () throws -> I,
    _ expression2: @autoclosure () throws -> I,
    accuracy: F,
    _ message: @autoclosure () -> String = "",
    file: StaticString = #file,
    line: UInt = #line
) where I.Pixel == RGBA<F> {
    do {
        let e1 = try expression1()
        let e2 = try expression2()
        let m = message()

        XCTAssertEqual(e1.width, e2.width, m == "" ? "width" : "\(m) (width)", file: file, line: line)
        XCTAssertEqual(e1.height, e2.height, m == "" ? "height" : "\(m) (height)", file: file, line: line)

        for (y1, y2) in zip(e1.yRange, e2.yRange) {
            for (x1, x2) in zip(e1.xRange, e2.xRange) {
                XCTAssertEqual(e1[x1, y1], e2[x2, y2], accuracy: accuracy, m == "" ? "[\(x1), \(y1)], [\(x2), \(y2)]" : "\(m) ([\(x1), \(y1)], [\(x2), \(y2)])", file: file, line: line)
            }
        }
    } catch let error {
        XCTAssertThrowsError(error, message(), file: file, line: line)
    }
}

internal func XCTAssertEqual<F: FloatingPoint>(
    _ expression1: @autoclosure () throws -> RGB<F>,
    _ expression2: @autoclosure () throws -> RGB<F>,
    accuracy: F,
    _ message: @autoclosure () -> String = "",
    file: StaticString = #file,
    line: UInt = #line
    ) {
    do {
        let e1 = try expression1()
        let e2 = try expression2()
        let m = message()

        XCTAssertEqual(e1.red, e2.red, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.green, e2.green, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.blue, e2.blue, accuracy: accuracy, m, file: file, line: line)
    } catch let error {
        XCTAssertThrowsError(error, message(), file: file, line: line)
    }
}

internal func XCTAssertEqual<F: FloatingPoint>(
    _ expression1: @autoclosure () throws -> RGBA<F>,
    _ expression2: @autoclosure () throws -> RGBA<F>,
    accuracy: F,
    _ message: @autoclosure () -> String = "",
    file: StaticString = #file,
    line: UInt = #line
) {
    do {
        let e1 = try expression1()
        let e2 = try expression2()
        let m = message()

        XCTAssertEqual(e1.red, e2.red, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.green, e2.green, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.blue, e2.blue, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.alpha, e2.alpha, accuracy: accuracy, m, file: file, line: line)
    } catch let error {
        XCTAssertThrowsError(error, message(), file: file, line: line)
    }
}

internal func XCTAssertEqual<F: FloatingPoint>(
    _ expression1: @autoclosure () throws -> PremultipliedRGBA<F>,
    _ expression2: @autoclosure () throws -> PremultipliedRGBA<F>,
    accuracy: F,
    _ message: @autoclosure () -> String = "",
    file: StaticString = #file,
    line: UInt = #line
) {
    do {
        let e1 = try expression1()
        let e2 = try expression2()
        let m = message()

        XCTAssertEqual(e1.red, e2.red, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.green, e2.green, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.blue, e2.blue, accuracy: accuracy, m, file: file, line: line)
        XCTAssertEqual(e1.alpha, e2.alpha, accuracy: accuracy, m, file: file, line: line)
    } catch let error {
        XCTAssertThrowsError(error, message(), file: file, line: line)
    }
}

internal struct GeneralError: Error {
    let message: String? = nil
}
