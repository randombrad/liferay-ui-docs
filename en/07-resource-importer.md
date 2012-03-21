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
				archive.lar (optional)
				- document_library
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

-----------------------

