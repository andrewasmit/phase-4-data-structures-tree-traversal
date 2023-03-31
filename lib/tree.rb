class Tree

  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id elem_id
    result = []
    nodes_to_visit = [@root]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == elem_id
        result.push(node)
      else
        nodes_to_visit = node[:children] + nodes_to_visit
      end
    end
    result[0]
  end

end