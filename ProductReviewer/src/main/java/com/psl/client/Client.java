package com.psl.client;

import java.util.Date;

import com.psl.bean.Category;
import com.psl.bean.Customer;
import com.psl.bean.CustomerStatus;
import com.psl.bean.Login;
import com.psl.bean.Product;
import com.psl.bean.Query;
import com.psl.bean.QueryReplyDetails;
import com.psl.bean.RequestDetails;
import com.psl.bean.RequestStatus;
import com.psl.bean.Review;
import com.psl.bean.ReviewReplyDetails;
import com.psl.dao.CategoryDaoImpl;
import com.psl.dao.CustomerDaoImpl;
import com.psl.dao.LoginDaoImpl;
import com.psl.dao.ProductDaoImpl;
import com.psl.dao.QueryDaoImpl;
import com.psl.dao.QueryReplyDaoImpl;
import com.psl.dao.RequestDaoImpl;
import com.psl.dao.ReviewDaoImpl;
import com.psl.dao.ReviewReplyDaoImpl;

public class Client {

/**
 * @param args
 */
public static void main(String[] args) {
//	ReviewDaoImpl r=new ReviewDaoImpl();
//	System.out.println("here"+r.getReviewListbyProductId(1));
//	System.out.println(r.getCustomernameByReview(r.getReviewListbyProductId(1)));
//	
	
	
	System.out.println("Record inserted");
	
	/*Customer cust = new Customer();
	//cust.setCustomerId(1);
	cust.setFirstName("mayur");
	cust.setLastName("narawade");
	cust.setContactNo("9654345678");
	cust.setEmail("mayurn37@gmail.com");
	cust.setStatus(CustomerStatus.ACTIVE);
	Login login = new Login();
	login.setUsername("mayur");
	login.setPassword("mayur");
	login.setCustomer(cust);
	cust.setLogin(login);
	CustomerDaoImpl daocust = new CustomerDaoImpl();
	daocust.insertCustomer(cust);
	System.out.println("customer inserted");
	
	
	
	
	
	
	System.out.println("Login inserted");
	
	*/
	
	
	
	
	System.out.println("client started");
		/*Category cat = new Category(2,"Air Conditioner");
	Category cat2 = new Category(3,"Iron");
	Category cat3 = new Category(4,"Oven");
	Category cat4 = new Category(5,"Tv");
	Category cat5 = new Category(6,"Camera");
	Category cat6 = new Category(7,"Mobile");
	Category cat7 = new Category(8,"Laptop");
	Category cat8 = new Category(9,"Tablet");
	Category cat9 = new Category(10,"PC");
	Category cat10 = new Category(11,"Pen Drive");
	Category cat11 = new Category(12,"Hard Discs");
	Category cat12 = new Category(13,"Earphone");
	Category cat13 = new Category(14,"Headphone");
	Category cat14 = new Category(15,"Shoes");
	Category cat15 = new Category("Watches");
*/
	
	
	

	System.out.println("Record inserted");
	
	//Refrigerator Entries
			/*Product product1 = new Product("Whirlpool 205 CLS 3S 190 L Single Door Refrigerator",56000.00,"Number of Shelves: 2,3 Star Rating,Direct Cool,Color: Solid Wine,Top Freezer Refrigerator,WxHxD: 536 mm X 1191 mm X 604 mm");
			Product product2=new Product("Whirlpool 200 GENIUS CLS PLUS 3S 185 L Single Door Refrigerator", 46000.00,"Number of Shelves: 2,3 Star Rating,Direct Cool,Color: Blush Exotica,Top Freezer Refrigerator,WxHxD: 536 mm X 1159 mm X 604 mm");
			Product product3=new Product("LG GL-B252VPGY 240 L Double Door Refrigerator", 20000.00, "Number of Shelves: 2,2 Star Rating,Frost Free,Color: Wine Blossom,Top Freezer Refrigerator,WxHxD: 550 mm X 1450 mm X 685 mm");
			Product product4=new Product("Samsung RT33JSMFESZTL 321 L Double Door Refrigerator",100000.00, "Number of Shelves: 4,4 Star Rating,Frost Free,Color: Tender Lily Silver,Top Freezer Refrigerator,WxHxD: 600 mm X 1635 mm X 722 mm");
			Product product5=new Product("Samsung RS21HZLMR1XT 585 L Side by Side Refrigerator",150000.00, "Number of Shelves: 5,Frost Free,Color:Mirror,Glass,Side by Side,Refrigerator,WxHxD: 912 mm X 1789 mm X 734 mm");
			
			Category cat1 = new Category("Refrigerator");
			
			cat1.getProducts().add(product1);
			cat1.getProducts().add(product2);
			cat1.getProducts().add(product3);
			cat1.getProducts().add(product4);
			cat1.getProducts().add(product5);
			*/
			
			//AC entries
		/*	Product product6 = new Product("Hitachi RAU023EUEA 2 Ton Inverter Split AC",80000.00,"Inverter Star Rating,Power: 1900 W,Power Requirement : AC 230 V, 50 Hz,Auto Restart,Remote Control");
			Product product7=new Product("Godrej GSC 18 FG 6 SOG 1.5 Ton 5 Star Split AC", 46000.00,"Number of Shelves: 2,3 Star Rating,Direct Cool,Color: Blush Exotica,Top Freezer Refrigerator,WxHxD: 536 mm X 1159 mm X 604 mm");
			Product product8=new Product("Voltas 185EY(R) 1.5 Ton 5 Star Split AC", 20000.00, "Number of Shelves: 2,2 Star Rating,Frost Free,Color: Wine Blossom,Top Freezer Refrigerator,WxHxD: 550 mm X 1450 mm X 685 mm");
			Product product9=new Product("Voltas 185EY(S) 1.5 Ton 5 Star Split AC",100000.00, "Number of Shelves: 4,4 Star Rating,Frost Free,Color: Tender Lily Silver,Top Freezer Refrigerator,WxHxD: 600 mm X 1635 mm X 722 mm");
			
			Category cat = new Category("Air Conditioner");
			cat.getProducts().add(product6);
			cat.getProducts().add(product7);
			cat.getProducts().add(product8);
			cat.getProducts().add(product9);
			//cat1.getProducts().add(product5);
			
			//Iron entries
			Product product10 = new Product("Philips GC1905 Steam Iron, 1440 W",800.00,"Steam1440 W Power Consumption,DrySpray Iron,Self Cleaning Feature,1.8 m Cord Length,Variable Steam Control,180 Degree Swivel Cord");
			Product product11=new Product("Philips GC1010 Steam Iron", 460.00,"Dry,Steam Iron,Linished,Aluminium Soleplate,Steam Burst Feature,1200 W Power Consumption,Temperature Control,Self Cleaning Feature,150 ml Water Tank Capacity");
			Product product12=new Product("Bajaj Majesty MX3 Steam Iron", 200.00, "Self Cleaning Feature,Non-stick Coated Soleplate,Dry,Water Spray,Spray Iron,1250 W Power Consumption,Steam,Variable Steam Control");
		Product product13=new Product("Blue Me Regular Dry Iron",249.00, "Automatic Shut Off,Teflon Non-Stick Coated,750 W Power Consumption,Temperature Control");

		
		Category cat2 = new Category("Iron");
		cat2.getProducts().add(product10);
		cat2.getProducts().add(product11);
		cat2.getProducts().add(product12);
		cat2.getProducts().add(product13);
		
		     CategoryDaoImpl dao = new CategoryDaoImpl();
			//dao.insertCategory(cat1);
		     dao.insertCategory(cat2);
		     dao.insertCategory(cat);*/
			
	
	ProductDaoImpl p=new ProductDaoImpl();
	p.getProductByCategoryName("Refrigerator");
}
}
