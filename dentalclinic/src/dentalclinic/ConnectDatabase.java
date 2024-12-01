/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package dentalclinic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author JESSA MARIE BEBITA
 */
public class ConnectDatabase {
    private Connection connection;

    public ConnectDatabase() {
        try {
            String url = "jdbc:mysql://localhost:3306/dcms"; // Palitan ang `dcms` sa pangalan ng database mo
            String username = "root"; // Palitan kung may ibang username
            String password = ""; // Palitan kung may password
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Database Connected!");
        } catch (SQLException e) {
            System.out.println("Database Connection Failed!");
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }
}


