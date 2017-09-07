# app/hyperloop/components/header.rb
class Header < Hyperloop::Component
  state(:new_todo) { Todo.new }
  render(HEADER, class: :header) do
    H1 { 'Todos' }
    EditItem(class: 'new-todo', todo: state.new_todo)
    .on(:save) { mutate.new_todo Todo.new }
  end
end
