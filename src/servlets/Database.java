package servlets;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Database {

    private static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
        }
        catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bitlab_shop",
                    "postgres", "password");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<Items> getItems() {

        List<Items> itemsList = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM bitlab_shop.public.items");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Items item = new Items();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));

                itemsList.add(item);
            }
            resultSet.close();
            return itemsList;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}