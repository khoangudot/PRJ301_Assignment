/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Account;
import Models.Feature;
import Models.Role;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MrKhoaz
 */
public class AccountDBContext extends DBContext<Account> {

    @Override
    public void insert(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Account get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Account> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Account getAccount(String username, String password) {
        String sql = "select a.username, r.roleID, r.roleName,f.FeatureID,f.FeatureName,f.[url] \n"
                + "from Account a\n"
                + "left JOIN [Role_Account] ra ON a.username = ra.username\n"
                + "left JOIN [Role] r  on ra.roleID =  r.roleID\n"
                + "left join Role_Feature rf  on r.roleID = rf.roleID\n"
                + "left join Feature f on f.FeatureID = rf.FeatureID\n"
                + "where a.username = ? and a.password = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            Account account = null;
            Role currentRole = new Role();
            currentRole.setRoleId(-1);
            while(rs.next()){
                if(account ==  null){
                    account = new Account();
                    account.setUsername(username);
                }
                int roleId = rs.getInt("roleID");
                if(roleId != 0){
                    if(roleId!=currentRole.getRoleId()){
                        currentRole.setRoleId(rs.getInt("roleID"));
                        currentRole.setRoleName(rs.getString("roleName"));
                        account.getRoles().add(currentRole);
                    }
                }
                int featureId =  rs.getInt("FeatureID");
                if(featureId != 0){
                    Feature feature =  new Feature();
                    feature.setFeatureId(rs.getInt("FeatureID"));
                    feature.setFeatureName(rs.getString("FeatureName"));
                    feature.setUrl(rs.getString("url"));
                    currentRole.getFeatures().add(feature);
                }
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
}
