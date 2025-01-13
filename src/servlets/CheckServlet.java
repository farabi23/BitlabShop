package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(value = "/check")
public class CheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        List<Users> userList = Database.getUsersEmail();
        boolean isAuthenticated = false;

        for (Users user : userList) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                isAuthenticated = true;
                break;
            }
        }

        if (isAuthenticated) {
            resp.sendRedirect("/success?email=" + email + "&password=" + password);
        } else {

            req.setAttribute("errorMessage", "Incorrect email or password");
            req.getRequestDispatcher("signin.jsp").forward(req, resp);
        }
    }
}