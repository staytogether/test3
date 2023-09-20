/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class DAOAccount extends DBContext {

    public boolean checkAccount(String username, String password) {
        try {
            String sql = "SELECT accountID FROM account "
                    + "WHERE username = ? AND password = ?";
            try ( PreparedStatement statement = connection.prepareStatement(sql)) {
                //Cho du lieu vao trong cau lenh SQL
                statement.setString(1, username);
                statement.setString(2, password);
                //Cho con tro dich chuyen
                try ( ResultSet resultSet = statement.executeQuery()) {
                    return resultSet.next();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get an account from the database by ID
    public Account getAccountById(String accountID) {
        String sql = "SELECT * FROM Account WHERE accountID = ?";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, accountID);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return extractAccountFromResultSet(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private Account extractAccountFromResultSet(ResultSet resultSet) throws SQLException {
        Account account = new Account();
        account.setAccountID(resultSet.getString("accountID"));
        account.setDob(resultSet.getString("dob"));
        account.setPhone(resultSet.getString("phone"));
        account.setAddress(resultSet.getString("address"));
        account.setPassword(resultSet.getString("password"));
        account.setUsername(resultSet.getString("username"));
        account.setEmail(resultSet.getString("email"));
        return account;
    }

    public boolean addAccount(Account account) {
    String insertAccountSql = "INSERT INTO Account (dob, phone, address, password, username, email) VALUES (?, ?, ?, ?, ?, ?)";
    String insertAccountRoleSql = "INSERT INTO AccountRole (roleID, accountID) VALUES (?, ?)";

    try {
         PreparedStatement insertAccountStatement = connection.prepareStatement(insertAccountSql, Statement.RETURN_GENERATED_KEYS);
         PreparedStatement insertAccountRoleStatement = connection.prepareStatement(insertAccountRoleSql);

        // Insert data into the Account table
        insertAccountStatement.setString(1, account.getDob());
        insertAccountStatement.setString(2, account.getPhone());
        insertAccountStatement.setString(3, account.getAddress());
        insertAccountStatement.setString(4, account.getPassword());
        insertAccountStatement.setString(5, account.getUsername());
        insertAccountStatement.setString(6, account.getEmail());

        int rowsInserted = insertAccountStatement.executeUpdate();

        if (rowsInserted == 0) {
            return false;
        }

        // Retrieve the generated accountID
        ResultSet generatedKeys = insertAccountStatement.getGeneratedKeys();
        int accountID = -1;

        if (generatedKeys.next()) {
            accountID = generatedKeys.getInt(1);
        } else {
            return false; // No generated keys, something went wrong
        }

        // Insert data into the AccountRole table using the generated accountID
        insertAccountRoleStatement.setInt(1, 1);
        insertAccountRoleStatement.setInt(2, accountID);

        int accountRoleRowsInserted = insertAccountRoleStatement.executeUpdate();

        return accountRoleRowsInserted > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}

    
    public Account getAccountByUserName(String accountID) {
        String sql = "SELECT * FROM Account WHERE username = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, accountID);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return extractAccountFromResultSet(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
