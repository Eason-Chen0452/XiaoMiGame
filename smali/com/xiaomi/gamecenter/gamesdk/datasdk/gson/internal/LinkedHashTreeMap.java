package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

public final class LinkedHashTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> NATURAL_ORDER;
  Comparator<? super K> comparator;
  private LinkedHashTreeMap<K, V>.EntrySet entrySet;
  final Node<K, V> header;
  private LinkedHashTreeMap<K, V>.KeySet keySet;
  int modCount = 0;
  int size = 0;
  Node<K, V>[] table;
  int threshold;
  
  static
  {
    if (!LinkedHashTreeMap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      NATURAL_ORDER = new LinkedHashTreeMap.1();
      return;
    }
  }
  
  public LinkedHashTreeMap()
  {
    this(NATURAL_ORDER);
  }
  
  public LinkedHashTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      this.comparator = paramComparator;
      this.header = new Node();
      this.table = new Node[16];
      this.threshold = (this.table.length / 2 + this.table.length / 4);
      return;
      paramComparator = NATURAL_ORDER;
    }
  }
  
  private void doubleCapacity()
  {
    this.table = doubleCapacity(this.table);
    this.threshold = (this.table.length / 2 + this.table.length / 4);
  }
  
  static <K, V> Node<K, V>[] doubleCapacity(Node<K, V>[] paramArrayOfNode)
  {
    int m = paramArrayOfNode.length;
    Node[] arrayOfNode = new Node[m * 2];
    AvlIterator localAvlIterator = new AvlIterator();
    AvlBuilder localAvlBuilder1 = new AvlBuilder();
    AvlBuilder localAvlBuilder2 = new AvlBuilder();
    int i = 0;
    if (i < m)
    {
      Object localObject = paramArrayOfNode[i];
      if (localObject != null)
      {
        localAvlIterator.reset((Node)localObject);
        int k = 0;
        int j = 0;
        for (;;)
        {
          Node localNode = localAvlIterator.next();
          if (localNode == null) {
            break;
          }
          if ((localNode.hash & m) == 0) {
            j += 1;
          } else {
            k += 1;
          }
        }
        localAvlBuilder1.reset(j);
        localAvlBuilder2.reset(k);
        localAvlIterator.reset((Node)localObject);
        for (;;)
        {
          localObject = localAvlIterator.next();
          if (localObject == null) {
            break;
          }
          if ((((Node)localObject).hash & m) == 0) {
            localAvlBuilder1.add((Node)localObject);
          } else {
            localAvlBuilder2.add((Node)localObject);
          }
        }
        if (j <= 0) {
          break label212;
        }
        localObject = localAvlBuilder1.root();
        label179:
        arrayOfNode[i] = localObject;
        if (k <= 0) {
          break label218;
        }
      }
      label212:
      label218:
      for (localObject = localAvlBuilder2.root();; localObject = null)
      {
        arrayOfNode[(i + m)] = localObject;
        i += 1;
        break;
        localObject = null;
        break label179;
      }
    }
    return arrayOfNode;
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
    int i = paramNode1.hash;
    int j = this.table.length;
    this.table[(i & j - 1)] = paramNode2;
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
  
  private static int secondaryHash(int paramInt)
  {
    paramInt = paramInt >>> 20 ^ paramInt >>> 12 ^ paramInt;
    return paramInt >>> 4 ^ paramInt >>> 7 ^ paramInt;
  }
  
  private Object writeReplace()
  {
    return new LinkedHashMap(this);
  }
  
  public final void clear()
  {
    Arrays.fill(this.table, null);
    this.size = 0;
    this.modCount += 1;
    Node localNode2 = this.header;
    Node localNode1;
    for (Object localObject = localNode2.next; localObject != localNode2; localObject = localNode1)
    {
      localNode1 = ((Node)localObject).next;
      ((Node)localObject).prev = null;
      ((Node)localObject).next = null;
    }
    localNode2.prev = localNode2;
    localNode2.next = localNode2;
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
    Node[] arrayOfNode = this.table;
    int j = secondaryHash(paramK.hashCode());
    int k = j & arrayOfNode.length - 1;
    Object localObject1 = arrayOfNode[k];
    int i;
    Object localObject2;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == NATURAL_ORDER)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label95;
        }
      }
      label95:
      for (i = localComparable.compareTo(((Node)localObject1).key);; i = localComparator.compare(paramK, ((Node)localObject1).key))
      {
        if (i != 0) {
          break label112;
        }
        localObject2 = localObject1;
        return (Node<K, V>)localObject2;
        localComparable = null;
        break;
      }
      label112:
      if (i < 0) {}
      for (localObject2 = ((Node)localObject1).left;; localObject2 = ((Node)localObject1).right)
      {
        if (localObject2 == null) {
          break label145;
        }
        localObject1 = localObject2;
        break;
      }
    }
    for (;;)
    {
      label145:
      localObject2 = localObject3;
      if (!paramBoolean) {
        break;
      }
      localObject2 = this.header;
      if (localObject1 == null)
      {
        if ((localComparator == NATURAL_ORDER) && (!(paramK instanceof Comparable))) {
          throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
        }
        paramK = new Node((Node)localObject1, paramK, j, (Node)localObject2, ((Node)localObject2).prev);
        arrayOfNode[k] = paramK;
        i = this.size;
        this.size = (i + 1);
        if (i > this.threshold) {
          doubleCapacity();
        }
        this.modCount += 1;
        return paramK;
      }
      paramK = new Node((Node)localObject1, paramK, j, (Node)localObject2, ((Node)localObject2).prev);
      if (i < 0) {
        ((Node)localObject1).left = paramK;
      }
      for (;;)
      {
        rebalance((Node)localObject1, true);
        break;
        ((Node)localObject1).right = paramK;
      }
      i = 0;
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
      paramNode.prev = null;
      paramNode.next = null;
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
          break label272;
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
      label272:
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
  
  static final class AvlBuilder<K, V>
  {
    private int leavesSkipped;
    private int leavesToSkip;
    private int size;
    private LinkedHashTreeMap.Node<K, V> stack;
    
    final void add(LinkedHashTreeMap.Node<K, V> paramNode)
    {
      paramNode.right = null;
      paramNode.parent = null;
      paramNode.left = null;
      paramNode.height = 1;
      if ((this.leavesToSkip > 0) && ((this.size & 0x1) == 0))
      {
        this.size += 1;
        this.leavesToSkip -= 1;
        this.leavesSkipped += 1;
      }
      paramNode.parent = this.stack;
      this.stack = paramNode;
      this.size += 1;
      if ((this.leavesToSkip > 0) && ((this.size & 0x1) == 0))
      {
        this.size += 1;
        this.leavesToSkip -= 1;
        this.leavesSkipped += 1;
      }
      int i = 4;
      if ((this.size & i - 1) == i - 1)
      {
        LinkedHashTreeMap.Node localNode1;
        if (this.leavesSkipped == 0)
        {
          paramNode = this.stack;
          localNode1 = paramNode.parent;
          LinkedHashTreeMap.Node localNode2 = localNode1.parent;
          localNode1.parent = localNode2.parent;
          this.stack = localNode1;
          localNode1.left = localNode2;
          localNode1.right = paramNode;
          paramNode.height += 1;
          localNode2.parent = localNode1;
          paramNode.parent = localNode1;
        }
        for (;;)
        {
          i *= 2;
          break;
          if (this.leavesSkipped == 1)
          {
            paramNode = this.stack;
            localNode1 = paramNode.parent;
            this.stack = localNode1;
            localNode1.right = paramNode;
            paramNode.height += 1;
            paramNode.parent = localNode1;
            this.leavesSkipped = 0;
          }
          else if (this.leavesSkipped == 2)
          {
            this.leavesSkipped = 0;
          }
        }
      }
    }
    
    final void reset(int paramInt)
    {
      this.leavesToSkip = (Integer.highestOneBit(paramInt) * 2 - 1 - paramInt);
      this.size = 0;
      this.leavesSkipped = 0;
      this.stack = null;
    }
    
    final LinkedHashTreeMap.Node<K, V> root()
    {
      LinkedHashTreeMap.Node localNode = this.stack;
      if (localNode.parent != null) {
        throw new IllegalStateException();
      }
      return localNode;
    }
  }
  
  static class AvlIterator<K, V>
  {
    private LinkedHashTreeMap.Node<K, V> stackTop;
    
    public LinkedHashTreeMap.Node<K, V> next()
    {
      LinkedHashTreeMap.Node localNode2 = this.stackTop;
      if (localNode2 == null) {
        return null;
      }
      Object localObject2 = localNode2.parent;
      localNode2.parent = null;
      LinkedHashTreeMap.Node localNode1;
      for (Object localObject1 = localNode2.right; localObject1 != null; localObject1 = localNode1)
      {
        ((LinkedHashTreeMap.Node)localObject1).parent = ((LinkedHashTreeMap.Node)localObject2);
        localNode1 = ((LinkedHashTreeMap.Node)localObject1).left;
        localObject2 = localObject1;
      }
      this.stackTop = ((LinkedHashTreeMap.Node)localObject2);
      return localNode2;
    }
    
    void reset(LinkedHashTreeMap.Node<K, V> paramNode)
    {
      LinkedHashTreeMap.Node<K, V> localNode = null;
      while (paramNode != null)
      {
        paramNode.parent = localNode;
        LinkedHashTreeMap.Node localNode1 = paramNode.left;
        localNode = paramNode;
        paramNode = localNode1;
      }
      this.stackTop = localNode;
    }
  }
  
  final class EntrySet
    extends AbstractSet<Map.Entry<K, V>>
  {
    EntrySet() {}
    
    public final void clear()
    {
      LinkedHashTreeMap.this.clear();
    }
    
    public final boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Map.Entry)) && (LinkedHashTreeMap.this.findByEntry((Map.Entry)paramObject) != null);
    }
    
    public final Iterator<Map.Entry<K, V>> iterator()
    {
      return new LinkedHashTreeMap.EntrySet.1(this);
    }
    
    public final boolean remove(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry)) {}
      do
      {
        return false;
        paramObject = LinkedHashTreeMap.this.findByEntry((Map.Entry)paramObject);
      } while (paramObject == null);
      LinkedHashTreeMap.this.removeInternal((LinkedHashTreeMap.Node)paramObject, true);
      return true;
    }
    
    public final int size()
    {
      return LinkedHashTreeMap.this.size;
    }
  }
  
  final class KeySet
    extends AbstractSet<K>
  {
    KeySet() {}
    
    public final void clear()
    {
      LinkedHashTreeMap.this.clear();
    }
    
    public final boolean contains(Object paramObject)
    {
      return LinkedHashTreeMap.this.containsKey(paramObject);
    }
    
    public final Iterator<K> iterator()
    {
      return new LinkedHashTreeMap.KeySet.1(this);
    }
    
    public final boolean remove(Object paramObject)
    {
      return LinkedHashTreeMap.this.removeInternalByKey(paramObject) != null;
    }
    
    public final int size()
    {
      return LinkedHashTreeMap.this.size;
    }
  }
  
  private abstract class LinkedTreeMapIterator<T>
    implements Iterator<T>
  {
    int expectedModCount = LinkedHashTreeMap.this.modCount;
    LinkedHashTreeMap.Node<K, V> lastReturned = null;
    LinkedHashTreeMap.Node<K, V> next = LinkedHashTreeMap.this.header.next;
    
    LinkedTreeMapIterator() {}
    
    public final boolean hasNext()
    {
      return this.next != LinkedHashTreeMap.this.header;
    }
    
    final LinkedHashTreeMap.Node<K, V> nextNode()
    {
      LinkedHashTreeMap.Node localNode = this.next;
      if (localNode == LinkedHashTreeMap.this.header) {
        throw new NoSuchElementException();
      }
      if (LinkedHashTreeMap.this.modCount != this.expectedModCount) {
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
      LinkedHashTreeMap.this.removeInternal(this.lastReturned, true);
      this.lastReturned = null;
      this.expectedModCount = LinkedHashTreeMap.this.modCount;
    }
  }
  
  static final class Node<K, V>
    implements Map.Entry<K, V>
  {
    final int hash;
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
      this.hash = -1;
      this.prev = this;
      this.next = this;
    }
    
    Node(Node<K, V> paramNode1, K paramK, int paramInt, Node<K, V> paramNode2, Node<K, V> paramNode3)
    {
      this.parent = paramNode1;
      this.key = paramK;
      this.hash = paramInt;
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\LinkedHashTreeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */