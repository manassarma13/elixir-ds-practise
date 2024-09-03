# Stack (LIFO)
stack = []
stack = [1 | stack]  # Push 1 -> [1]
stack = [2 | stack]  # Push 2 -> [2, 1]
{top, stack} = List.pop_at(stack, 0)  # Pop -> {2, [1]}

# Queue (FIFO)
queue = :queue.new()
queue = :queue.in(1, queue)  # Enqueue 1
queue = :queue.in(2, queue)  # Enqueue 2
{{:value, first}, queue} = :queue.out(queue)  # Dequeue -> {1, queue}
