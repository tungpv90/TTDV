struct Point {
    let x: Double
    let y: Double

    // Store property
    static let zero = Point(x: 0, y: 0)

    // Calculate property
    static var ones: [Point] {
        return [Point(x: 1, y: 1),
                Point(x: -1, y: 1),
                Point(x: 1, y: -1),
                Point(x: -1, y: -1)]
    }
	static

    // Type method
    static func add(p1: Point, p2: Point) -> Point {
        return Point(x: p1.x + p2.x, y: p1.y + p2.y)
    }
}