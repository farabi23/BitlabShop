package servlets;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.xml.crypto.Data;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       List<Items> itemsList = Database.getItems();

        for (int i = 0; i < itemsList.size(); i++) {
            System.out.println(itemsList.get(i).getName());

        }

        req.setAttribute("items", itemsList);
        req.getRequestDispatcher("index.jsp").forward(req, resp);

    }
}
