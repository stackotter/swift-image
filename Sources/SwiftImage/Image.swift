public struct Image<Pixel>: Sequence {
    public typealias Element = Pixel
    public typealias Iterator = ImageIterator<Pixel>

    public let width: Int
    public let height: Int

    @usableFromInline internal var pixels: [Pixel]

    @_specialize(exported: true, where Pixel==RGBA<UInt8>)
    public init(width: Int, height: Int, pixels: [Pixel]) {
        precondition(width >= 0, "`width` must be greater than or equal to 0: \(width)")
        precondition(height >= 0, "`height` must be greater than or equal to 0: \(height)")
        let count = width * height
        precondition(pixels.count == count, "`pixels.count` (\(pixels.count)) must be equal to `width` (\(width)) * `height` (\(height)) (= \(count)).")

        self.width = width
        self.height = height
        self.pixels = pixels
    }

    public var xRange: Range<Int> {
        return 0..<width
    }

    public var yRange: Range<Int> {
        return 0..<height
    }

    public subscript(x: Int, y: Int) -> Pixel {
        @_specialize(exported: true, where Pixel==RGBA<UInt8>)
        get {
            return pixels[pixelIndexAt(x: x, y: y)]
        }
        @_specialize(exported: true, where Pixel==RGBA<UInt8>)
        set {
            pixels[pixelIndexAt(x: x, y: y)] = newValue
        }
    }

    public func makeIterator() -> IndexingIterator<[Pixel]> {
        return pixels.makeIterator()
    }

    public func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Pixel>) throws -> R) rethrows -> R {
        return try pixels.withUnsafeBufferPointer(body)
    }

    public mutating func withUnsafeMutableBufferPointer<R>(_ body: (inout UnsafeMutableBufferPointer<Pixel>) throws -> R) rethrows -> R {
        return try pixels.withUnsafeMutableBufferPointer(body)
    }

    public func withUnsafeBytes<R>(_ body: (UnsafeRawBufferPointer) throws -> R) rethrows -> R {
        return try pixels.withUnsafeBytes(body)
    }

    public mutating func withUnsafeMutableBytes<R>(_ body: (UnsafeMutableRawBufferPointer) throws -> R) rethrows -> R {
        return try pixels.withUnsafeMutableBytes(body)
    }

    internal func pixelIndexAt(x: Int, y: Int) -> Int {
        precondition(xRange.contains(x), "`x` is out of bounds: \(x)")
        precondition(yRange.contains(y), "`y` is out of bounds: \(y)")
        return y * width + x
    }

    public func makeIterator() -> ImageIterator<Pixel> {
        return ImageIterator(self)
    }

    public init() {
        self.init(width: 0, height: 0, pixels: [])
    }

    public init(pixel: Pixel) {
        self.init(width: 1, height: 1, pixel: pixel)
    }

    public init(width: Int, height: Int, pixel: Pixel) {
        self.init(width: width, height: height, pixels: [Pixel](repeating: pixel, count: width * height))
    }

    public init<S: Sequence>(width: Int, height: Int, pixels: S) where S.Element == Pixel {
        self.init(width: width, height: height, pixels: Array(pixels))
    }

    public init(_ image: Image<Pixel>) {
        self.init(width: image.width, height: image.height, pixels: image)
    }

    public init(width: Int, height: Int, pixelAt: (_ x: Int, _ y: Int) throws -> Pixel) rethrows {
        let pixelCount = width * height
        let pixels = try [Pixel](unsafeUninitializedCapacity: pixelCount) { buffer, count in
            var i = 0
            for y in 0..<height {
                for x in 0..<width {
                    buffer[i] = try pixelAt(x, y)
                    i += 1
                }
            }
            count = pixelCount
        }

        self.init(width: width, height: height, pixels: pixels)
    }

    public var count: Int {
        return width * height
    }

    public func pixelAt(x: Int, y: Int) -> Pixel? {
        guard xRange.contains(x) else { return nil }
        guard yRange.contains(y) else { return nil }
        return self[x, y]
    }

    public func transposed() -> Image<Pixel> {
        var pixels = [Pixel]()
        pixels.reserveCapacity(count)

        for x in xRange {
            for y in yRange {
                pixels.append(self[x, y])
            }
        }

        return Image(width: height, height: width, pixels: pixels)
    }

    public func xReversed() -> Image<Pixel> {
        var pixels = [Pixel]()
        pixels.reserveCapacity(count)

        for y in yRange {
            for x in xRange.reversed() {
                pixels.append(self[x, y])
            }
        }

        return Image(width: width, height: height, pixels: pixels)
    }

    public func yReversed() -> Image<Pixel> {
        var pixels = [Pixel]()
        pixels.reserveCapacity(count)

        for y in yRange.reversed() {
            for x in xRange {
                pixels.append(self[x, y])
            }
        }

        return Image(width: width, height: height, pixels: pixels)
    }
}
