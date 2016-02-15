import java.sql.*;
class PLFuction{
	public static void main(String[] args){
		Connection con=null;
		PreparedStatement stmt=null;
		try{
			System.out.println("Enrollment:130050131072");
			MyData72 m1=new MyData72();
			con=m1.SetConnection("s2a130050131072");
			stmt=con.prepareStatement("Select display()");
			ResultSet rs=stmt.executeQuery();
			while(rs.next()){
				System.out.println(rs.getString("display"));
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
}