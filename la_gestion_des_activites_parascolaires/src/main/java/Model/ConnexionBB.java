package Model;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ConnexionBB {
	public static Connection cnx;
	public static Statement stmt;
	
	
	public static void init() throws SQLException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/clubsesi","root","");
			stmt = (Statement) cnx.createStatement();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	public static ArrayList<Club> AfficherClub(){
		try {
			String sql = "Select * from club" ;
			ResultSet rs = stmt.executeQuery(sql);
			ArrayList<Club> lists = new ArrayList<Club>();
			
			while(rs.next()) {
				
				lists.add(new Club(rs.getInt("idClub"),rs.getString("nomClub"),rs.getString("nomPresident"),rs.getDate("dateCreation")));
				
			}
			
			return lists ;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
		return null;
	}
	
}
