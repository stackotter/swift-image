import XCTest
import SwiftImage
#if canImport(AppKit) && canImport(CoreGraphics)
import CoreGraphics
import AppKit
#endif

class AppKitTests: XCTestCase {
    func testInitWithNSImage() {
        #if canImport(AppKit) && canImport(CoreGraphics)
        do {
            let nsImage = NSImage(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png"))!
            let image = Image<RGBA<UInt8>>(nsImage: nsImage)

            XCTAssertEqual(image.width, 2)
            XCTAssertEqual(image.height, 2)

            XCTAssertEqual(image[0, 0].red,    255)
            XCTAssertEqual(image[0, 0].green,    0)
            XCTAssertEqual(image[0, 0].blue,     0)
            XCTAssertEqual(image[0, 0].alpha,   64)

            XCTAssertEqual(image[1, 0].red,      0)
            XCTAssertEqual(image[1, 0].green, 255)
            XCTAssertEqual(image[1, 0].blue,     0)
            XCTAssertEqual(image[1, 0].alpha, 127)

            XCTAssertEqual(image[0, 1].red,      0)
            XCTAssertEqual(image[0, 1].green,    0)
            XCTAssertEqual(image[0, 1].blue,   255)
            XCTAssertEqual(image[0, 1].alpha, 191)

            XCTAssertEqual(image[1, 1].red,    255)
            XCTAssertEqual(image[1, 1].green, 255)
            XCTAssertEqual(image[1, 1].blue,     0)
            XCTAssertEqual(image[1, 1].alpha, 255)
        }

        do { // `ImageSlice`
            let nsImage = NSImage(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png"))!
            let slice = ImageSlice<RGBA<UInt8>>(nsImage: nsImage)

            XCTAssertEqual(slice.width, 2)
            XCTAssertEqual(slice.height, 2)

            XCTAssertEqual(slice[0, 0].red,    255)
            XCTAssertEqual(slice[0, 0].green,    0)
            XCTAssertEqual(slice[0, 0].blue,     0)
            XCTAssertEqual(slice[0, 0].alpha,   64)

            XCTAssertEqual(slice[1, 0].red,      0)
            XCTAssertEqual(slice[1, 0].green, 255)
            XCTAssertEqual(slice[1, 0].blue,     0)
            XCTAssertEqual(slice[1, 0].alpha, 127)

            XCTAssertEqual(slice[0, 1].red,      0)
            XCTAssertEqual(slice[0, 1].green,    0)
            XCTAssertEqual(slice[0, 1].blue,   255)
            XCTAssertEqual(slice[0, 1].alpha, 191)

            XCTAssertEqual(slice[1, 1].red,    255)
            XCTAssertEqual(slice[1, 1].green, 255)
            XCTAssertEqual(slice[1, 1].blue,     0)
            XCTAssertEqual(slice[1, 1].alpha, 255)
        }

        do { // `PremultipliedRGBA`
            let nsImage = NSImage(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png"))!
            let image = Image<PremultipliedRGBA<UInt8>>(nsImage: nsImage)

            XCTAssertEqual(image.width, 2)
            XCTAssertEqual(image.height, 2)

            XCTAssertEqual(image[0, 0].red,     64)
            XCTAssertEqual(image[0, 0].green,    0)
            XCTAssertEqual(image[0, 0].blue,     0)
            XCTAssertEqual(image[0, 0].alpha,   64)

            XCTAssertEqual(image[1, 0].red,      0)
            XCTAssertEqual(image[1, 0].green, 127)
            XCTAssertEqual(image[1, 0].blue,     0)
            XCTAssertEqual(image[1, 0].alpha, 127)

            XCTAssertEqual(image[0, 1].red,      0)
            XCTAssertEqual(image[0, 1].green,    0)
            XCTAssertEqual(image[0, 1].blue,   191)
            XCTAssertEqual(image[0, 1].alpha, 191)

            XCTAssertEqual(image[1, 1].red,    255)
            XCTAssertEqual(image[1, 1].green, 255)
            XCTAssertEqual(image[1, 1].blue,     0)
            XCTAssertEqual(image[1, 1].alpha, 255)
        }

        do { // With `NSImage` from `CGImage`
            let dataProvider = CGDataProvider.init(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")) as CFData)!
            let cgImage = CGImage(pngDataProviderSource: dataProvider, decode: nil, shouldInterpolate: false, intent: .defaultIntent)!
            let nsImage = NSImage(cgImage: cgImage, size: .zero)
            let image = Image<RGBA<UInt8>>(nsImage: nsImage)

            XCTAssertEqual(image.width, 2)
            XCTAssertEqual(image.height, 2)

            XCTAssertEqual(255, image[0, 0].red)
            XCTAssertEqual(  0, image[0, 0].green)
            XCTAssertEqual(  0, image[0, 0].blue)
            XCTAssertEqual( 64, image[0, 0].alpha)

            XCTAssertEqual(  0, image[1, 0].red)
            XCTAssertEqual(255, image[1, 0].green)
            XCTAssertEqual(  0, image[1, 0].blue)
            XCTAssertEqual(127, image[1, 0].alpha)

            XCTAssertEqual(  0, image[0, 1].red)
            XCTAssertEqual(  0, image[0, 1].green)
            XCTAssertEqual(255, image[0, 1].blue)
            XCTAssertEqual(191, image[0, 1].alpha)

            XCTAssertEqual(255, image[1, 1].red)
            XCTAssertEqual(255, image[1, 1].green)
            XCTAssertEqual(  0, image[1, 1].blue)
            XCTAssertEqual(255, image[1, 1].alpha)
        }

        do { // With `NSImage` from `CIImage`
            if #available(macOS 10.12, *) {
                let ciImage = CIImage(color: CIColor.red).cropped(to: CGRect(x: 0, y: 0, width: 1, height: 1))
                let rep = NSCIImageRep(ciImage: ciImage)
                let nsImage = NSImage(size: rep.size)
                nsImage.addRepresentation(rep)
                let image = Image<RGBA<UInt8>>(nsImage: nsImage)

                XCTAssertEqual(image.width, 1)
                XCTAssertEqual(image.height, 1)

                XCTAssertEqual(255, image[0, 0].red)
                XCTAssertEqual(  0, image[0, 0].green)
                XCTAssertEqual(  0, image[0, 0].blue)
                XCTAssertEqual(255, image[0, 0].alpha)
            }
        }

        do { // With `NSImage` whose `cgImage` is `nil`
            let nsImage = NSImage()
            let image = Image<RGBA<UInt8>>(nsImage: nsImage)

            XCTAssertEqual(image.width, 0)
            XCTAssertEqual(image.height, 0)
        }
        #endif
    }

    func testNSImage() {
        #if canImport(AppKit) && canImport(CoreGraphics)
        do {
            let original = Image<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51)
            ])
            let nsImage = original.nsImage
            XCTAssertEqual(nsImage.size.width, CGFloat(original.width))
            XCTAssertEqual(nsImage.size.height, CGFloat(original.height))

            let restored = Image<RGBA<UInt8>>(nsImage: nsImage)
            XCTAssertEqual(restored, original)
        }

        do {
            let original = Image<PremultipliedRGBA<UInt8>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                PremultipliedRGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51)
            ])
            let nsImage = original.nsImage
            XCTAssertEqual(nsImage.size.width, CGFloat(original.width))
            XCTAssertEqual(nsImage.size.height, CGFloat(original.height))

            let restored = Image<PremultipliedRGBA<UInt8>>(nsImage: nsImage)
            XCTAssertEqual(restored, original)
        }

        do {
            let original = Image<UInt8>(width: 2, height: 2, pixels: [0, 1, 127, 255])
            let nsImage = original.nsImage
            XCTAssertEqual(nsImage.size.width, CGFloat(original.width))
            XCTAssertEqual(nsImage.size.height, CGFloat(original.height))

            let restored = Image<UInt8>(nsImage: nsImage)
            XCTAssertEqual(restored, original)
        }

        do { // `ImageSlice`
            let original = ImageSlice<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51)
            ])
            let nsImage = original.nsImage
            XCTAssertEqual(nsImage.size.width, CGFloat(original.width))
            XCTAssertEqual(nsImage.size.height, CGFloat(original.height))

            let restored = ImageSlice<RGBA<UInt8>>(nsImage: nsImage)
            XCTAssertEqual(restored, original)
        }
        #endif
    }

    func testNSImageTiffRepresentation() {
        #if canImport(AppKit) && canImport(CoreGraphics)
        do {
            let original = Image<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51)
            ])
            let nsImage = original.nsImage
            let data = nsImage.tiffRepresentation!

            let nsRestored = NSImage(data: data)!
            XCTAssertEqual(nsRestored.size.width, CGFloat(original.width))
            XCTAssertEqual(nsRestored.size.height, CGFloat(original.height))

            let restored = Image<RGBA<UInt8>>(nsImage: nsRestored)
            XCTAssertEqual(restored, original)
        }

        do {
            let original = Image<UInt8>(width: 2, height: 2, pixels: [0, 1, 127, 255])
            let nsImage = original.nsImage
            let data = nsImage.tiffRepresentation!

            let nsRestored = NSImage(data: data)!
            XCTAssertEqual(nsRestored.size.width, CGFloat(original.width))
            XCTAssertEqual(nsRestored.size.height, CGFloat(original.height))

            let restored = Image<UInt8>(nsImage: nsRestored)
            XCTAssertEqual(restored, original)
        }
        #endif
    }

    func testInitWithNSImagePerformance() {
        #if canImport(AppKit) && canImport(CoreGraphics)
        let original = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: RGBA<UInt8>(
            red: .random(in: 0...255),
            green: .random(in: 0...255),
            blue: .random(in: 0...255),
            alpha: 255
        ))
        let nsImage = original.nsImage

        var restored: Image<RGBA<UInt8>>! = nil
        measure {
            restored = Image<RGBA<UInt8>>(nsImage: nsImage)
        }
        XCTAssertEqual(restored, original)
        #endif
    }

    func testNSImagePerformance() {
        #if canImport(AppKit) && canImport(CoreGraphics)
        let original = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: RGBA<UInt8>(
            red: .random(in: 0...255),
            green: .random(in: 0...255),
            blue: .random(in: 0...255),
            alpha: 255
        ))

        var nsImage: NSImage!
        measure {
            nsImage = original.nsImage
        }
        let restored = Image<RGBA<UInt8>>(nsImage: nsImage)
        XCTAssertEqual(restored, original)
        #endif
    }
}
