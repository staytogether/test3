/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author LuuTu
 */
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Entity.Role;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAORole extends DBContext {

    // Add a new role to the database
    public void addRole(Role role) {
        String query = "INSERT INTO Role (roleName) VALUES (?)";
        try ( PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, role.getRoleName());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAORole.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Remove a role from the database by ID
    public void removeRole(int roleID) {
        String query = "DELETE FROM Role WHERE roleID = ?";
        try ( PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, roleID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAORole.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Update an existing role in the database
    public void updateRole(Role role) {
        String query = "UPDATE Role SET roleName = ? WHERE roleID = ?";
        try ( PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, role.getRoleName());
            statement.setInt(2, role.getRoleID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAORole.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Get a role by account ID
    public String getRoleByAccountID(int accountID) {
        try {
            String query = "SELECT roleName FROM Role r join AccountRole ar on ar.roleID = r.roleID where ar.accountID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, accountID);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getString("roleName");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORole.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    // List all roles in the database
    public List<Role> getAllRoles() {
        List<Role> roles = new ArrayList<>();
        String query = "SELECT * FROM Role";
        try ( PreparedStatement statement = connection.prepareStatement(query);  ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Role role = new Role();
                role.setRoleID(resultSet.getInt("roleID"));
                role.setRoleName(resultSet.getString("roleName"));
                roles.add(role);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORole.class.getName()).log(Level.SEVERE, null, ex);
        }
        return roles;
    }

    public static void main(String[] args) {
        DAORole dao = new DAORole();
        String roles = dao.getRoleByAccountID(9);
        System.out.println(roles);

    }
}
