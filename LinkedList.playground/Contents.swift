class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)

func printList(head: Node?) {
    print("Linked list is: ")
    var current = head
    while current != nil {
        print(current?.value ?? -1)
        current = current?.next
    }
}

printList(head: oneNode)

func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var prevNode: Node?
    var nextNode: Node?
    
    while currentNode != nil {
        nextNode = currentNode?.next
        currentNode?.next = prevNode
        prevNode = currentNode
        currentNode = nextNode
    }
    
    return prevNode
}

let myReversedList = reverseList(head: oneNode)

printList(head: myReversedList)
