package com.fetch.link;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Authenticator;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;

import com.fetch.ConfigProps;
import com.fetch.url.DataFromUrl;

import sun.net.www.protocol.http.HttpURLConnection;

public class SearchLinksExtractor {
	final static Logger logger = Logger.getLogger(DataFromUrl.class);
	private static final String HTML_A_TAG_PATTERN = "(?i)<a([^>]+)>(.+?)</a>";
	private static final String HTML_A_HREF_TAG_PATTERN ="\\s*(?i)href\\s*=\\s*(\"([^\"]*\")|'[^']*'|([^'\">\\s]+))";
	
	private Pattern patternTag, patternLink;
	private Matcher matcherTag, matcherLink;
	
	public SearchLinksExtractor() {
		patternTag = Pattern.compile(HTML_A_TAG_PATTERN);
		patternLink = Pattern.compile(HTML_A_HREF_TAG_PATTERN);
	}
	
	
	public String getDynAdmin(String urlstring) {

		ConfigProps configProps;
		URL u;
		InputStream is = null;
		DataInputStream dis=null;
		String s = null, result = null;
		StringBuffer sb = new StringBuffer();
		
		DataFromUrl datafromurl = new DataFromUrl();
		// Read the properties form
		configProps = datafromurl.getPropValues();

		
		final String username = configProps.getUsername();
	    final String password = configProps.getPassword();
		String proxyHost = configProps.getProxyHost();
		String proxyPort = configProps.getProxyPort();
		
		
		try {
			
			String loginPassword = username + ":" + password;
			//System.out.println("BEFORE AUTHENTICATION ");
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
					return new PasswordAuthentication(username, password
							.toCharArray());
				}
			});
			// Open an input stream from the url.
			//URLConnection connection = u.openConnection();
			
			URLConnection connection = (HttpURLConnection) u.openConnection(); 
			System.out.println("Connection Opened ... .. ");
			connection.setConnectTimeout(1500);
			connection.setReadTimeout(1500);
			connection.setAllowUserInteraction(false);
			connection.setDoOutput(true);
			connection.setRequestProperty("Authorization", "Basic" + encoded);
			System.out.println("Authentication done");
			is = u.openStream();
			System.out.println("URL Creted ");
			/*
			 * Convert the InputStream to a buffered DataInputStream. Buffering
			 * the stream makes the reading faster; the readLine() method of the
			 * DataInputStream makes the reading easier.
			 */

			dis = new DataInputStream(new BufferedInputStream(is));
			
			while ((s = dis.readLine()) != null) {
			
					sb.append(s + "\n");
				}

				
					result = sb.toString();
					sb = null;
					dis.close();
			

			System.out.println(" ============>>>>>>>>> END ");
		

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

	/**
	 * Validate html with regular expression
	 *
	 * @param html
	 *            html content for validation
	 * @return Vector links and link text //Vector<HtmlLink> 
	 */
	public Map<String,String> grabHTMLLinks(String searchString,String urlstring) {
		
		final String html=getDynAdmin(urlstring);
		
		
		Map<String,String> textHref=new HashMap<String,String>();

		matcherTag = patternTag.matcher(html);

		while (matcherTag.find()) {

			String href = matcherTag.group(1); // href
			String linkText = matcherTag.group(2); // link text
		//	System.out.println("====>>>> Href : "+href+" ===>>>> link text "+linkText);
			if(href.contains(searchString)&&linkText.contains(searchString) ){
			matcherLink = patternLink.matcher(href);

			while (matcherLink.find()) {
				String link = matcherLink.group(1); // link
				textHref.put(linkText, link);
				
			}
			}

		}
	//	return result;
		return textHref;
	}

}
