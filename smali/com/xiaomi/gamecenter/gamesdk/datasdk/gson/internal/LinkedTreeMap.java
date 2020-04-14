package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

public final class LinkedTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> NATURAL_ORDER;
  Comparator<? super K> comparator;
  private LinkedTreeMap<K, V>.EntrySet entrySet;
  final Node<K, V> header = new Node();
  private LinkedTreeMap<K, V>.KeySet keySet;
  int modCount = 0;
  Node<K, V> root;
  int size = 0;
  
  static
  {
    if (!LinkedTreeMap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      NATURAL_ORDER = new LinkedTreeMap.1();
      return;
    }
  }
  
  public LinkedTreeMap()
  {
    this(NATURAL_ORDER);
  }
  
  public LinkedTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      this.comparator = paramComparator;
      return;
      paramComparator = NATURAL_ORDER;
    }
  }
  
  private boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  private void rebalance(Node<K, V> paramNode, boolean paramBoolean)
  {
    Node localNode1;
    Node localNode2;
    int i;
    label27:
    int j;
    label39:
    int k;
    Node localNode3;
    if (paramNode != null)
    {
      localNode1 = paramNode.left;
      localNode2 = paramNode.right;
      if (localNode1 != null)
      {
        i = localNode1.height;
        if (localNode2 == null) {
          break label129;
        }
        j = localNode2.height;
        k = i - j;
        if (k != -2) {
          break label179;
        }
        localNode1 = localNode2.left;
        localNode3 = localNode2.right;
        if (localNode3 == null) {
          break label135;
        }
        i = localNode3.height;
        label77:
        if (localNode1 == null) {
          break label140;
        }
        j = localNode1.height;
        label89:
        i = j - i;
        if ((i != -1) && ((i != 0) || (paramBoolean))) {
          break label146;
        }
        rotateLeft(paramNode);
        label112:
        if (paramBoolean) {
          break label249;
        }
      }
    }
    for (;;)
    {
      paramNode = paramNode.parent;
      break;
      i = 0;
      break label27;
      label129:
      j = 0;
      break label39;
      label135:
      i = 0;
      break label77;
      label140:
      j = 0;
      break label89;
      label146:
      assert (i == 1);
      rotateRight(localNode2);
      rotateLeft(paramNode);
      break label112;
      label179:
      if (k == 2)
      {
        localNode2 = localNode1.left;
        localNode3 = localNode1.right;
        if (localNode3 != null)
        {
          i = localNode3.height;
          label210:
          if (localNode2 == null) {
            break label255;
          }
          j = localNode2.height;
          label222:
          i = j - i;
          if ((i != 1) && ((i != 0) || (paramBoolean))) {
            break label261;
          }
          rotateRight(paramNode);
          label245:
          if (!paramBoolean) {
            break label292;
          }
        }
      }
      label249:
      label255:
      label261:
      label292:
      do
      {
        return;
        i = 0;
        break label210;
        j = 0;
        break label222;
        assert (i == -1);
        rotateLeft(localNode1);
        rotateRight(paramNode);
        break label245;
        break;
        if (k == 0)
        {
          paramNode.height = (i + 1);
          if (!paramBoolean) {
            break;
          }
          return;
        }
        assert ((k == -1) || (k == 1));
        paramNode.height = (Math.max(i, j) + 1);
      } while (!paramBoolean);
    }
  }
  
  private void replaceInParent(Node<K, V> paramNode1, Node<K, V> paramNode2)
  {
    Node localNode = paramNode1.parent;
    paramNode1.parent = null;
    if (paramNode2 != null) {
      paramNode2.parent = localNode;
    }
    if (localNode != null)
    {
      if (localNode.left == paramNode1)
      {
        localNode.left = paramNode2;
        return;
      }
      assert (localNode.right == paramNode1);
      localNode.right = paramNode2;
      return;
    }
    this.root = paramNode2;
  }
  
  private void rotateLeft(Node<K, V> paramNode)
  {
    int k = 0;
    Node localNode1 = paramNode.left;
    Node localNode2 = paramNode.right;
    Node localNode3 = localNode2.left;
    Node localNode4 = localNode2.right;
    paramNode.right = localNode3;
    if (localNode3 != null) {
      localNode3.parent = paramNode;
    }
    replaceInParent(paramNode, localNode2);
    localNode2.left = paramNode;
    paramNode.parent = localNode2;
    int i;
    if (localNode1 != null)
    {
      i = localNode1.height;
      if (localNode3 == null) {
        break label135;
      }
    }
    label135:
    for (int j = localNode3.height;; j = 0)
    {
      paramNode.height = (Math.max(i, j) + 1);
      j = paramNode.height;
      i = k;
      if (localNode4 != null) {
        i = localNode4.height;
      }
      localNode2.height = (Math.max(j, i) + 1);
      return;
      i = 0;
      break;
    }
  }
  
  private void rotateRight(Node<K, V> paramNode)
  {
    int k = 0;
    Node localNode1 = paramNode.left;
    Node localNode2 = paramNode.right;
    Node localNode3 = localNode1.left;
    Node localNode4 = localNode1.right;
    paramNode.left = localNode4;
    if (localNode4 != null) {
      localNode4.parent = paramNode;
    }
    replaceInParent(paramNode, localNode1);
    localNode1.right = paramNode;
    paramNode.parent = localNode1;
    int i;
    if (localNode2 != null)
    {
      i = localNode2.height;
      if (localNode4 == null) {
        break label135;
      }
    }
    label135:
    for (int j = localNode4.height;; j = 0)
    {
      paramNode.height = (Math.max(i, j) + 1);
      j = paramNode.height;
      i = k;
      if (localNode3 != null) {
        i = localNode3.height;
      }
      localNode1.height = (Math.max(j, i) + 1);
      return;
      i = 0;
      break;
    }
  }
  
  private Object writeReplace()
  {
    return new LinkedHashMap(this);
  }
  
  public final void clear()
  {
    this.root = null;
    this.size = 0;
    this.modCount += 1;
    Node localNode = this.header;
    localNode.prev = localNode;
    localNode.next = localNode;
  }
  
  public final boolean containsKey(Object paramObject)
  {
    return findByObject(paramObject) != null;
  }
  
  public final Set<Map.Entry<K, V>> entrySet()
  {
    EntrySet localEntrySet = this.entrySet;
    if (localEntrySet != null) {
      return localEntrySet;
    }
    localEntrySet = new EntrySet();
    this.entrySet = localEntrySet;
    return localEntrySet;
  }
  
  final Node<K, V> find(K paramK, boolean paramBoolean)
  {
    Object localObject3 = null;
    Comparator localComparator = this.comparator;
    Object localObject1 = this.root;
    Comparable localComparable;
    int i;
    if (localObject1 != null) {
      if (localComparator == NATURAL_ORDER)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label69;
        }
        i = localComparable.compareTo(((Node)localObject1).key);
        label52:
        if (i != 0) {
          break label86;
        }
        localObject2 = localObject1;
      }
    }
    label69:
    label86:
    do
    {
      return (Node<K, V>)localObject2;
      localComparable = null;
      break;
      i = localComparator.compare(paramK, ((Node)localObject1).key);
      break label52;
      if (i < 0) {
        localObject2 = ((Node)localObject1).left;
      }
      for (;;)
      {
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          break;
          localObject2 = ((Node)localObject1).right;
          continue;
          i = 0;
        }
      }
      localObject2 = localObject3;
    } while (!paramBoolean);
    Object localObject2 = this.header;
    if (localObject1 == null)
    {
      if ((localComparator == NATURAL_ORDER) && (!(paramK instanceof Comparable))) {
        throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
      }
      paramK = new Node((Node)localObject1, paramK, (Node)localObject2, ((Node)localObject2).prev);
      this.root = paramK;
      this.size += 1;
      this.modCount += 1;
      return paramK;
    }
    paramK = new Node((Node)localObject1, paramK, (Node)localObject2, ((Node)localObject2).prev);
    if (i < 0) {
      ((Node)localObject1).left = paramK;
    }
    for (;;)
    {
      rebalance((Node)localObject1, true);
      break;
      ((Node)localObject1).right = paramK;
    }
  }
  
  final Node<K, V> findByEntry(Map.Entry<?, ?> paramEntry)
  {
    Node localNode = findByObject(paramEntry.getKey());
    if ((localNode != null) && (equal(localNode.value, paramEntry.getValue()))) {}
    for (int i = 1; i != 0; i = 0) {
      return localNode;
    }
    return null;
  }
  
  final Node<K, V> findByObject(Object paramObject)
  {
    Node localNode = null;
    if (paramObject != null) {}
    try
    {
      localNode = find(paramObject, false);
      return localNode;
    }
    catch (ClassCastException paramObject) {}
    return null;
  }
  
  public final V get(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      return (V)((Node)paramObject).value;
    }
    return null;
  }
  
  public final Set<K> keySet()
  {
    KeySet localKeySet = this.keySet;
    if (localKeySet != null) {
      return localKeySet;
    }
    localKeySet = new KeySet();
    this.keySet = localKeySet;
    return localKeySet;
  }
  
  public final V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    paramK = find(paramK, true);
    Object localObject = paramK.value;
    paramK.value = paramV;
    return (V)localObject;
  }
  
  public final V remove(Object paramObject)
  {
    paramObject = removeInternalByKey(paramObject);
    if (paramObject != null) {
      return (V)((Node)paramObject).value;
    }
    return null;
  }
  
  final void removeInternal(Node<K, V> paramNode, boolean paramBoolean)
  {
    int j = 0;
    if (paramBoolean)
    {
      paramNode.prev.next = paramNode.next;
      paramNode.next.prev = paramNode.prev;
    }
    Node localNode1 = paramNode.left;
    Node localNode2 = paramNode.right;
    Node localNode3 = paramNode.parent;
    int i;
    if ((localNode1 != null) && (localNode2 != null)) {
      if (localNode1.height > localNode2.height)
      {
        localNode1 = localNode1.last();
        removeInternal(localNode1, false);
        localNode2 = paramNode.left;
        if (localNode2 == null) {
          break label262;
        }
        i = localNode2.height;
        localNode1.left = localNode2;
        localNode2.parent = localNode1;
        paramNode.left = null;
      }
    }
    for (;;)
    {
      localNode2 = paramNode.right;
      if (localNode2 != null)
      {
        j = localNode2.height;
        localNode1.right = localNode2;
        localNode2.parent = localNode1;
        paramNode.right = null;
      }
      localNode1.height = (Math.max(i, j) + 1);
      replaceInParent(paramNode, localNode1);
      return;
      localNode1 = localNode2.first();
      break;
      if (localNode1 != null)
      {
        replaceInParent(paramNode, localNode1);
        paramNode.left = null;
      }
      for (;;)
      {
        rebalance(localNode3, false);
        this.size -= 1;
        this.modCount += 1;
        return;
        if (localNode2 != null)
        {
          replaceInParent(paramNode, localNode2);
          paramNode.right = null;
        }
        else
        {
          replaceInParent(paramNode, null);
        }
      }
      label262:
      i = 0;
    }
  }
  
  final Node<K, V> removeInternalByKey(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      removeInternal((Node)paramObject, true);
    }
    return (Node<K, V>)paramObject;
  }
  
  public final int size()
  {
    return this.size;
  }
  
  class EntrySet
    extends AbstractSet<Map.Entry<K, V>>
  {
    EntrySet() {}
    
    public void clear()
    {
      LinkedTreeMap.this.clear();
    }
    
    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Map.Entry)) && (LinkedTreeMap.this.findByEntry((Map.Entry)paramObject) != null);
    }
    
    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new LinkedTreeMap.EntrySet.1(this);
    }
    
    public boolean remove(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry)) {}
      do
      {
        return false;
        paramObject = LinkedTreeMap.this.findByEntry((Map.Entry)paramObject);
      } while (paramObject == null);
      LinkedTreeMap.this.removeInternal((LinkedTreeMap.Node)paramObject, true);
      return true;
    }
    
    public int size()
    {
      return LinkedTreeMap.this.size;
    }
  }
  
  final class KeySet
    extends AbstractSet<K>
  {
    KeySet() {}
    
    public final void clear()
    {
      LinkedTreeMap.this.clear();
    }
    
    public final boolean contains(Object paramObject)
    {
      return LinkedTreeMap.this.containsKey(paramObject);
    }
    
    public final Iterator<K> iterator()
    {
      return new LinkedTreeMap.KeySet.1(this);
    }
    
    public final boolean remove(Object paramObject)
    {
      return LinkedTreeMap.this.removeInternalByKey(paramObject) != null;
    }
    
    public final int size()
    {
      return LinkedTreeMap.this.size;
    }
  }
  
  private abstract class LinkedTreeMapIterator<T>
    implements Iterator<T>
  {
    int expectedModCount = LinkedTreeMap.this.modCount;
    LinkedTreeMap.Node<K, V> lastReturned = null;
    LinkedTreeMap.Node<K, V> next = LinkedTreeMap.this.header.next;
    
    LinkedTreeMapIterator() {}
    
    public final boolean hasNext()
    {
      return this.next != LinkedTreeMap.this.header;
    }
    
    final LinkedTreeMap.Node<K, V> nextNode()
    {
      LinkedTreeMap.Node localNode = this.next;
      if (localNode == LinkedTreeMap.this.header) {
        throw new NoSuchElementException();
      }
      if (LinkedTreeMap.this.modCount != this.expectedModCount) {
        throw new ConcurrentModificationException();
      }
      this.next = localNode.next;
      this.lastReturned = localNode;
      return localNode;
    }
    
    public final void remove()
    {
      if (this.lastReturned == null) {
        throw new IllegalStateException();
      }
      LinkedTreeMap.this.removeInternal(this.lastReturned, true);
      this.lastReturned = null;
      this.expectedModCount = LinkedTreeMap.this.modCount;
    }
  }
  
  static final class Node<K, V>
    implements Map.Entry<K, V>
  {
    int height;
    final K key;
    Node<K, V> left;
    Node<K, V> next;
    Node<K, V> parent;
    Node<K, V> prev;
    Node<K, V> right;
    V value;
    
    Node()
    {
      this.key = null;
      this.prev = this;
      this.next = this;
    }
    
    Node(Node<K, V> paramNode1, K paramK, Node<K, V> paramNode2, Node<K, V> paramNode3)
    {
      this.parent = paramNode1;
      this.key = paramK;
      this.height = 1;
      this.next = paramNode2;
      this.prev = paramNode3;
      paramNode3.next = this;
      paramNode2.prev = this;
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if ((paramObject instanceof Map.Entry))
      {
        paramObject = (Map.Entry)paramObject;
        if (this.key != null) {
          break label56;
        }
        bool1 = bool2;
        if (((Map.Entry)paramObject).getKey() == null)
        {
          if (this.value != null) {
            break label77;
          }
          bool1 = bool2;
          if (((Map.Entry)paramObject).getValue() != null) {}
        }
      }
      for (;;)
      {
        bool1 = true;
        label56:
        label77:
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!this.key.equals(((Map.Entry)paramObject).getKey()));
          break;
          bool1 = bool2;
        } while (!this.value.equals(((Map.Entry)paramObject).getValue()));
      }
    }
    
    public final Node<K, V> first()
    {
      Object localObject1 = this.left;
      Object localObject2 = this;
      while (localObject1 != null)
      {
        Node localNode = ((Node)localObject1).left;
        localObject2 = localObject1;
        localObject1 = localNode;
      }
      return (Node<K, V>)localObject2;
    }
    
    public final K getKey()
    {
      return (K)this.key;
    }
    
    public final V getValue()
    {
      return (V)this.value;
    }
    
    public final int hashCode()
    {
      int j = 0;
      int i;
      if (this.key == null)
      {
        i = 0;
        if (this.value != null) {
          break label33;
        }
      }
      for (;;)
      {
        return i ^ j;
        i = this.key.hashCode();
        break;
        label33:
        j = this.value.hashCode();
      }
    }
    
    public final Node<K, V> last()
    {
      Object localObject1 = this.right;
      Object localObject2 = this;
      while (localObject1 != null)
      {
        Node localNode = ((Node)localObject1).right;
        localObject2 = localObject1;
        localObject1 = localNode;
      }
      return (Node<K, V>)localObject2;
    }
    
    public final V setValue(V paramV)
    {
      Object localObject = this.value;
      this.value = paramV;
      return (V)localObject;
    }
    
    public final String toString()
    {
      return this.key + "=" + this.value;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\LinkedTreeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */