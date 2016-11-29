package com.universal.util;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class WebHelper {
	
	public static String docToBetterHTML(Document doc){
		try {
			doc.select("img[src]").removeAttr("width");
		} catch (Exception e){
			e.printStackTrace();
		} try {
			doc.select("a[href]").removeAttr("style");
		} catch (Exception e){
			e.printStackTrace();
		} try {	
			doc.select("div").removeAttr("style");
		} catch (Exception e){
			e.printStackTrace();
		} try {	
			doc.select("iframe").attr("width", "100%");
		} catch (Exception e){
			e.printStackTrace();
		}
		
		String style =   "<style>" +
						"img{" +
							"max-width: 100%; " +
							"width: auto; height: auto;" +
						"} p{" +
							"max-width: 100%; " +
							"width:auto; " +
							"height: auto;" +
						"}" +
						"@font-face {" +
								  "font-family: 'Currents-Light-Sans';" +
								  "font-style: normal;" +
								  "font-weight: normal;" +
								  "src: local('sans-serif-light'), url('file:///android_asset/fonts/Roboto-Light.ttf') format('truetype');" +
						"} body p {  " +
							"font-family: 'Currents-Light-Sans', serif;"+
						"} body {  " +
							"font-family: 'Currents-Light-Sans', serif;" +
							"margin: 0;"+
							"padding: 0;"+
						"}"+
						"</style>";
		
		Element header = doc.head();
		header.append(style);
		
        String html = doc.toString();
        return html;
	}
}