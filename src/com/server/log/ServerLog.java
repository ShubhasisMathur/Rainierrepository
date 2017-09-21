package com.server.log;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

public class ServerLog 
{
	public void runScript(String tsthostname,String wlcInstance, String lineNos) {
		
		try {
			System.out.println("sh  /tmp/HC/scriptserver "+tsthostname+" "+wlcInstance+" "+lineNos);
			Runtime.getRuntime().exec("sh  /tmp/HC/scriptserver "+tsthostname+" "+wlcInstance+" "+lineNos);
		
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	public String logOutput()
	{
		//File file=null;
		String fileContent="";
		try
		{
	//	file=new File("/tmp/HC/local.txt");
		Thread.sleep(1000);
		FileInputStream fstream = new FileInputStream("/tmp/HC/local.txt");
   	//FileInputStream fstream = new FileInputStream("D:\\Users\\pushkar_s\\Desktop\\local.txt");
	//	System.out.println("====> file stream #####");
	    DataInputStream in = new DataInputStream(fstream);
	        BufferedReader br = new BufferedReader(new InputStreamReader(in));
	    String strLine=null;
	   
	    while ((strLine = br.readLine()) != null)   {
	    	
	    	fileContent=fileContent+strLine;
	      
	    }
	    in.close();
	   
		//System.out.println("Server Log output ===>> "+fileContent);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return fileContent;
	}

	public List<String> getLogFilenames(String tsthostname) {
		String tstname = null;
		for (int i = 1; i <= 36; i++) {
			if (tsthostname.equalsIgnoreCase("ecomtest" + i)) {
				if (i < 10) {
					tstname = "tst0" + i;
				} else
					tstname = "tst" + i;

			}
		}

		List<String> results = new ArrayList<String>();

		File[] files = new File("/tmp/HC/logs").listFiles();

		for (File file : files) {
			if (file.isFile()) {
				String filename = file.getName();
				if (filename.contains(tstname)) {
					results.add(filename);
				}
			}
		}
		return results;
	}

	

	public Map<String, String> getInstanceNames(String tsthostname) {

		Map<String, String> nodeMap = new HashMap<String, String>();
		System.out.println("ServerLog :: " + tsthostname);
		String tstname = null;

		for (int i = 1; i <= 36; i++) {
			String flag = null;
			if (i < 10) {
				flag = "0" + i;
			} else
				flag = "" + i;
			if (tsthostname.equalsIgnoreCase("ecomtest" + flag
					+ ".bodc.att.com")) {
				if (i < 10) {
					tstname = "tst0" + i;
				} else
					tstname = "tst" + i;

			}
		}

		try {

		//	String tstPath = "D:/Jars/tst33.xml";
			String tstPath = "/tmp/HC/Updatexml/" + tstname + ".xml";

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(tstPath);

			NodeList n11 = doc.getElementsByTagName("shop-fulfill_App_shop");
			NodeList n12 = doc.getElementsByTagName("shop-main1_App_shop");

			NodeList n13 = doc
					.getElementsByTagName("sales-main1_App_sales-atgservice");
			NodeList n14 = doc.getElementsByTagName("shop-auth_App_shop");

			NodeList n15 = doc
					.getElementsByTagName("sales-main1_App_sales-frontend");
			NodeList n16 = doc
					.getElementsByTagName("sales-sjob_App_sales-atgservice");

			NodeList n17 = doc.getElementsByTagName("shop-sjob_App_shop");
			NodeList n18 = doc
					.getElementsByTagName("sales-auth_App_aem561_base");

			NodeList n19 = doc
					.getElementsByTagName("standalone-main1_App_standalone");

			String shopFulfillAppShop = n11.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String shopFulfillAppShopValue = n11.item(0).getFirstChild()
					.getNodeValue();

			String shopMain1Appshop = n12.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String shopMain1AppshopValue = n12.item(0).getFirstChild()
					.getNodeValue();

			String salesMain1AppsalesAtgservice = n13.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String salesMain1AppsalesAtgserviceValue = n13.item(0)
					.getFirstChild().getNodeValue();

			String shopAuthAppShop = n14.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String shopAuthAppShopValue = n14.item(0).getFirstChild()
					.getNodeValue();

			String salesMain1AppSalesFrontend = n15.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String salesMain1AppSalesFrontendValue = n15.item(0)
					.getFirstChild().getNodeValue();

			String salesSjobAppSalesAtgservice = n16.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String salesSjobAppSalesAtgserviceValue = n16.item(0)
					.getFirstChild().getNodeValue();

			String shopSjobAppShop = n17.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String shopSjobAppShopValue = n17.item(0).getFirstChild()
					.getNodeValue();

			String salesAuthAppAem561Base = n18.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String salesAuthAppAem561BaseValue = n18.item(0).getFirstChild()
					.getNodeValue();

			String standaloneMain1AppStandalone = n19.item(0).getFirstChild()
					.getParentNode().getNodeName();
			String standaloneMain1AppstandaloneValue = n19.item(0)
					.getFirstChild().getNodeValue();

			nodeMap.put(shopFulfillAppShop, shopFulfillAppShopValue);
			nodeMap.put(shopMain1Appshop, shopMain1AppshopValue);
			nodeMap.put(shopMain1Appshop, shopMain1AppshopValue);
			nodeMap.put(salesMain1AppsalesAtgservice,
					salesMain1AppsalesAtgserviceValue);
			nodeMap.put(shopAuthAppShop, shopAuthAppShopValue);
			nodeMap.put(salesMain1AppSalesFrontend,
					salesMain1AppSalesFrontendValue);
			nodeMap.put(salesSjobAppSalesAtgservice,
					salesSjobAppSalesAtgserviceValue);
			nodeMap.put(shopSjobAppShop, shopSjobAppShopValue);
			nodeMap.put(salesAuthAppAem561Base, salesAuthAppAem561BaseValue);
			nodeMap.put(standaloneMain1AppStandalone,
					standaloneMain1AppstandaloneValue);

			// return nodeMap;
			// updateHealthXml(nodeMap);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return nodeMap;
	}

	
	
	
}
