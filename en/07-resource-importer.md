# Resource Importer
This is a web resource that was built by [Ryan Park](http://www.liferay.com/web/ryan.park/profile). Its located in the Liferay Plugins [liferay-plugins/web/resources-importer-web](https://github.com/liferay/liferay-plugins/tree/master/webs/resources-importer-web)

The purpose is to import web content that is stored in the theme, and create a site template that can display default web content for a particular theme.

## Marketplace Package File
Make sure to include the resources-importer-web.war file and the theme inside of a Liferay Package File (.lpkg)

	- lithe-theme.lpkg
		- resources-importer-web.war
		- lithe-theme.war


## Web Content Source
Use **[title case](http://www.editage.co.kr/resources/pdf/case.pdf)** [ex. Featured Content] for both folder and files within (articles, structures, templates) required folders

**articles** - group articles by a folder that matches the name of the **template** file  
**structures** - no folders only structure .xml files  
**templates** - group templates by a folder matches the name of the **structure** file  

Source File Folder Structure
	
	- WEB-INF
		- src
			- resources-importer
				- sitemap.json
				- document_library
					- documents
				- journal
					- articles
						- Featured Content (name of template)
							- Exceptional Support.xml
							- Our Goal.xml
							- The Experience.xml
					- structures
						- Featured Content.xml
					- templates
						- Featured Content [structure name]
							- Featured Content.vm
							- Featured Content2.vm

## .LAR
After you place the web content where you want for the site template, export the site template as a [.lar]. rename is "archive.lar" and place it in the **resource-importer** folder of the theme.

## Document Library
place any resources that the web content needs into the document_library folder. Then in your .html or .xml file of the article reference the resource name like below:
	
	(.html)
	<img src="[$FILE=My Image.jpg$]" />
	<a href="[$FILE=My Document.pdf$]">Click Here</a>
	
	(.xml)
	<![CDATA[[$FILE=carousel_2.png$]]]>
	
	
## sitemap.json file

{
	"layoutTemplateId": "2_columns_ii",
	"layouts": [
		{
			"name": "Home",
			"friendlyURL": "/home",
			"columns": [
				[
					"Home Content.html"
				],
				[
					"Home Carousel.xml"
				]
			]
		},
		{
			"name": "Reservations",
			"friendlyURL": "/reservations",
			"layoutTemplateId": "3-3-3-columns",
			"columns": [
				[
					{
						"portletId": "56",
						"portletPreferences": {
							"articleId": "Welcome.html",
							"groupId": "${groupId}",
							"portletSetupShowBorders": "true",
							"portletSetupUseCustomTitle": "true",
							"portletSetupTitle_en_US": "Welcome"
						}
					}
				],
				[
					{
						"portletId": "56",
						"portletPreferences": {
							"articleId": "Luxurious Suites.html",
							"groupId": "${groupId}",
							"portletSetupShowBorders": "true",
							"portletSetupUseCustomTitle": "true",
							"portletSetupTitle_en_US": "Luxurious Suites"
						}
					}
				],
				[
					{
						"portletId": "56",
						"portletPreferences": {
							"articleId": "Every Room Has.html",
							"groupId": "${groupId}",
							"portletSetupShowBorders": "true",
							"portletSetupUseCustomTitle": "true",
							"portletSetupTitle_en_US": "Every Room Has:"
						}
					}
				],
				[
					{
						"portletId": "56",
						"portletPreferences": {
							"articleId": "Starting At.html",
							"groupId": "${groupId}",
							"portletSetupShowBorders": "false"
						}
					}
				],
				[
					{
						"portletId": "56",
						"portletPreferences": {
							"articleId": "Image Gallery.html",
							"groupId": "${groupId}",
							"portletSetupShowBorders": "false"
						}
					}
				],
				[
					{
						"portletId": "56",
						"portletPreferences": {
							"articleId": "Reserve Your Own Luxury Suite.html",
							"groupId": "${groupId}",
							"portletSetupShowBorders": "false"
						}
					}
				]
			]
		},
		{
			"name": "Rooms",
			"friendlyURL": "/rooms"
		},
		{
			"name": "Restaurant & Bar",
			"friendlyURL": "/restaurant-bar"
		},
		{
			"name": "About Us",
			"friendlyURL": "/about-us"
		},
		{
			"name": "Contact Us",
			"friendlyURL": "/contact-us"
		}
	]
}


-----------------------

