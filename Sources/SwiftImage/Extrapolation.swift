public enum ExtrapolationMethod<Pixel> {
    case constant(Pixel)
    case edge
    case `repeat`
    case reflection
}

private func reminder(_ a: Int, _ b: Int) -> Int {
    let result = a % b
    return result < 0 ? result + b : result
}

extension Image {
    public subscript(x: Int, y: Int, extrapolation extrapolationMethod: ExtrapolationMethod<Pixel>) -> Pixel {
        switch extrapolationMethod {
        case .constant(let value):
            return extrapolatedPixelByFillingAt(x: x, y: y, by: value)
        case .edge:
            return extrapolatedPixelByEdgeAt(x: x, y: y, xRange: ClosedRange(xRange), yRange: ClosedRange(yRange))
        case .repeat:
            return extrapolatedPixelByRepeatAt(x: x, y: y, minX: xRange.lowerBound, minY: yRange.lowerBound, width: width, height: height)
        case .reflection:
            let doubleWidth = width * 2
            let doubleHeight = height * 2
            return extrapolatedPixelByReflectionAt(
                x: x,
                y: y,
                minX: xRange.lowerBound,
                minY: yRange.lowerBound,
                doubleWidth: doubleWidth,
                doubleHeight: doubleHeight,
                doubleWidthMinusOne: doubleWidth - 1,
                doubleHeightMinusOne: doubleHeight - 1
            )
        }
    }

    @usableFromInline
    internal func extrapolatedPixelByFillingAt(x: Int, y: Int, by value: Pixel) -> Pixel {
        guard xRange.contains(x) && yRange.contains(y) else {
            return value
        }
        return self[x, y]
    }

    @usableFromInline
    internal func extrapolatedPixelByEdgeAt(x: Int, y: Int, xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> Pixel {
        return self[clamp(x, lower: xRange.lowerBound, upper: xRange.upperBound), clamp(y, lower: yRange.lowerBound, upper: yRange.upperBound)]
    }

    @usableFromInline
    internal func extrapolatedPixelByRepeatAt(x: Int, y: Int, minX: Int, minY: Int, width: Int, height: Int) -> Pixel {
        let x2 = reminder(x - minX, width) + minX
        let y2 = reminder(y - minY, height) + minY
        return self[x2, y2]
    }

    @usableFromInline
    internal func extrapolatedPixelByReflectionAt(
        x: Int,
        y: Int,
        minX: Int,
        minY: Int,
        doubleWidth: Int,
        doubleHeight: Int,
        doubleWidthMinusOne: Int,
        doubleHeightMinusOne: Int
    ) -> Pixel {
        let width = self.width
        let height = self.height
        let x2 = reminder(x - minX, doubleWidth)
        let y2 = reminder(y - minY, doubleHeight)
        let x3 = (x2 < width ? x2 : doubleWidthMinusOne - x2) + minX
        let y3 = (y2 < height ? y2 : doubleHeightMinusOne - y2) + minY
        return self[x3, y3]
    }
}
