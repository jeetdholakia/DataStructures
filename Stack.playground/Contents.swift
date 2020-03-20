// Stack using Linked list
public class Stack<Element> {
    var top: Node<Element>?
    
    func push(_ value: Element) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> Element? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> Element? {
        return top?.value
    }
}
 
// Stack using LinkedList
class Node<Element> {
    var value: Element
    var next: Node?
    
    init(value: Element) {
        self.value = value
    }
}
