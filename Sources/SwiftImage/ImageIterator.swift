public struct ImageIterator<Pixel>: IteratorProtocol {
    public typealias Element = Pixel

    private let image: Image<Pixel>

    private var x: Int
    private var y: Int

    internal init(_ image: Image<Pixel>) {
        self.image = image

        self.x = image.xRange.lowerBound
        self.y = image.yRange.lowerBound
    }

    public mutating func next() -> Element? {
        if x == image.xRange.upperBound {
            x = image.xRange.lowerBound
            y += 1
        }

        guard y < image.yRange.upperBound else { return nil }
        defer { x += 1 }

        return image[x, y]
    }
}
