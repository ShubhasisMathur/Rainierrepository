package com.fetch.url;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.Authenticator;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;

import sun.net.www.protocol.http.HttpURLConnection;

import com.fetch.ConfigProps;

public class DataFromUrl implements DataUrl {
	final static Logger logger = Logger.getLogger(DataFromUrl.class);
	ConfigProps configProps;

	public String generateXML(String url) {
		System.out.println("url from jsp :: " + url);
		String xmlfilename = null;
		/*
		 * ArrayList<String> xmlFilesList = new ArrayList<String>();
		 * Map<String,String> urlsNkey=new TreeMap<String, String>();
		 */
		logger.info("URL to XML converstion is started.");

		DataFromUrl datafromurl = new DataFromUrl();
		// Read the properties form
		configProps = datafromurl.getPropValues();

		String xmlTarget = configProps.getXmlTarget();
		String urlsFile = configProps.getUrlsFile();
		String username = configProps.getUsername();
		String password = configProps.getPassword();
		String proxyHost = configProps.getProxyHost();
		String proxyPort = configProps.getProxyPort();

		logger.info("Xml target  : " + xmlTarget + "\n" + "url file name "
				+ urlsFile + "\n" + "username : " + username + "\n"
				+ "password : " + password + "\n" + "proxy host : " + proxyHost
				+ "\n" + "proxy port : " + proxyPort + "\n");
		System.out.println("Xml target  : " + xmlTarget + "\n"
				+ "url file name " + urlsFile + "\n" + "username : " + username
				+ "\n" + "password : " + password + "\n" + "proxy host : "
				+ proxyHost + "\n" + "proxy port : " + proxyPort + "\n");

		datafromurl.directoryCheck(xmlTarget);
		/*
		 * ArrayList<String> urls = datafromurl.readUrls(urlsFile);
		 * 
		 * logger.info("No of URLS :: " + urls.size());
		 */

		StringTokenizer urlTokens = new StringTokenizer(url, "/");
		ArrayList<String> listOfTokens = new ArrayList<String>();
		while (urlTokens.hasMoreElements()) {
			listOfTokens.add(urlTokens.nextToken());
		}

		xmlfilename = listOfTokens.get(listOfTokens.size() - 1);
		String contentWithHtml = datafromurl.getPropertiesFromURL(url,
				username, password, proxyHost, proxyPort);
		String contentwithoutHtml = datafromurl.removeTags(contentWithHtml);
		Map<String, String> content = datafromurl.splitData(contentwithoutHtml);

		datafromurl.xmlFile(content, xmlfilename, xmlTarget);
		logger.debug(xmlfilename + " XML file genereted successfully");

		return xmlfilename;
	} // end of main

	public Map<String, String> getButtons(String port) {
		String xmlfilename, urlsFile;
		Map<String, String> urlsNkey = new TreeMap<String, String>();
		DataFromUrl datafromurl = new DataFromUrl();
		configProps = datafromurl.getPropValues();
		urlsFile = configProps.getUrlsFile();
		ArrayList<String> urls = datafromurl.readUrls(urlsFile);
		for (String url : urls) {
			System.out.println("URL =================>>>>>>> "+url);
			ArrayList<String> listOfTokens=null;
			if(url.contains(port))
			{
				System.out.println("<<<<======="+url);
			StringTokenizer urlTokens = new StringTokenizer(url, "/");
			// listOfTokens = new ArrayList<String>();
			 listOfTokens=new ArrayList<String>();
			while (urlTokens.hasMoreElements()) {
				listOfTokens.add(urlTokens.nextToken());
			}
			

			xmlfilename = listOfTokens.get(listOfTokens.size() - 1);
			urlsNkey.put(xmlfilename, url);
			}else
			{
				System.out.println("Not Contains "+port);
			}

		}

		return urlsNkey;
	}

	// =======================================================================================

	// This method is read properties from properties file
	public ConfigProps getPropValues() {

		// String propFilePath =
	//	String propFilePath ="D:/Users/pushkar_s/Desktop/Rainier/RAINIER/WebContent/assets/EM/config.properties";
		String propFilePath = "/tmp/HC/config/config.properties";
		// String propFilePath = "config.properties";
		// String propFilePath = "/WebContent/assets/EM/config.properties";
		Properties prop = new Properties();
		ConfigProps configProps = new ConfigProps();
		InputStream input = null;
		try {
			input = new FileInputStream(propFilePath);
			// Loading the properties file dynamically
			// input
			// =this.getClass().getClassLoader().getResourceAsStream(propFilePath);

			// ===================================================================

			// load a properties file
			prop.load(input);
			configProps.setXmlTarget(prop.getProperty("xmlFilesTarget"));
			configProps.setUsername(prop.getProperty("username"));
			configProps.setPassword(prop.getProperty("password"));
			configProps.setUrlsFile(prop.getProperty("urlsFile"));
			configProps.setProxyHost(prop.getProperty("proxyHost"));
			configProps.setProxyPort(prop.getProperty("proxyPort"));

		} catch (IOException ex) {
			logger.error(ex);
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		// return prop;
		return configProps;
	}

	// This method is read the data from web page
	public String getPropertiesFromURL(String urlstring, String username,
			String pwd, String proxyHost, String proxyPort) {

		URL u;
		InputStream is = null;
		DataInputStream dis;
		String s = null, result = null;
		StringBuffer sb = new StringBuffer();
		final String login = username;
		final String password = pwd;

		try {

			String loginPassword = login + ":" + password;
			String encoded = new sun.misc.BASE64Encoder().encode(loginPassword
					.getBytes());

			// Set proxy and host
			System.setProperty("http.proxyHost", proxyHost);
			System.setProperty("http.proxyPort", proxyPort);

			// Create the URL.
			//u = new URL(urlstring);
			//401 error
			 u = new URL(null, urlstring, new sun.net.www.protocol.http.Handler());
			
			// Authentication
			Authenticator.setDefault(new Authenticator() {

				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(login, password
							.toCharArray());
				}
			});
			// Open an input stream from the url.
			//URLConnection connection = u.openConnection();
			URLConnection connection = (HttpURLConnection) u.openConnection();
			connection.setConnectTimeout(1500);
			connection.setReadTimeout(1500);
			connection.setAllowUserInteraction(false);
			connection.setDoOutput(true);
			connection.setRequestProperty("Authorization", "Basic" + encoded);
			is = u.openStream();

			/*
			 * Convert the InputStream to a buffered DataInputStream. Buffering
			 * the stream makes the reading faster; the readLine() method of the
			 * DataInputStream makes the reading easier.
			 */

			dis = new DataInputStream(new BufferedInputStream(is));

			/*
			 * Now just read each record of the input stream, and print it out.
			 * Note that it's assumed that this problem is run from a
			 * command-line, not from an application or applet.
			 */

			while ((s = dis.readLine()) != null) {
				if (s.contains("<tr") && s.contains("<td")) {
					sb.append(s + "\n");
				}

				if (s.contains("</table>")) {
					result = sb.toString();
					sb = null;
					dis.close();
					return result;
				}
			}

			System.out.println("End");

		} catch (MalformedURLException mue) {
			logger.error(mue);
			System.out.println("A MalformedURLException happened.....");
			mue.printStackTrace();
			System.exit(1);

		} catch (IOException ioe) {
			logger.error(ioe);
			System.out.println("An IOException happened.");
			ioe.printStackTrace();
			System.exit(1);

		} finally {

			// Close the InputStream //

			try {
				is.close();
			} catch (IOException ioe) {
				// just going to ignore this one
				logger.error(ioe);
			}

		} // end of 'finally' clause

		return result;
	}

	// This method is remove html tags from the content
	public String removeTags(String string) {
		Pattern REMOVE_TAGS = Pattern.compile("<.+?>");
		if (string == null || string.length() == 0) {
			System.out.println("No data...");
		}

		Matcher m = REMOVE_TAGS.matcher(string);
		String result = m.replaceAll(" ");
		return result;

	}

	// This method generate xml file
	public void xmlFile(Map<String, String> map, String xmlfilename,
			String xmlTarget) {

		XMLGenClass xmlgen = new XMLGenClass();
		xmlgen.xmlGen(map, xmlfilename, xmlTarget);

	}

	// splitData() method is splits the data lines and then splits into tokens
	public Map<String, String> splitData(String data) {
		// Spliting as Lines
		StringTokenizer sTlines = new StringTokenizer(data, "\n");
		Map<String, String> propertyNval = new TreeMap<String, String>();
		ArrayList<String> listOfLines = new ArrayList<String>();
		while (sTlines.hasMoreElements()) {
			listOfLines.add(sTlines.nextToken());
		}

		Iterator<String> iterator = listOfLines.iterator();
		while (iterator.hasNext()) {
			ArrayList<String> before = new ArrayList<String>();
			StringTokenizer beforeMap = new StringTokenizer(iterator.next(),
					" ");
			while (beforeMap.hasMoreElements()) {
				before.add(beforeMap.nextToken());
			}
			if (before.size() <= 3) {
				propertyNval.put(before.get(0), before.get(1));
			} else {
				propertyNval.put(before.get(0),
						before.get(1) + " " + before.get(2));
			}
		}
		logger.info(propertyNval);

		return propertyNval;
	}

	// This method is fetch the urls from text file.
	public ArrayList<String> readUrls(String urlsFile) {

		ArrayList<String> urlslist = new ArrayList<String>();
		BufferedReader br;

		try {
			br = new BufferedReader(new FileReader(urlsFile));

			try {
				String line;
				while ((line = br.readLine()) != null) {
					urlslist.add(line.trim());
				}

			} catch (IOException e) {
				logger.error(e);
				// e.printStackTrace();
			}

			try {
				br.close();
			} catch (IOException e) {
				logger.error(e);
				// e.printStackTrace();
			}

		} catch (FileNotFoundException e) {
			logger.error(e);
			System.out.println(e);
			e.printStackTrace();
		}

		return urlslist;
	}

	public boolean directoryCheck(String xmlTarget) {
		boolean result = false;
		File directory = new File(xmlTarget);
		System.out.println("XMLGenClass :: " + xmlTarget);
		// check if the location exists
		if (!directory.exists()) {
			// let's try to create it
			try {

				result = directory.mkdirs();

				if (result) {
					logger.debug(xmlTarget + " Directory is created ");
					System.out.println(xmlTarget + " Directory is created ");
				} else {
					logger.debug(xmlTarget + " Directory is not created ");
					System.out
							.println(xmlTarget + " Directory is not created ");
				}

			} catch (Exception ex) {
				// handle the exception
				logger.error("Might be Security exception", ex);
				ex.printStackTrace();
				directory = null;
			}
		} else
			System.out.println("Directory  is exist");

		return result;
	}

}
