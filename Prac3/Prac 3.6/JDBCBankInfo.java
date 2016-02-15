import java.sql.*;
import java.util.*;
class JDBCBankInfo{
public static void main(String[] args){
Connection c=null;
PreparedStatement p=null;
			try{
				Class.forName("org.postgresql.Driver");
				c=DriverManager.getConnection("jdbc:postgresql://localhost:5433/s2a130050131072","postgres","postgres");
				Scanner sc =new Scanner(System.in);
				int i=0;
				System.out.println("Eno.:130050131072");
			while(i!=1){
					System.out.println("select the option:");
					System.out.println("1.Insert \n2.Update \n3.Select \n4.Delete \n5.exit");
					int op=sc.nextInt();
					int id,balance,number;
					String name=null;
					String add=null;
			switch(op){
			case 1:
						p=c.prepareStatement("insert into Bank values(?,?,?,?,?)");
						System.out.print("Enter AccountNo:");
						id=sc.nextInt();
						System.out.print("Enter CustomerName:");
						name=sc.next();
						System.out.print("Enter Balance:");
						balance=sc.nextInt();
						System.out.print("Enter PhoneNo:");
						number=sc.nextInt();
						System.out.print("Enter Address:");
						add=sc.next();
						p.setInt(1,id);
						p.setString(2,name);
						p.setInt(3,balance);
						p.setInt(4,number);
						p.setString(5,add);
						p.executeUpdate();
						System.out.println("Row Inserted..");
						break;
			case 2:
						p=c.prepareStatement("update Bank set balance=? where accountno=?");
						System.out.print("Enter AccountNo:");
						id=sc.nextInt();
						System.out.print("Enter Balance:");
						balance=sc.nextInt();
						p.setInt(1,id);
						p.setInt(2,balance);
						p.executeUpdate();
						System.out.println("Row Updated..");
						break;
			case 3:
						p=c.prepareStatement("select * from Bank where balance>?");
						System.out.print("Balance Greater Then:");
						balance=sc.nextInt();
						p.setInt(1,balance);
						ResultSet r=p.executeQuery();
						while(r.next()){
						System.out.println(r.getString("id")
						+"\t"+r.getString("name")+"\t"+r.getString("balance")+"\t"+
						r.getInt("number")
						+"\t"+r.getString("add"));
						}
						break;
				case 4:
						p=c.prepareStatement("delete from Bank where id=?");
						System.out.print("Enter AccountNo:");
						id=sc.nextInt();
						p.setInt(1,id);
						p.executeUpdate();
						System.out.println("Row Deleted..");
						break;
				case 5:
						i=1;
						break;
				default:
						System.out.println("Enter Correct Choice");
						break;
				}
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}