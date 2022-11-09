public enum ImageFormat {
    case png
    case jpeg(compressionQuality: Double)

    public struct FormattingError<P>: Error {
        public let image: Image<P>
        public let format: ImageFormat

        @usableFromInline
        internal init(image: Image<P>, format: ImageFormat) {
            self.image = image
            self.format = format
        }
    }
}
