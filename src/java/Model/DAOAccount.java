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

    /**
     * Checks if there is an account in the database based on the provided
     * username and password.
     *
     * @param username The username of the account.
     * @param password The password of the account.
     * @return True if an account with the provided username and password exists
     *         in the database, false otherwise.
     */
    public boolean checkAccount(String username, String password) {
        try {
            String sql = "SELECT accountID FROM account "
                    + "WHERE username = ? AND password = ?";
            try ( PreparedStatement statement = connection.prepareStatement(sql)) {

                statement.setString(1, username);
                statement.setString(2, password);

                try ( ResultSet resultSet = statement.executeQuery()) {
                    return resultSet.next();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Retrieves an account from the database based on the provided accountID.
     *
     * @param accountID The id of the account to retrieve.
     * @return An Account object if an account with the given ID is found in the
     *         database, or null if no such account exists.
     */
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

    /**
     * Extracts an Account object from the provided ResultSet.
     *
     * @param resultSet The ResultSet containing account information.
     * @return An Account object populated with data from the ResultSet.
     */
    private Account extractAccountFromResultSet(ResultSet resultSet) {
        try {
            Account account = new Account();
            account.setAccountID(resultSet.getString("accountID"));
            account.setDob(resultSet.getString("dob"));
            account.setPhone(resultSet.getString("phone"));
            account.setAddress(resultSet.getString("address"));
            account.setPassword(resultSet.getString("password"));
            account.setUsername(resultSet.getString("username"));
            account.setEmail(resultSet.getString("email"));
            return account;
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     * Adds an Account to the database, along with associated roles and customer
     * information.
     *
     * @param account The Account object to add to the database.
     * @return True if the Account and its information was successfully added 
     *         to the database, false otherwise.
     */
    public boolean addAccount(Account account) {
        String insertAccountSql = "INSERT INTO Account (dob, phone, address, password, username, email) VALUES (?, ?, ?, ?, ?, ?)";
        String insertAccountRoleSql = "INSERT INTO AccountRole (roleID, accountID) VALUES (?, ?)";
        String insertCustomer = "INSERT INTO Customer (accountID) VALUES (?)";

        try {
            PreparedStatement insertAccountStatement = connection.prepareStatement(insertAccountSql, Statement.RETURN_GENERATED_KEYS);
            PreparedStatement insertAccountRoleStatement = connection.prepareStatement(insertAccountRoleSql);
            PreparedStatement insertCustomerStatement = connection.prepareCall(insertCustomer);

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

            ResultSet generatedKeys = insertAccountStatement.getGeneratedKeys();
            int accountID = -1;

            if (generatedKeys.next()) {
                accountID = generatedKeys.getInt(1);
            } else {
                return false;
            }

            insertAccountRoleStatement.setInt(1, 1);
            insertAccountRoleStatement.setInt(2, accountID);

            insertCustomerStatement.setInt(1, accountID);

            int accountRoleRowsInserted = insertAccountRoleStatement.executeUpdate();
            int customerRowsInserted = insertCustomerStatement.executeUpdate();

            return (accountRoleRowsInserted > 0 && customerRowsInserted > 0);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Retrieves an Account from the database based on the provided username.
     *
     * @param username The username associated with the Account to retrieve.
     * @return An Account object if an account with the given username is found
     *         in the database, or null if no such account exists.
     */
    public Account getAccountByUserName(String username) {
        String sql = "SELECT * FROM Account WHERE username = ?";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
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
