class Node
 attr_accessor :data, :left, :right;

 def initialize( data, left = nil, right = nil)
  @data = data;
  @left = left;
  @right = right;
 end

end

class BST
  attr_accessor :root;

  def initialize
    @root = nil;
  end

  def util_search_tree(node, data)
    if node.data > data

      if node.left === nil
        node.left = Node.new( data )
        return
      end

      return util_search_tree( node.left, data )

    elsif node.data < data

      if node.right === nil
        node.right = Node.new( data )
        return
      end

      return util_search_tree( node.right, data )

    else
      return nil
    end

  end

  def add( data )
    if @root === nil
      @root = Node.new( data );
      return
    end
    return util_search_tree( @root, data);
  end

  def findMin
    current = @root;

    while current.left != nil
      current = current.left
    end

    return current.data
  end

  def findMax
    current = @root;

    while current.right != nil
      current = current.right
    end

    return current.data
  end

  def find( data )
    current = @root;
    while current != nil
      return current.data if current.data === data
      current = current.left if data < current.data;
      current = current.right if data > current.data;
    end
    return nil
  end

  def util_delete_node( node, data )
    # node is empty
    return nil if node.data === nil
    if node.data === data
      # node has no children
      return nil if node.left === nil and node.right === nil
      # node has only right child
      return node.right if node.left === nil
      # node has only left child
      return node.left if node.right === nil

      if node.right != nil and node.left != nil
        temp_node = node.right;

        # traverse to the leftmost child of the  temp_node
        while temp_node.left != nil
          temp_node = temp_node.left
        end

        node.data = temp_node.data;
        node.right = util_delete_node( node.right, temp_node.data)
        return node

      end
    elsif node.data > data
      node.left = util_delete_node( node.left, data );
      return node
    else
      node.right = util_delete_node( node.right, data )
      return node
    end
  end

  def remove(data)
    @root = util_delete_node( @root, data )
  end
end

my_tree = BST.new;
my_tree.add(2)
my_tree.add(1)
my_tree.add(5)
my_tree.add(3)
my_tree.add(7)
puts my_tree.findMax()
puts my_tree.findMin()
# puts my_tree.find(5)
puts my_tree.remove(2)
puts my_tree.root.data

