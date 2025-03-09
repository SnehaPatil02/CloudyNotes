# 75 LeetCode problems

1, 121, 238, 53, 153, 33, 560, 88, 448, 

LeetCode company wise questions➖

[https://github.com/krishnadey30/LeetCode-Questions-CompanyWise](https://github.com/krishnadey30/LeetCode-Questions-CompanyWise)

[https://github.com/hxu296/leetcode-company-wise-problems-2022](https://github.com/hxu296/leetcode-company-wise-problems-2022)

IHappy Coding!

### **Array**

- [Two Sum](https://leetcode.com/problems/two-sum/)

```java
Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

class Solution {
    public int[] twoSum(int[] nums, int target) {
        int output[] = new int[2];
        for(int i=0; i<nums.length; i++){
            for(int j=i+1; j<nums.length; j++)
            if(nums[i]+nums[j] == target){
                output[0] = i;
                output[1] = j; 
            }
        }
        return output;
    }
}

-------------------------------------------------------------------------------

class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> map = new HashMap<>();

        for(int i=0; i<nums.length; i++){
            map.put(nums[i], i);
        }

        for(int i=0; i<nums.length; i++){
            int k = target - nums[i];
            if(map.containsKey(k) && map.get(k) != i){
                return new int[]{i, map.get(k)};
            }
        }
        return new int[]{};
    }
}
```

- [Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)

```java
Example 1:

Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
Example 2:

Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.

class Solution {
    public int maxProfit(int[] prices) {
        int max = 0;
        int buy = prices[0];

        for(int i=1; i<prices.length; i++){
                if(prices[i] < buy){
                    buy = prices[i];
                }else if(prices[i] - buy > max){
                    max = prices[i] - buy;
                }  
            }
        return max;
    }
}
```

- [Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)

```java
Example 1:

Input: nums = [1,2,3,1] '
Output: true
Example 2:

Input: nums = [1,2,3,4]
Output: false

class Solution {
    public boolean containsDuplicate(int[] nums) {
        Map<Integer, Integer> map = new HashMap<>();
        
        for(int i=0; i<nums.length; i++){
            if(map.containsKey(nums[i]) && map.get(nums[i]) >= 1){
                return true;
            }
                map.put(nums[i], map.getOrDefault(nums[i], 0)+1);
            
        }

        return false;
    }
}
--------------------------------------------------------------------------------

class Solution {
    public boolean containsDuplicate(int[] nums) {
       Arrays.sort(nums);
       for(int i=0; i<nums.length-1; i++){
        if(nums[i] == nums[i+1]){
            return true;
        }
       }
       return false;
    }
}

```

- [Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)

- [Maximum Subarray](https://leetcode.com/problems/maximum-subarray/)

```java
Given an integer array nums, find the subarray with the largest sum, and return its sum.

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.

class Solution {
    public int maxSubArray(int[] nums) {
        int maxSum = Integer.MIN_VALUE, sum=0;

        for(int i=0; i<nums.length; i++){
            sum += nums[i];
            maxSum = Math.max(maxSum, sum);
        
        if(sum < 0){
            sum= 0;
        }
        }
        return maxSum;
    }
}
```

- [Maximum Product Subarray](https://leetcode.com/problems/maximum-product-subarray/)

```java
Given an integer array nums, find a subarray that has the largest product, and return the product.

The test cases are generated so that the answer will fit in a 32-bit integer.

Example 1:

Input: nums = [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.

class Solution {
    public int maxProduct(int[] nums) {
    
        int maxProd= nums[0], minProd = nums[0], result= nums[0];

        int n = nums.length;
        
        for (int i = 1; i < n; i++) {
        
			// Swapping min and max
			/* As we know that on multiplying with negative number max will become min 
			and min will become max, so why not as soon as we encounter negative element, we swap the max and min already. */
            if (nums[i] < 0){
                int temp = max;
                max = min;
                min = temp;
            }
                

            max = Math.max(nums[i], max * nums[i]);
            min = Math.min(nums[i], min * nums[i]);

            result = Math.max(result, max);
        }
        return result;
    }
}
```

- [Find Minimum in Rotated Sorted Array](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/)

```java
Suppose an array of length n sorted in ascending order is rotated between 1 and n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

[4,5,6,7,0,1,2] if it was rotated 4 times.
[0,1,2,4,5,6,7] if it was rotated 7 times.
Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

Given the sorted rotated array nums of unique elements, return the minimum element of this array.

You must write an algorithm that runs in O(log n) time.

Example 1:

Input: nums = [3,4,5,1,2]
Output: 1
Explanation: The original array was [1,2,3,4,5] rotated 3 times.

class Solution {
    public int findMin(int[] nums) {
       int left = 0;
       int right = nums.length-1;

       while(left < right){
        int mid = left + (right - left)/2;

        if(nums[mid] > nums[right]){
            left = mid+1;
        }else {
            right = mid;
        }
       }

       return nums[left];
    }
}
```

- [Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)

```java
There is an integer array nums sorted in ascending order (with distinct values).

Prior to being passed to your function, nums is possibly rotated at an unknown pivot index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed).
For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become [4,5,6,7,0,1,2].

Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

You must write an algorithm with O(log n) runtime complexity.

Example 1:

Input: nums = [4,5,6,7,0,1,2], target = 0
Output: 4

class Solution {
    public int search(int[] nums, int target) {
        int left = 0;
        int right = nums.length-1;
       int mid;

        while(left <= right){
             mid = left + (right -left)/2;

            if(nums[mid] == target){
                return mid;
            }
            
            //if the target is between left and mid
            else if(nums[left] <= nums[mid]){
            
		            //compare the target with left and mid, if it is greater than left and smaller than mid
                if(nums[left] <= target && nums[mid] >= target)
                
                //then right will become mid-1, so now array is from left to mid-1(first half)
                right = mid-1;
                else
                
                //else left will become mid+1, then array will be mid+1 to right(second half)
                left = mid+1;
            }else {
            
		            //if the target is greater than mid & less than right
                if(nums[mid] <= target && target <= nums[right])
                left = mid+1;
                else 
                right = mid-1;
            }
        }

        return -1;
    }
}
```

- [3 Sum](https://leetcode.com/problems/3sum/)

```java
Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.

class Solution {
    public List<List<Integer>> threeSum(int[] nums) {
        int target =0;
        
        Set<List<Integer>> set = new HashSet<>();

        List<List<Integer>> res = new ArrayList<>();

   
        Arrays.sort(nums);
       
       for(int i=0; i<nums.length; i++){
    
        int j= i+1;
        int k = nums.length-1;

        while(j<k){
            int sum = nums[i]+nums[j]+nums[k];
            if(sum == target){

                //add new array to the set and make both j++ and k--
                set.add(Arrays.asList(nums[i], nums[j], nums[k]));
                j++;
                k--;
            }else if(sum < target){

                //if the sum is less than target then j++ because array is sorted.
                j++;
            }else {
                k--;
            }
        }
       
       }
       //at the end add all set to the list
        res.addAll(set);

        return res;

    }
}
```

- [Container With Most Water](https://leetcode.com/problems/container-with-most-water/)

```java
Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.

Example 1:

Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49

class Solution {
    public int maxArea(int[] height) {
        int maxArea = 0;
        int left = 0;
        int right = height.length-1;
        
        while(left <= right){
           //find min height between left and right because that much amount of water it can hold
            int minHeight = Math.min(height[left], height[right]);

            //find width beacuse to find area you need height and width
            int width = right - left;

            //finding area between left and right containers
            int currentArea = width * minHeight;
            
            //get max area
            maxArea = Math.max(currentArea, maxArea);
            
            if(height[left] < height[right]){
                left++;
            }else {
                right--;
            }
        }
        return maxArea;
    }
}
```

---

### **String**

- [Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

```java
Given a string s, find the length of the longest 
substring
 without repeating characters.
 
Example 1:
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.

Example 2:
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

class Solution {
    public int lengthOfLongestSubstring(String s) {
        Set<Character> set = new HashSet<>();
        int maxLength =0;
        int left = 0;

        for(int right= 0; right<s.length(); right++){
            while(set.contains(s.charAt(right))){
                set.remove(s.charAt(left));
                left++;
               
            }
                set.add(s.charAt(right));
                 maxLength = Math.max(maxLength, right-left+1);
            }
        
        return maxLength;
    }
}
```

- [Longest Repeating Character Replacement](https://leetcode.com/problems/longest-repeating-character-replacement/)
- [Minimum Window Substring](https://leetcode.com/problems/minimum-window-substring/)
- [Valid Anagram](https://leetcode.com/problems/valid-anagram/)

```java
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:
Input: s = "anagram", t = "nagaram"
Output: true

class Solution {
    public boolean isAnagram(String s, String t) {
        char[] ch1 = s.toCharArray();
        char[] ch2 = t.toCharArray();

        Arrays.sort(ch1);
        Arrays.sort(ch2);

       return Arrays.equals(ch1, ch2);

    }
}
```

- [Group Anagrams](https://leetcode.com/problems/group-anagrams/)

```java
Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
        Map<String, List<String>> map = new HashMap<>();
        for(String s : strs){
            char ch[] = s.toCharArray();
            Arrays.sort(ch);
            String sortedWord = new String(ch);
            if(!map.containsKey(sortedWord)){
            
				        //put sortedword as key and empty arryList as value
                map.put(sortedWord, new ArrayList<>());
            }
						//get the value of sorted word which is empty ArrayList add value the original string
            map.get(sortedWord).add(s);
        }

				//return new ArrayList of all the map values
        return new ArrayList<>(map.values());

    }
}

```

- [Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)
- [Valid Palindrome](https://leetcode.com/problems/valid-palindrome/)
- [Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/)
- [Palindromic Substrings](https://leetcode.com/problems/palindromic-substrings/)
- [Encode and Decode Strings (Leetcode Premium)](https://leetcode.com/problems/encode-and-decode-strings/)

---

### **Linked List**

- [Reverse a Linked List](https://leetcode.com/problems/reverse-linked-list/)

```java

Given the head of a singly linked list, reverse the list, and return the reversed list.

 

Example 1:

Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode reverseList(ListNode head) {
        ListNode current = head;
        ListNode prev = null;
        ListNode next = null;

        while(current != null){
            next = current.next;
            current.next = prev;
            prev = current;
            current = next;
           
        }

        return prev;
    }
}

```

![Untitled](75%20LeetCode%20problems%2078433aacf44c4c39b2698f45d7a53cd0/e189c2a2-6dab-4095-8622-bc5b875707bf.png)

![Untitled](75%20LeetCode%20problems%2078433aacf44c4c39b2698f45d7a53cd0/0ef60ae8-596f-4713-8d5e-96b9d42010a1.png)

- [Detect Cycle in a Linked List](https://leetcode.com/problems/linked-list-cycle/)

```java
Given head, the head of a linked list, determine if the linked list has a cycle in it.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

Return true if there is a cycle in the linked list. Otherwise, return false.

 

Example 1:

Input: head = [3,2,0,-4], pos = 1
Output: true
Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

public class Solution {
    public boolean hasCycle(ListNode head) {
       ListNode slow_pointer = head, fast_pointer = head;
        while (fast_pointer != null && fast_pointer.next != null) {
            slow_pointer = slow_pointer.next;
            fast_pointer = fast_pointer.next.next;
            if (slow_pointer == fast_pointer) {
                return true;
            }
        }
        return false;
    }
}

Strategies to Tackle the Problem

Hash Table Method:
This approach involves storing visited nodes in a hash table. During traversal, if a node is encountered that already exists in the hash table, a cycle is confirmed.

Two-Pointers Method (Floyd's Cycle-Finding Algorithm):
Also known as the "hare and tortoise" algorithm, this method employs two pointers that move at different speeds. If there is a cycle, the fast pointer will eventually catch up to the slow pointer, confirming the cycle's existence.

Step-by-step Explanation

Initialization:

Initialize two pointers, slow_pointer and fast_pointer, both pointing to the head node initially.
Cycle Detection:

Traverse the list until the fast_pointer or its next becomes None.
Update slow_pointer and fast_pointer as follows:
slow_pointer = slow_pointer.next
fast_pointer = fast_pointer.next.next
If slow_pointer and fast_pointer meet at some point, return True.

```

- [Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)

```java
21. Merge Two Sorted Lists
Solved
Easy

Topics
Companies
You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

 

Example 1:

Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */

class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        if(list1 == null) return list2;
        if(list2 == null) return list1;

        
            if(list1.val <= list2.val){
                list1.next = mergeTwoLists(list1.next, list2);
                return list1;
            }else {
                list2.next = mergeTwoLists(list1, list2.next);
                return list2;
            }

        
    }
}

OR

class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        ListNode dummy = new ListNode();
        ListNode cur = dummy;

        while (list1 != null && list2 != null) {
            if (list1.val > list2.val) {
                cur.next = list2;
                list2 = list2.next;
            } else {
                cur.next = list1;
                list1 = list1.next;
            }
            cur = cur.next;
        }

				if(list1 == null) cur.next = list2;
				else cur.next = list1;
      

        return dummy.next;        
    }
}
```

- [Merge K Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)
- [Remove Nth Node From End Of List](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)
- [Reorder List](https://leetcode.com/problems/reorder-list/)

---

### **Binary**

- [Sum of Two Integers](https://leetcode.com/problems/sum-of-two-integers/)
- [Number of 1 Bits](https://leetcode.com/problems/number-of-1-bits/)
- [Counting Bits](https://leetcode.com/problems/counting-bits/)
- [Missing Number](https://leetcode.com/problems/missing-number/)
- [Reverse Bits](https://leetcode.com/problems/reverse-bits/)

---

### **Dynamic Programming**

- [Climbing Stairs](https://leetcode.com/problems/climbing-stairs/)
- [Coin Change](https://leetcode.com/problems/coin-change/)
- [Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/)
- [Longest Common Subsequence](https://leetcode.com/problems/longest-common-subsequence/)
- [Word Break Problem](https://leetcode.com/problems/word-break/)
- [Combination Sum](https://leetcode.com/problems/combination-sum-iv/)
- [House Robber](https://leetcode.com/problems/house-robber/)
- [House Robber II](https://leetcode.com/problems/house-robber-ii/)
- [Decode Ways](https://leetcode.com/problems/decode-ways/)
- [Unique Paths](https://leetcode.com/problems/unique-paths/)
- [Jump Game](https://leetcode.com/problems/jump-game/)

---

### **Graph**

- [Clone Graph](https://leetcode.com/problems/clone-graph/)
- [Course Schedule](https://leetcode.com/problems/course-schedule/)
- [Pacific Atlantic Water Flow](https://leetcode.com/problems/pacific-atlantic-water-flow/)
- [Number of Islands](https://leetcode.com/problems/number-of-islands/)
- [Longest Consecutive Sequence](https://leetcode.com/problems/longest-consecutive-sequence/)
- [Alien Dictionary (Leetcode Premium)](https://leetcode.com/problems/alien-dictionary/)
- [Graph Valid Tree (Leetcode Premium)](https://leetcode.com/problems/graph-valid-tree/)
- [Number of Connected Components in an Undirected Graph (Leetcode Premium)](https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph/)

---

### **Interval**

- [Insert Interval](https://leetcode.com/problems/insert-interval/)
- [Merge Intervals](https://leetcode.com/problems/merge-intervals/)
- [Non-overlapping Intervals](https://leetcode.com/problems/non-overlapping-intervals/)
- [Meeting Rooms (Leetcode Premium)](https://leetcode.com/problems/meeting-rooms/)
- [Meeting Rooms II (Leetcode Premium)](https://leetcode.com/problems/meeting-rooms-ii/)

---

### **Matrix**

- [Set Matrix Zeroes](https://leetcode.com/problems/set-matrix-zeroes/)
- [Spiral Matrix](https://leetcode.com/problems/spiral-matrix/)
- [Rotate Image](https://leetcode.com/problems/rotate-image/)
- [Word Search](https://leetcode.com/problems/word-search/)

---

### **Tree**

- [Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/)
- [Same Tree](https://leetcode.com/problems/same-tree/)
- [Invert/Flip Binary Tree](https://leetcode.com/problems/invert-binary-tree/)
- [Binary Tree Maximum Path Sum](https://leetcode.com/problems/binary-tree-maximum-path-sum/)
- [Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/)
- [Serialize and Deserialize Binary Tree](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/)
- [Subtree of Another Tree](https://leetcode.com/problems/subtree-of-another-tree/)
- [Construct Binary Tree from Preorder and Inorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)
- [Validate Binary Search Tree](https://leetcode.com/problems/validate-binary-search-tree/)
- [Kth Smallest Element in a BST](https://leetcode.com/problems/kth-smallest-element-in-a-bst/)
- [Lowest Common Ancestor of BST](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/)
- [Implement Trie (Prefix Tree)](https://leetcode.com/problems/implement-trie-prefix-tree/)
- [Add and Search Word](https://leetcode.com/problems/add-and-search-word-data-structure-design/)
- [Word Search II](https://leetcode.com/problems/word-search-ii/)

---

### **Heap**

- [Merge K Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)
- [Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/)
- [Find Median from Data Stream](https://leetcode.com/problems/find-median-from-data-stream/)

---

### **Important Link:**

- [14 Patterns to Ace Any Coding Interview Question](https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed)
- [Grind 75](https://www.techinterviewhandbook.org/grind75)

Here is the leetcode list for Blind 75 and more:

Blind 75:

[https://leetcode.com/list/oizxjoit](https://leetcode.com/list/oizxjoit)

Grind 169:

[https://leetcode.com/list/rabvlt31](https://leetcode.com/list/rabvlt31)

Grind 75:

[https://leetcode.com/list/](https://leetcode.com/list/rab78cw1) ‘

Neetcode 150:

[https://leetcode.com/list/rr2ss0g5](https://leetcode.com/list/rr2ss0g5)

SQL:

[https://leetcode.com/list/o2qifkts](https://leetcode.com/list/o2qifkts)

![Untitled](75%20LeetCode%20problems%2078433aacf44c4c39b2698f45d7a53cd0/Untitled.png)