package com;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
public class DBConnection{
	static MongoClient client;
public static MongoClient getCon(){
	try	{
		if(client == null)
			client = new MongoClient("localhost");
	}
	catch (Exception e)	{
		e.printStackTrace();
	}
	return client;
}
public static String create(String user,String pass,String contact,String email,String address){
	String msg = "Error in registeration";
	boolean flag = retrieve(user,pass);
	if(!flag){
		client = getCon();
		DB d = client.getDB("comment");
		DBCollection eCollection = d.getCollection("register");
		BasicDBObject document = new BasicDBObject();
		document.put("username",user);
		document.put("password",pass);
		document.put("phone",contact);
		document.put("email",email);
		document.put("address",address);
		eCollection.insert(document);
		msg = "success";
	}else{
		msg = "User already exists";
	}
	return msg;
}
public static boolean retrieve(String user, String pass){
	boolean flag = false;
	client = getCon();
	DB d = client.getDB("comment");
    DBCollection eCollection = d.getCollection("register");
    BasicDBObject query = new BasicDBObject();
	query.put("username",user);
	query.put("password",pass);
	BasicDBObject fields = new BasicDBObject();
	DBCursor cursor = eCollection.find(query,fields);
    try{
		if(cursor.hasNext()){
			flag = true;
		}
		
    }catch(Exception e){
		e.printStackTrace();
	}
	return flag;
}
public static void main(String args[])throws Exception{
	//System.out.println(create("comment","register"));
	//System.out.println(retrieve("comment","register"));
}
public static String comment(String user,String type,String comment){
	String msg = "Error in adding comment";
	client = getCon();
	DB d = client.getDB("comment");
	DBCollection eCollection = d.getCollection("commentdata");
	BasicDBObject document = new BasicDBObject();
	document.put("username",user);
	document.put("type",type);
	document.put("comment",comment);
	eCollection.insert(document);
	msg = "success";
	return msg;
}
}