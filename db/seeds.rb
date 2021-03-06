Project.destroy_all
User.destroy_all
Collaboration.destroy_all
Task.destroy_all
Ownership.destroy_all

anh = User.create(username: "anh123", password: "anh123")
ge = User.create(username: "ge123", password: "ge123")
bob = User.create(username: "bob_is_best", password: "bob_is_best")
michelle = User.create(username: "michelle", password: "michelle")

history = Project.create(name: "History", description: "This is a project about American History")
art = Project.create(name: "Art", description: "This is a project about modern art")
biology = Project.create(name: "Biology", description: "This is a project about human biology")
spanish = Project.create(name: "Spanish", description: "This is a project about the Spanish language")

collab1 = Collaboration.create(user: anh, project: history)
collab2 = Collaboration.create(user: ge, project: art)
collab3 = Collaboration.create(user: bob, project: biology)
collab4 = Collaboration.create(user: michelle, project: spanish)
collab5 = Collaboration.create(user: ge, project: history)
collab6 = Collaboration.create(user: bob, project: art)


task1 = Task.create(description: "write an article", completed: false, due_date: Time.new(2020, 8, 1), project: history, user: anh)
task2 = Task.create(description: "do some research", completed: false, due_date: Time.new(2020, 8, 1), project: history, user: ge)
task3 = Task.create(description: "research modern artists", completed: false, due_date: Time.new(2020, 8, 1), project: art, user: ge)
task4 = Task.create(description: "formulate a hypothesis", completed: false, due_date: Time.new(2020, 8, 1), project: biology, user: bob)

ownership1 = Ownership.create(user: anh, project: history)
ownership2 = Ownership.create(user: ge, project: art)
ownership3 = Ownership.create(user: bob, project: biology)
ownership4 = Ownership.create(user: michelle, project: spanish)