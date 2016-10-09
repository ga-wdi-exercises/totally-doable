Todo.destroy_all
Todo.create([
  {text: 'Learn Rails', completed: false},
  {text: 'Learn JavaScript', completed: true}
])
