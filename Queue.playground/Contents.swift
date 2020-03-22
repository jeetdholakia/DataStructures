public protocol Queue {
    associatedtype Element
    mutating func enqueue(_ value: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

//Array based queue
public struct QueueArray<Element>: Queue {
    private var array: [Element] = []
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public var peek: Element? {
        return array.first
    }
    
    public init() {}
    
    public mutating func enqueue(_ value: Element) {
        array.append(value)
    }
    
    public mutating func dequeue() -> Element? {
        return isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
  public var description: String {
    return String(describing: array)
  }
}

var queue = QueueArray<String>()
queue.enqueue("Halo")
queue.enqueue("RDR2")
queue.enqueue("Gears5")
queue
queue.peek
