
class LRUCache


    class Node
        attr_accessor :key, :val, :next, :prev
    
        def initialize(key=nil, val=nil)
            @key = key
            @val = val
            @next = nil
            @prev = nil
        end
    end



    def initialize(capacity)
        @capacity = capacity
        @cache = {}
        @head = Node.new
        @tail = Node.new
        @head.next = @tail
        @tail.prev = @head
    end

    def get(key)
        if @cache[key]
            node = @cache[key]
            remove(node)
            add(node)
            return node.val
        else
            return -1
        end
    end

    def put(key, value)
        if @cache[key]
            remove(@cache[key])
        end
        node = Node.new(key, value)
        self.add(node)
        @cache[key] = node
        if @cache.size > @capacity
            del_node = @tail.prev
            remove(del_node)
            @cache.delete(del_node.key)
        end
    end
    
    def add(node)
        tmp = @head.next
        @head.next = node
        node.prev = @head
        node.next = tmp
        tmp.prev = node
    end
    
    def remove(node)
        prev = node.prev
        nxt = node.next
        prev.next = nxt
        nxt.prev = prev
    end
end

if __FILE__ == $0

    lru_cache = LRUCache.new(ARGV[0].to_i)
    lru_cache.put(1, 1)
    lru_cache.put(2, 2)
    puts lru_cache.get(1)
    lru_cache.put(3, 3)
    puts lru_cache.get(2)
    lru_cache.put(4, 4)
    puts lru_cache.get(1)
    puts lru_cache.get(3)
    puts lru_cache.get(4)

end    