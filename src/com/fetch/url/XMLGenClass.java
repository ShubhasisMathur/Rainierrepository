package com.fetch.url;

import java.io.File;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class XMLGenClass implements XMLGen{
	final static Logger logger = Logger.getLogger(XMLGenClass.class);

	public void xmlGen(Map<String, String> map, String xmlfilename,
			String xmlTarget) {
		try {
			DocumentBuilder builder = null;
			builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document document = builder.newDocument();
			Element root = document.createElement("Properties");
			for (String key : map.keySet()) {
				
				String value = map.get(key);
				
				Element newNode = document.createElement("property");
				Element propertyName = document.createElement("name");
				Element propertyValue = document.createElement("value");
				
				propertyName.setTextContent(key.toString());
				propertyValue.setTextContent(value.toString());
				newNode.appendChild(propertyName);
				newNode.appendChild(propertyValue);
				root.appendChild(newNode);

			}
			document.appendChild(root);

			Transformer transformer = TransformerFactory.newInstance()
					.newTransformer();
			Source source = new DOMSource(document);
			File file = new File(xmlTarget + "/" + xmlfilename + ".xml");
			Result result = new StreamResult(file);
			transformer.transform(source, result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
