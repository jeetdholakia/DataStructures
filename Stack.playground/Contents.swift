public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}
}

extension Stack: CustomStringConvertible {

  public var description: String {
    let topDivider = "----top----\n"
    let bottomDivider = "\n-----------"

    let stackElements = storage
      .map { "\($0)" }
      .reversed()
      .joined(separator: "\n")
    return topDivider + stackElements + bottomDivider
  }
}
 
