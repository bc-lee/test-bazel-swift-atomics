import Atomics
import Dispatch

print("Hello, world!")

let counter = ManagedAtomic<Int>(0)

DispatchQueue.concurrentPerform(iterations: 10) { _ in
  for _ in 0..<1_000 {
    counter.wrappingIncrement(ordering: .relaxed)
  }
}

print("Counter: \(counter.load(ordering: .relaxed))")
