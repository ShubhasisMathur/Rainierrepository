package com.fetch.url;

import java.util.ArrayList;
import java.util.Map;

import com.fetch.ConfigProps;

public interface DataUrl {
	public boolean directoryCheck(String xmlTarget);
	public String generateXML(String url);
	public Map<String, String> getButtons(String port);
	public String getPropertiesFromURL(String urlstring, String username,String pwd, String proxyHost, String proxyPort);
	public ConfigProps getPropValues();
	public ArrayList<String> readUrls(String urlsFile);
	public String removeTags(String string);
	public Map<String, String> splitData(String data);
	public void xmlFile(Map<String, String> map, String xmlfilename,String xmlTarget);

}
