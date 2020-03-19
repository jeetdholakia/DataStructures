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
    print("Printing out list of nodes")
}

printList(head: oneNode)
