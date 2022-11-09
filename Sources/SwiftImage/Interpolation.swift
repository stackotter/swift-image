import Foundation

public enum InterpolationMethod {
    case nearestNeighbor
    case bilinear
    // case bicubic // Unimplemented yet
}

extension Image {
    public subscript(x: Double, y: Double) -> Pixel {
        return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, extrapolation extrapolationMethod: ExtrapolationMethod<Pixel>) -> Pixel {
        return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolation: extrapolationMethod] }
    }

    internal func interpolatedPixelByNearestNeighbor(x: Double, y: Double, pixelAt: (Int, Int) -> Pixel) -> Pixel {
        let xi = Int(round(x))
        let yi = Int(round(y))
        return pixelAt(xi, yi)
    }
}

extension Image where Pixel: _NumericPixel {
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Double, y: Double) -> Pixel {
        return interpolatedPixelByBilinear(x: x, y: y) { self[$0, $1] }
    }

    public subscript(x: Double, y: Double, interpolation interpolationMethod: InterpolationMethod) -> Pixel {
        switch interpolationMethod {
        case .nearestNeighbor:
            return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
        case .bilinear:
            return interpolatedPixelByBilinear(x: x, y: y) { self[$0, $1] }
        }
    }

    public subscript(x: Double, y: Double, extrapolation extrapolationMethod: ExtrapolationMethod<Pixel>) -> Pixel {
        return interpolatedPixelByBilinear(x: x, y: y) { self[$0, $1, extrapolation: extrapolationMethod] }
    }

    public subscript(x: Double, y: Double, interpolation interpolationMethod: InterpolationMethod, extrapolation extrapolationMethod: ExtrapolationMethod<Pixel>) -> Pixel {
        switch interpolationMethod {
        case .nearestNeighbor:
            return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolation: extrapolationMethod] }
        case .bilinear:
            return interpolatedPixelByBilinear(x: x, y: y) { self[$0, $1, extrapolation: extrapolationMethod] }
        }
    }

    internal func interpolatedPixelByBilinear(
        x: Double,
        y: Double,
        pixelAt: (Int, Int) -> Pixel
    ) -> Pixel {
        let x0 = Int(floor(x))
        let y0 = Int(floor(y))
        let x1 = Int(ceil(x))
        let y1 = Int(ceil(y))

        let v00 = pixelAt(x0, y0)
        let v01 = pixelAt(x1, y0)
        let v10 = pixelAt(x0, y1)
        let v11 = pixelAt(x1, y1)

        let wx = x - Double(x0)
        let wy = y - Double(y0)
        let w00 = (1.0 - wx) * (1.0 - wy)
        let w01 = wx * (1.0 - wy)
        let w10 = (1.0 - wx) * wy
        let w11 = wx * wy

        return Pixel.init(
            _ez_additiveDouble: Pixel._ez_productDouble(v00._ez_additiveDouble, w00)
                + Pixel._ez_productDouble(v01._ez_additiveDouble, w01)
                + Pixel._ez_productDouble(v10._ez_additiveDouble, w10)
                + Pixel._ez_productDouble(v11._ez_additiveDouble, w11)
        )
    }
}
