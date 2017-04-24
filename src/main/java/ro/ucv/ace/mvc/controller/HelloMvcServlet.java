package ro.ucv.ace.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ro.ucv.ace.mvc.model.User;

public class HelloMvcServlet extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    User user = createUser(req);
    req.setAttribute("user", user);

    RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/welcome.jsp");
    requestDispatcher.forward(req, resp);
  }

  private User createUser(HttpServletRequest req) {
    String firstName = req.getParameter("firstname");
    String lastName = req.getParameter("lastname");
    return new User(firstName, lastName);
  }

}
