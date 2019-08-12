## Mmuze Coding Task


Design and implement a data structure for Least Recently Used (LRU) cache program in Java (or any other language if you prefer).
 It should support the following operations: get and put.

get(key) - Get the value (the value will always be positive) of the key if the key exists in the cache, otherwise return -1.

put(key, value) - Set or insert the value if the key is not already present. When the cache reached its capacity, it should invalidate the least recently used item before inserting a new item.

The cache is initialized with a positive capacity.


**Remarks**

•	Make your own implementation for the LRU and don’t use any library or an    external source. 

•	We won’t check for bad input in any of the steps. 

•	We won’t time your implementation or test it against other implementations. But, the time complexity of your solution should be reasonable.


**Bonus**

 Implement both operations in O(1) time complexity



**Example**

LRUCache cache = new LRUCache( 2 /* capacity */ );

cache.put(1, 1);

cache.put(2, 2);

cache.get(1);       // returns 1

cache.put(3, 3);    // evicts key 2

cache.get(2);       // returns -1 (not found)

cache.put(4, 4);    // evicts key 1

cache.get(1);       // returns -1 (not found)

cache.get(3);       // returns 3

cache.get(4);       // returns 4




**Good luck!**
