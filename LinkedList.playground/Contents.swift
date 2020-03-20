class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

func printList(head: Node?) {
    print("Linked list is: ")
    var current = head
    while current != nil {
        print(current?.value ?? -1)
        current = current?.next
    }
}


// Let's implement a Linked List (Insert and Delete)

class LinkedList {
    
    var head: Node?
    
    func insert() {}
    
    func displayList() {
        print("Linked list is: ")
        var current = self.head
        while current != nil {
            print(current?.value ?? -1)
            current = current?.next
        }
    }
    
    func insert(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
        } else {
            var currentNode = self.head
            while currentNode?.next != nil {
                currentNode = currentNode?.next
            }
            
            currentNode?.next = Node(value: value, next: nil)
        }
    }
    
    func delete(value: Int) -> Node? {
        if head?.value == value {
            head = head?.next
        }
        
        var currentNode = self.head
        var previousNode: Node?
        
        while currentNode != nil && currentNode?.value != value {
            previousNode = currentNode
            currentNode = currentNode?.next
        }
        
        previousNode?.next = currentNode?.next
        return nil
    }
    
    func insertInOrder(value: Int) {
        if head == nil || head?.value ?? Int.min >= value{
            head = Node(value: value, next: nil)
            return
        }
        var currentNode = head
        while  currentNode != nil && currentNode?.next?.value ?? Int.min < value  {
            //currentNode?.next = Node(value: value, next: currentNode?.next)
            currentNode = currentNode?.next
        }
        
        currentNode?.next = Node(value: value, next: currentNode?.next)
        
    }
}


let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)


let sampleList = LinkedList()
sampleList.head = oneNode
sampleList.insert(value: 4)
sampleList.insert(value: 5)
sampleList.displayList()
sampleList.delete(value: 3)
sampleList.displayList()
sampleList.insertInOrder(value: 3)
sampleList.displayList()


/* PROBLEM SOLVING :-
 * Reversing a linked list
 */
//printList(head: oneNode)

//func reverseList(head: Node?) -> Node? {
//    var currentNode = head
//    var prevNode: Node?
//    var nextNode: Node?
//
//    while currentNode != nil {
//        nextNode = currentNode?.next
//        currentNode?.next = prevNode
//        prevNode = currentNode
//        currentNode = nextNode
//    }
//
//    return prevNode
//}
//
//let myReversedList = reverseList(head: oneNode)
//
//printList(head: myReversedList)
