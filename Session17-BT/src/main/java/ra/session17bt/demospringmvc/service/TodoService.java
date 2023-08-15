package ra.session17bt.demospringmvc.service;

import org.springframework.stereotype.Service;
import ra.session17bt.demospringmvc.model.Todo;

import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {
    private List<Todo> todoList;

    public TodoService() {
        todoList = new ArrayList<>();
        todoList.add(new Todo(1, "Học PYTHON", false));
        todoList.add(new Todo(2, "Học JAVA", false));
        todoList.add(new Todo(3, "Học PHP", false));
        todoList.add(new Todo(4, "Học GOOGLE AI", false));
    }

    public List<Todo> getTodoList() {
        return todoList;
    }

    public void save(Todo todo) {
        if (todo.getId() == 0) {
            todo.setId(getNewId());
            todoList.add(todo);
        } else {
            todoList.set(todoList.indexOf(findById(todo.getId())), todo);
        }
    }

    public void delete(int id) {
        todoList.remove(findById(id));
    }

    public int getNewId() {
        int maxId = 0;
        for (Todo t : todoList) {
            if (maxId < t.getId()) {
                maxId = t.getId();
            }
        }
        return maxId + 1;
    }

    public Todo findById(int id) {
        for (Todo t : todoList) {
            if (t.getId() == id) {
                return t;
            }
        }
        return null;
    }
}