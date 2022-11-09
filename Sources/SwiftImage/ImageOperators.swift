// extension Image where Element: Numeric {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// }
// 
// extension Image where Element: SignedNumeric {
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element: BinaryInteger {
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// }
// 
// extension Image where Element: FixedWidthInteger {
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// }
// 
// extension Image where Element: FloatingPoint {
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// }
// 
// extension Image: Equatable where Pixel: Equatable {
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// }
// 
// extension Image where Element: Comparable {
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<Bool> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<Bool> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<Bool> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<Bool> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// }
// 
// extension Image where Element == Bool {
//     @inlinable
//     public static func &&(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 && $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ||(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 || $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func !(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { !$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Int> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// 
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Int8> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// 
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Int16> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// 
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Int32> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// 
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Int64> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// 
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element == RGBA<UInt> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// }
// 
// extension Image where Element == RGBA<UInt8> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// }
// 
// extension Image where Element == RGBA<UInt16> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// }
// 
// extension Image where Element == RGBA<UInt32> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// }
// 
// extension Image where Element == RGBA<UInt64> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func %(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 % $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 & $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func |(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 | $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ^(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 ^ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 << $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &+(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &+ $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &-(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &- $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &*(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &* $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &<<(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &<< $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func &>>(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 &>> $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func %=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] %= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func |=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] |= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ^=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] ^= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func <<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] <<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func >>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] >>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &<<=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &<<= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func &>>=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] &>>= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Float> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// 
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Double> {
//     @inlinable
//     public static func +(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 + $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func -(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 - $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func *(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 * $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func /(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 / $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func +=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] += rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func -=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] -= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func *=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] *= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func /=(lhs: inout Self, rhs: Image<Element>) {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
//             for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
//                 lhs[x1, y1] /= rhs[x2, y2]
//             }
//         }
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// 
//     @inlinable
//     public static func <(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 < $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func <=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 <= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 > $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func >=(lhs: Image<Element>, rhs: Image<Element>) -> Image<RGBA<Bool>> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 >= $1 }
//         return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     prefix public static func +(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { +$0 })
//     }
// 
//     @inlinable
//     prefix public static func -(a: Self) -> Image<Element> {
//         return Image<Element>(width: a.width, height: a.height, pixels: a.map { -$0 })
//     }
// }
// 
// extension Image where Element == RGBA<Bool> {
//     @inlinable
//     public static func &&(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 && $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ||(lhs: Image<Element>, rhs: Image<Element>) -> Image<Element> {
//         precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
//         let pixels = zip(lhs, rhs).map { $0 || $1 }
//         return Image(width: lhs.width, height: lhs.height, pixels: pixels)
//     }
// 
//     @inlinable
//     public static func ==(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
//         return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
//     }
// 
//     @inlinable
//     public static func !=(lhs: Image<Element>, rhs: Image<Element>) -> Bool {
//         guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
//         return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
//     }
// }
