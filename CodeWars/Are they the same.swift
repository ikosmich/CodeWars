import Foundation

func comp(_ a: [Int], _ b: [Int]) -> Bool {
	if a.isEmpty || b.isEmpty { return false }
	return b.sorted() == a.map { $0 * $0 }.sorted()
}
