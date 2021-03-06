package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class UserDAO2 {
	 public static User exec(ResultSet resultSet) throws SQLException  {
		 User user=new User();
         user.setUserid(resultSet.getString("userid"));
         user.setName(resultSet.getString("name"));
         user.setEmail(resultSet.getString("email"));
         user.setDepartmentName(resultSet.getString("departmentName"));
         // sql문에서 선택된 u의 모든 속성 이름과 departmentName이라는 이름이 resultSet에 저장되고
         // resultSet에 departmentName라는 이름을 찾아서 꺼낸걸 user 객체에 저장
         user.setUserType(resultSet.getString("userType"));
         return user;
	 }
	 public static List<User> findAll() throws Exception {
	        String sql = "SELECT u.*,d.departmentName " +"FROM user u left join department d on u.departmentId=d.id";
	        try (Connection connection = DB.getConnection("student1");
	             PreparedStatement statement = connection.prepareStatement(sql);
	             ResultSet resultSet = statement.executeQuery()) {
	             // try(~) ~에 여러 문장 썼을 때 맨 마지막 문장에만 ;쓰면 안됨(콤마 개념)
	            ArrayList<User> list = new ArrayList<User>();
	            while (resultSet.next()) {
	                list.add(exec(resultSet));
	            }
	            return list;
	        }
	    }
	 public static List<User> findName(String name) throws Exception {
	        String sql = "select u.*,d.departmentName from user u left join department d on u.departmentId=d.id where u.name like ?";
	        try (Connection connection = DB.getConnection("student1");
	                PreparedStatement statement = connection.prepareStatement(sql)) {
	               statement.setString(1, name + "%");
	               try (ResultSet resultSet = statement.executeQuery()) {
	                   ArrayList<User> list = new ArrayList<User>();
	                   while (resultSet.next())
	                       list.add(exec(resultSet));
	                   return list;
	               }
	           }
	    }
	 public static List<User> findDepartment(int id) throws Exception {
	        String sql = "select u.*,d.departmentName from user u left join department d on u.departmentId=d.id where d.id=?";
	        try (Connection connection = DB.getConnection("student1");
	             PreparedStatement statement = connection.prepareStatement(sql);
	             ResultSet resultSet = statement.executeQuery()) {
	             // try(~) ~에 여러 문장 썼을 때 맨 마지막 문장에만 ;쓰면 안됨(콤마 개념)
	        	statement.setString(1, id+"%");
	            ArrayList<User> list = new ArrayList<User>();
	            while (resultSet.next()) {
	            	list.add(exec(resultSet));
	            }
	            return list;
	        }
	    }
}
