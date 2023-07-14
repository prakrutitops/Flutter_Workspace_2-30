import 'dart:collection';

class Entry<T> extends LinkedListEntry<Entry<T>> {
  T value;
  Entry(this.value);
  @override
  String toString() {
    return '$value';
  }
}

void main()
{

  var linkedList = LinkedList<Entry<int>>();
  linkedList.add(Entry(10));
  linkedList.add(Entry(20));

  print("linkedList is : $linkedList");

  var linkedList2 = LinkedList<Entry<int>>();
  linkedList2.add(Entry(30));
  linkedList2.add(Entry(40));

  //linkedList.addAll(linkedList2);
  print("linkedList is : $linkedList2");
  
 // linkedList.remove(Entry(10));
  linkedList.clear();
  linkedList.las
  print("linkedList is : $linkedList");
}