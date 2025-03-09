# LRU cache implementation

Before implementing LRU cache lets understand what is caching in general is.

> By definition, Caching is a component that stores data so that future requests for that data can be served faster.
> 

## Caching Overview

- Typically when user makes a request for a data, application will fetch the request from database (*remember making database call is expensive and time consuming*).
- If user requests for same data, the application will make database call once again. Its not so efficient.
- So in order to avoid this, if we think if the data is going to be accessed frequently, then we will put that data on to the **Cache**.
- When user tries to access the data, application will see if the data is present in cache, its present its a **cache hit**, and application will return data without making call to the DB, if it wont find the data in cache then its a **cache miss**, in this case application will fetch the data from DB.

> Cache is stored in application memory and its much faster than getting data from database.
> 

![](https://miro.medium.com/v2/resize:fit:496/1*QJFv60Du885MNzRrZ198eg.gif)

Overview of how caching works

## Concern

- One major concerns with cache is that, they come with limited size, meaning ***cache will have predefined size and its usually small**.*
- Since cache lives in application memory, and application memory comes with limited size so we do not have luxury of putting all our data into cache.

## LRU Cache

By now we know that cache comes with fixed size. So if user tries to add data to cache exceeding the size of the cache, then we need to have a mechanism where we will replace one of the older cache with new cache.

**LRU Caching** is one such mechanism, where we will keep track of access order of the cache and when user adds new cache and if the cache is full, then LRU algorithm will remove the least recently used cache from the cache to make room for new cache.

## LRU Cache Implementation

We need to consider following points while implementation

- Cache will have a fixed size.
- We need to store the order of cache access, so we will know which cache was least accessed. We will use **Linkedlist** for this.
- Typically cache comes in <key, value> pair and we should store cache data in an efficient manner, so we will be using **Hashmap** to store the cache data.
- LRU cache implementation requires 2 important methods, namely put() and get().
1. **Put(key, value)** : this will be used to add new data into the cache.
2. **Get(key)** : this is used to get the data from cache using the key.

## **Put(key, value)**

- There are 2 major scenarios we need to handle while adding a cache.
1. **Cache is Not Full** :
- If the cache is not full, then we have room to add new data, so we will simply add the data to the cache(Hashmap) and store the reference of the cache in the top of the order list(Linkedlist).

![](https://miro.medium.com/v2/resize:fit:512/1*MRxlqv8eH5OUs6cChZnYCw.gif)

Put while cache is not full

2. **Cache is Full**

- If cache is full, then we do not have room to add new data. In order to create room we will remove the last element from order list (Last element is the least recently accessed cache) and also remove the data from the hashmap which was point to last cache.
- Once we remove the least recently used cache, we get room for new data, so we will add the new data to cache(Hashmap) and store the reference of the cache in the top of the order list(Linked list).

![](https://miro.medium.com/v2/resize:fit:525/1*310W7roLQxDIDo1NBr56Fg.gif)

Cache put() while cache is full

## **Get(key)**

This is the most easiest step in the implementation, and this step is used to get the data from cache using a key.

The Process is very simple, we check if the cache(Hashmp) has the date for the given key, if so we will return the data if not we will return null.

But there is an extra step here, which is updating the order of the newly accessed cache. This ensures that frequently accessed cache is on top of the list, and will be the last one to be replaced by another in coming new data.

## Coding Example

Enough theory, lets get our hands little dirty and write some code. In the following example lets create a LRU cache which stores the integer as key and String as a value.

To start using the cache you need to instantiate the LRUCacheImpl class with your desired size. (look at the main method in the code)

Use put() to add new cache and get() to get the cache value.