package ra.session17bt.demospringmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ra.session17bt.demospringmvc.model.Todo;
import ra.session17bt.demospringmvc.service.TodoService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/TodoController")
public class TodoController {
    @Autowired
    private TodoService todoService;

    @GetMapping
    public String list(Model model) {
        List<Todo> todoList = todoService.getTodoList();
        model.addAttribute("todoList", todoList);
        return "Todo/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        Todo todo = todoService.findById(id);
        model.addAttribute("todoEdit", todo);
        return "Todo/edit";
    }

    @GetMapping("add")
    public String add(Model model) {
        model.addAttribute("newtodo",  new Todo());
        return "Todo/add";
    }

    @PostMapping("addtodo")
    public String addtodo(@ModelAttribute("newtodo") Todo todo) {
        todoService.save(todo);
        return "redirect:/TodoController";
    }

    @PostMapping("edit")
    public String update(@ModelAttribute("todoEdit") Todo todo) {
        todoService.save(todo);
        return "redirect:/TodoController";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") int id) {
        todoService.delete(id);
        return "redirect:Todo/list";
    }
}