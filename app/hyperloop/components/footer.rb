# app/hyperloop/components/footer.rb
class Footer < Hyperloop::Component
  include HyperRouter::ComponentMethods
  def link_item(path)
    # wrap the NavLink in a LI and
    # tell the NavLink to change the class to :selected when
    # the current (active) path equals the NavLink's path.

    # Research, where does active_class: come from?
    LI { NavLink("/#{path}", active_class: :selected)  { path.camelize } }
  end
  render(DIV, class: :footer) do   # add class


    UL(class: :filters) do         # wrap links in a UL
      link_item(:all)
      link_item(:active)
      link_item(:completed)
    end

    SPAN(class: 'todo-count') do
      "#{Todo.active.count} item#{'s' if Todo.active.count != 1} left"
    end

  end

end
