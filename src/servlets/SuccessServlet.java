package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(value="/success")
public class SuccessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Users> userList = Database.getUsersEmail();

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        String fullName = "";

        boolean isFound = false;

        for (Users user : userList) {
            if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
                fullName = user.getFullName();
                break;
            }
        }


        req.setAttribute("userList", userList);

        req.setAttribute("fullName", fullName);

        req.getRequestDispatcher("success.jsp").forward(req, resp);
    }
}
