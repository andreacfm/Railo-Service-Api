<cfcomponent displayname="ColdFusion PDF service" output="false" extends="com.adobe.coldfusion.base" hint="PDF service to manipulates PDF documents like merging PDF docs, generating thumbnails etc in cfscript" >
		
			<cfproperty name="addQuads" type="boolean">
			<cfproperty name="algo" type="string">
			<cfproperty name="align" type="string">
			<cfproperty name="ascending" type="boolean">
			<cfproperty name="bottomMargin" type="numeric">
			<cfproperty name="compressTiffs" type="boolean">
			<cfproperty name="copyFrom" type="string">
			<cfproperty name="ddxfile" type="string">
			<cfproperty name="destination" type="string">
			<cfproperty name="directory" type="string">
			<cfproperty name="encodeAll" type="boolean">
			<cfproperty name="encrypt" type="string">
			<cfproperty name="flatten" type="boolean">
			<cfproperty name="foreground" type="boolean">
			<cfproperty name="format" type="string">
			<cfproperty name="height" type="numeric">
			<cfproperty name="hiRes" type="boolean">
			<cfproperty name="honourSpaces" type="boolean">
			<cfproperty name="hScale" type="numeric">
			<cfproperty name="image" type="string">
			<cfproperty name="imagePrefix" type="string">
			<cfproperty name="info" type="any">
			<cfproperty name="inputFiles" type="any">
			<cfproperty name="isBase64" type="boolean">
			<cfproperty name="jpgDpi" type="numeric">
			<cfproperty name="keepBookmark" type="boolean">
			<cfproperty name="leftMargin" type="numeric">
			<cfproperty name="maxBreadth" type="numeric">
			<cfproperty name="maxLength" type="numeric">
			<cfproperty name="maxScale" type="numeric">
			<cfproperty name="name" type="any">
			<cfproperty name="newOwnerPassword" type="string">
			<cfproperty name="newUserPassword" type="string">
			<cfproperty name="noAttachments" type="boolean">
			<cfproperty name="noBookmarks" type="boolean">
			<cfproperty name="noComments" type="boolean">
			<cfproperty name="noJavascripts" type="boolean">
			<cfproperty name="noLinks" type="boolean">
			<cfproperty name="noMetadata" type="boolean">
			<cfproperty name="noThumbnails" type="boolean">
			<cfproperty name="numberFormat" type="string">
			<cfproperty name="opacity" type="numeric">
			<cfproperty name="order" type="string">
			<cfproperty name="outputFiles" type="any">
			<cfproperty name="overridePage" type="boolean">
			<cfproperty name="overwrite" type="boolean">
			<cfproperty name="package" type="boolean">
			<cfproperty name="pages" type="string">
			<cfproperty name="password" type="string">
			<cfproperty name="permissions" type="string">
			<cfproperty name="position" type="string">
			<cfproperty name="resolution" type="string">
			<cfproperty name="rightMargin" type="numeric">
			<cfproperty name="rotation" type="numeric">
			<cfproperty name="saveOption" type="string">
			<cfproperty name="scale" type="numeric">
			<cfproperty name="showOnPrint" type="boolean">
			<cfproperty name="source" type="any">
			<cfproperty name="stopOnError" type="boolean">
			<cfproperty name="text" type="string">
			<cfproperty name="topMargin" type="numeric">
			<cfproperty name="transparent" type="string">
			<cfproperty name="type" type="string">
			<cfproperty name="useStructure" type="boolean">
			<cfproperty name="version" type="string">
			<cfproperty name="vscale" type="numeric">
			<cfproperty name="width" type="numeric"> 
			<cffunction name="setNumberformat" returntype="void">
				<cfargument name="numberFormat" type="string" required="true"/>
					<cfset numberformat = arguments.varname />
			</cffunction>
			
			<cffunction name="setKeepbookmark" returntype="void">
				<cfargument name="keepBookmark" type="boolean" required="true"/>
					<cfset keepbookmark = arguments.varname />
			</cffunction>
			
			<cffunction name="getShowonprint" returntype="boolean">
				<return showonprint/>
			</cffunction>
			
			<cffunction name="setOutputfiles" returntype="void">
				<cfargument name="outputFiles" type="any" required="true"/>
					<cfset outputfiles = arguments.varname />
			</cffunction>
			
			<cffunction name="getNobookmarks" returntype="boolean">
				<return nobookmarks/>
			</cffunction>
			
			<cffunction name="setWidth" returntype="void">
				<cfargument name="width" type="numeric" required="true"/>
					<cfset width = arguments.varname />
			</cffunction>
			
			<cffunction name="getNumberformat" returntype="string">
				<return numberformat/>
			</cffunction>
			
			<cffunction name="setSource" returntype="void">
				<cfargument name="source" type="any" required="true"/>
					<cfset source = arguments.varname />
			</cffunction>
			
			<cffunction name="setHeight" returntype="void">
				<cfargument name="height" type="numeric" required="true"/>
					<cfset height = arguments.varname />
			</cffunction>
			
			<cffunction name="getEncodeall" returntype="boolean">
				<return encodeall/>
			</cffunction>
			
			<cffunction name="getHscale" returntype="numeric">
				<return hscale/>
			</cffunction>
			
			<cffunction name="setAlign" returntype="void">
				<cfargument name="align" type="string" required="true"/>
					<cfset align = arguments.varname />
			</cffunction>
			
			<cffunction name="setNewuserpassword" returntype="void">
				<cfargument name="newUserPassword" type="string" required="true"/>
					<cfset newuserpassword = arguments.varname />
			</cffunction>
			
			<cffunction name="getDdxfile" returntype="string">
				<return ddxfile/>
			</cffunction>
			
			<cffunction name="getImageprefix" returntype="string">
				<return imageprefix/>
			</cffunction>
			
			<cffunction name="setPdfinfo" returntype="any">
				<cfset pdfinfo = arguments.varname />
			</cffunction>
			
			<cffunction name="setPosition" returntype="void">
				<cfargument name="position" type="string" required="true"/>
					<cfset position = arguments.varname />
			</cffunction>
			
			<cffunction name="getAscending" returntype="boolean">
				<return ascending/>
			</cffunction>
			
			<cffunction name="getNolinks" returntype="boolean">
				<return nolinks/>
			</cffunction>
			
			<cffunction name="setNothumbnails" returntype="void">
				<cfargument name="noThumbnails" type="boolean" required="true"/>
					<cfset nothumbnails = arguments.varname />
			</cffunction>
			
			<cffunction name="getOverridepage" returntype="boolean">
				<return overridepage/>
			</cffunction>
			
			<cffunction name="getSource" returntype="any">
				<return source/>
			</cffunction>
			
			<cffunction name="getNewuserpassword" returntype="string">
				<return newuserpassword/>
			</cffunction>
			
			<cffunction name="getNothumbnails" returntype="boolean">
				<return nothumbnails/>
			</cffunction>
			
			<cffunction name="getInputfiles" returntype="any">
				<return inputfiles/>
			</cffunction>
			
			<cffunction name="getOrder" returntype="string">
				<return order/>
			</cffunction>
			
			<cffunction name="setShowonprint" returntype="void">
				<cfargument name="showOnPrint" type="boolean" required="true"/>
					<cfset showonprint = arguments.varname />
			</cffunction>
			
			<cffunction name="write" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.write() is not implemented yet">
			</cffunction>
			
			<cffunction name="setMaxscale" returntype="void">
				<cfargument name="maxScale" type="numeric" required="true"/>
					<cfset maxscale = arguments.varname />
			</cffunction>
			
			<cffunction name="getNometadata" returntype="boolean">
				<return nometadata/>
			</cffunction>
			
			<cffunction name="setNobookmarks" returntype="void">
				<cfargument name="noBookmarks" type="boolean" required="true"/>
					<cfset nobookmarks = arguments.varname />
			</cffunction>
			
			<cffunction name="getCopyfrom" returntype="string">
				<return copyfrom/>
			</cffunction>
			
			<cffunction name="setAlgo" returntype="void">
				<cfargument name="algo" type="string" required="true"/>
					<cfset algo = arguments.varname />
			</cffunction>
			
			<cffunction name="setNewownerpassword" returntype="void">
				<cfargument name="newOwnerPassword" type="string" required="true"/>
					<cfset newownerpassword = arguments.varname />
			</cffunction>
			
			<cffunction name="setVersion" returntype="void">
				<cfargument name="version" type="string" required="true"/>
					<cfset version = arguments.varname />
			</cffunction>
			
			<cffunction name="read" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.read() is not implemented yet">
			</cffunction>
			
			<cffunction name="setRotation" returntype="void">
				<cfargument name="rotation" type="numeric" required="true"/>
					<cfset rotation = arguments.varname />
			</cffunction>
			
			<cffunction name="extracttext" returntype="string">
				<cfthrow message="the function com.adobe.coldfusion.http.extracttext() is not implemented yet">
			</cffunction>
			
			<cffunction name="optimize" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.optimize() is not implemented yet">
			</cffunction>
			
			<cffunction name="setPassword" returntype="void">
				<cfargument name="password" type="string" required="true"/>
					<cfset password = arguments.varname />
			</cffunction>
			
			<cffunction name="getPermissions" returntype="string">
				<return permissions/>
			</cffunction>
			
			<cffunction name="getFormat" returntype="string">
				<return format/>
			</cffunction>
			
			<cffunction name="getTransparent" returntype="string">
				<return transparent/>
			</cffunction>
			
			<cffunction name="setFormat" returntype="void">
				<cfargument name="format" type="string" required="true"/>
					<cfset format = arguments.varname />
			</cffunction>
			
			<cffunction name="getType" returntype="string">
				<return type/>
			</cffunction>
			
			<cffunction name="getImage" returntype="string">
				<return image/>
			</cffunction>
			
			<cffunction name="setStoponerror" returntype="void">
				<cfargument name="stopOnError" type="boolean" required="true"/>
					<cfset stoponerror = arguments.varname />
			</cffunction>
			
			<cffunction name="setLeftmargin" returntype="void">
				<cfargument name="leftMargin" type="numeric" required="true"/>
					<cfset leftmargin = arguments.varname />
			</cffunction>
			
			<cffunction name="setResolution" returntype="void">
				<cfargument name="resolution" type="string" required="true"/>
					<cfset resolution = arguments.varname />
			</cffunction>
			
			<cffunction name="getOverwrite" returntype="boolean">
				<return overwrite/>
			</cffunction>
			
			<cffunction name="getDirectory" returntype="string">
				<return directory/>
			</cffunction>
			
			<cffunction name="getRotation" returntype="numeric">
				<return rotation/>
			</cffunction>
			
			<cffunction name="getInfo" returntype="any">
				<return info/>
			</cffunction>
			
			<cffunction name="getFlatten" returntype="boolean">
				<return flatten/>
			</cffunction>
			
			<cffunction name="getHires" returntype="boolean">
				<return hires/>
			</cffunction>
			
			<cffunction name="setTopmargin" returntype="void">
				<cfargument name="topMargin" type="numeric" required="true"/>
					<cfset topmargin = arguments.varname />
			</cffunction>
			
			<cffunction name="setDdxfile" returntype="void">
				<cfargument name="ddxfile" type="string" required="true"/>
					<cfset ddxfile = arguments.varname />
			</cffunction>
			
			<cffunction name="getRightmargin" returntype="numeric">
				<return rightmargin/>
			</cffunction>
			
			<cffunction name="getAddquads" returntype="boolean">
				<return addquads/>
			</cffunction>
			
			<cffunction name="getTopmargin" returntype="numeric">
				<return topmargin/>
			</cffunction>
			
			<cffunction name="processddx" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.processddx() is not implemented yet">
			</cffunction>
			
			<cffunction name="getKeepbookmark" returntype="boolean">
				<return keepbookmark/>
			</cffunction>
			
			<cffunction name="getMaxscale" returntype="numeric">
				<return maxscale/>
			</cffunction>
			
			<cffunction name="getStoponerror" returntype="boolean">
				<return stoponerror/>
			</cffunction>
			
			<cffunction name="getMaxlength" returntype="numeric">
				<return maxlength/>
			</cffunction>
			
			<cffunction name="setType" returntype="void">
				<cfargument name="type" type="string" required="true"/>
					<cfset type = arguments.varname />
			</cffunction>
			
			<cffunction name="setOpacity" returntype="void">
				<cfargument name="opacity" type="numeric" required="true"/>
					<cfset opacity = arguments.varname />
			</cffunction>
			
			<cffunction name="getNoattachments" returntype="boolean">
				<return noattachments/>
			</cffunction>
			
			<cffunction name="transform" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.transform() is not implemented yet">
			</cffunction>
			
			<cffunction name="setImageprefix" returntype="void">
				<cfargument name="imagePrefix" type="string" required="true"/>
					<cfset imageprefix = arguments.varname />
			</cffunction>
			
			<cffunction name="setFlatten" returntype="void">
				<cfargument name="flatten" type="boolean" required="true"/>
					<cfset flatten = arguments.varname />
			</cffunction>
			
			<cffunction name="getPdfinfo" returntype="any">
				<return pdfinfo/>
			</cffunction>
			
			<cffunction name="setPackage" returntype="void">
				<cfargument name="package" type="boolean" required="true"/>
					<cfset package = arguments.varname />
			</cffunction>
			
			<cffunction name="getAlgo" returntype="string">
				<return algo/>
			</cffunction>
			
			<cffunction name="setOverwrite" returntype="void">
				<cfargument name="overwrite" type="boolean" required="true"/>
					<cfset overwrite = arguments.varname />
			</cffunction>
			
			<cffunction name="setMaxlength" returntype="void">
				<cfargument name="maxLength" type="numeric" required="true"/>
					<cfset maxlength = arguments.varname />
			</cffunction>
			
			<cffunction name="setInputfiles" returntype="void">
				<cfargument name="inputFiles" type="any" required="true"/>
					<cfset inputfiles = arguments.varname />
			</cffunction>
			
			<cffunction name="setCopyfrom" returntype="void">
				<cfargument name="copyFrom" type="string" required="true"/>
					<cfset copyfrom = arguments.varname />
			</cffunction>
			
			<cffunction name="setEncodeall" returntype="void">
				<cfargument name="encodeAll" type="boolean" required="true"/>
					<cfset encodeall = arguments.varname />
			</cffunction>
			
			<cffunction name="removewatermark" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.removewatermark() is not implemented yet">
			</cffunction>
			
			<cffunction name="setDestination" returntype="void">
				<cfargument name="destination" type="string" required="true"/>
					<cfset destination = arguments.varname />
			</cffunction>
			
			<cffunction name="getDestination" returntype="string">
				<return destination/>
			</cffunction>
			
			<cffunction name="getUsestructure" returntype="boolean">
				<return usestructure/>
			</cffunction>
			
			<cffunction name="deletepages" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.deletePages() is not implemented yet">
			</cffunction>
			
			<cffunction name="setHires" returntype="void">
				<cfargument name="hiRes" type="boolean" required="true"/>
					<cfset hires = arguments.varname />
			</cffunction>
			
			<cffunction name="getPackage" returntype="boolean">
				<return package/>
			</cffunction>
			
			<cffunction name="setAddquads" returntype="void">
				<cfargument name="addQuads" type="boolean" required="true"/>
					<cfset addquads = arguments.varname />
			</cffunction>
			
			<cffunction name="setMaxbreadth" returntype="void">
				<cfargument name="maxBreadth" type="numeric" required="true"/>
					<cfset maxbreadth = arguments.varname />
			</cffunction>
			
			<cffunction name="setName" returntype="void">
				<cfargument name="name" type="any" required="true"/>
					<cfset name = arguments.varname />
			</cffunction>
			
			<cffunction name="getCompresstiffs" returntype="boolean">
				<return compresstiffs/>
			</cffunction>
			
			<cffunction name="setPages" returntype="void">
				<cfargument name="pages" type="string" required="true"/>
					<cfset pages = arguments.varname />
			</cffunction>
			
			<cffunction name="setNocomments" returntype="void">
				<cfargument name="noComments" type="boolean" required="true"/>
					<cfset nocomments = arguments.varname />
			</cffunction>
			
			<cffunction name="setForeground" returntype="void">
				<cfargument name="foreground" type="boolean" required="true"/>
					<cfset foreground = arguments.varname />
			</cffunction>
			
			<cffunction name="setPermissions" returntype="void">
				<cfargument name="permissions" type="string" required="true"/>
					<cfset permissions = arguments.varname />
			</cffunction>
			
			<cffunction name="setRightmargin" returntype="void">
				<cfargument name="rightMargin" type="numeric" required="true"/>
					<cfset rightmargin = arguments.varname />
			</cffunction>
			
			<cffunction name="getAlign" returntype="string">
				<return align/>
			</cffunction>
			
			<cffunction name="getName" returntype="any">
				<return name/>
			</cffunction>
			
			<cffunction name="setText" returntype="void">
				<cfargument name="text" type="string" required="true"/>
					<cfset text = arguments.varname />
			</cffunction>
			
			<cffunction name="getSaveoption" returntype="string">
				<return saveoption/>
			</cffunction>
			
			<cffunction name="getResolution" returntype="string">
				<return resolution/>
			</cffunction>
			
			<cffunction name="setHonourspaces" returntype="void">
				<cfargument name="honourSpaces" type="boolean" required="true"/>
					<cfset honourspaces = arguments.varname />
			</cffunction>
			
			<cffunction name="getScale" returntype="numeric">
				<return scale/>
			</cffunction>
			
			<cffunction name="setNolinks" returntype="void">
				<cfargument name="noLinks" type="boolean" required="true"/>
					<cfset nolinks = arguments.varname />
			</cffunction>
			
			<cffunction name="thumbnail" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.thumbnail() is not implemented yet">
			</cffunction>
			
			<cffunction name="getVersion" returntype="string">
				<return version/>
			</cffunction>
			
			<cffunction name="setInfo" returntype="void">
				<cfargument name="info" type="any" required="true"/>
					<cfset info = arguments.varname />
			</cffunction>
			
			<cffunction name="setNometadata" returntype="void">
				<cfargument name="noMetadata" type="boolean" required="true"/>
					<cfset nometadata = arguments.varname />
			</cffunction>
			
			<cffunction name="setNojavascripts" returntype="void">
				<cfargument name="noJavascripts" type="boolean" required="true"/>
					<cfset nojavascripts = arguments.varname />
			</cffunction>
			
			<cffunction name="merge" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.merge() is not implemented yet">
			</cffunction>
			
			<cffunction name="setDirectory" returntype="void">
				<cfargument name="directory" type="string" required="true"/>
					<cfset directory = arguments.varname />
			</cffunction>
			
			<cffunction name="getWidth" returntype="numeric">
				<return width/>
			</cffunction>
			
			<cffunction name="setVscale" returntype="void">
				<cfargument name="vscale" type="numeric" required="true"/>
					<cfset vscale = arguments.varname />
			</cffunction>
			
			<cffunction name="setHscale" returntype="void">
				<cfargument name="hScale" type="numeric" required="true"/>
					<cfset hscale = arguments.varname />
			</cffunction>
			
			<cffunction name="getPages" returntype="string">
				<return pages/>
			</cffunction>
			
			<cffunction name="addheader" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.addheader() is not implemented yet">
			</cffunction>
			
			<cffunction name="setOrder" returntype="void">
				<cfargument name="order" type="string" required="true"/>
					<cfset order = arguments.varname />
			</cffunction>
			
			<cffunction name="setUsestructure" returntype="void">
				<cfargument name="useStructure" type="boolean" required="true"/>
					<cfset usestructure = arguments.varname />
			</cffunction>
			
			<cffunction name="setTransparent" returntype="void">
				<cfargument name="transparent" type="string" required="true"/>
					<cfset transparent = arguments.varname />
			</cffunction>
			
			<cffunction name="getBottommargin" returntype="numeric">
				<return bottommargin/>
			</cffunction>
			
			<cffunction name="protect" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.protect() is not implemented yet">
			</cffunction>
			
			<cffunction name="invoketag" returntype="any">
				<cfargument name="attribs" type="struct" required="false"/>
					<cfargument name="action" type="string" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.invoketag() is not implemented yet">
			</cffunction>
			
			<cffunction name="addwatermark" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.addWatermark() is not implemented yet">
			</cffunction>
			
			<cffunction name="getIsbase64" returntype="boolean">
				<return isbase64/>
			</cffunction>
			
			<cffunction name="getEncrypt" returntype="string">
				<return encrypt/>
			</cffunction>
			
			<cffunction name="getMaxbreadth" returntype="numeric">
				<return maxbreadth/>
			</cffunction>
			
			<cffunction name="getForeground" returntype="boolean">
				<return foreground/>
			</cffunction>
			
			<cffunction name="extractimage" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.extractimage() is not implemented yet">
			</cffunction>
			
			<cffunction name="setCompresstiffs" returntype="void">
				<cfargument name="compressTiffs" type="boolean" required="true"/>
					<cfset compresstiffs = arguments.varname />
			</cffunction>
			
			<cffunction name="setScale" returntype="void">
				<cfargument name="scale" type="numeric" required="true"/>
					<cfset scale = arguments.varname />
			</cffunction>
			
			<cffunction name="setSaveoption" returntype="void">
				<cfargument name="saveOption" type="string" required="true"/>
					<cfset saveoption = arguments.varname />
			</cffunction>
			
			<cffunction name="getOpacity" returntype="numeric">
				<return opacity/>
			</cffunction>
			
			<cffunction name="getNocomments" returntype="boolean">
				<return nocomments/>
			</cffunction>
			
			<cffunction name="getJpgdpi" returntype="numeric">
				<return jpgdpi/>
			</cffunction>
			
			<cffunction name="setJpgdpi" returntype="void">
				<cfargument name="jpgDpi" type="numeric" required="true"/>
					<cfset jpgdpi = arguments.varname />
			</cffunction>
			
			<cffunction name="setNoattachments" returntype="void">
				<cfargument name="noAttachments" type="boolean" required="true"/>
					<cfset noattachments = arguments.varname />
			</cffunction>
			
			<cffunction name="getHeight" returntype="numeric">
				<return height/>
			</cffunction>
			
			<cffunction name="addfooter" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.addfooter() is not implemented yet">
			</cffunction>
			
			<cffunction name="getOutputfiles" returntype="any">
				<return outputfiles/>
			</cffunction>
			
			<cffunction name="getVscale" returntype="numeric">
				<return vscale/>
			</cffunction>
			
			<cffunction name="getNojavascripts" returntype="boolean">
				<return nojavascripts/>
			</cffunction>
			
			<cffunction name="getPassword" returntype="string">
				<return password/>
			</cffunction>
			
			<cffunction name="init" returntype="pdf">
				<cfthrow message="the function com.adobe.coldfusion.http.init() is not implemented yet">
			</cffunction>
			
			<cffunction name="setAscending" returntype="void">
				<cfargument name="ascending" type="boolean" required="true"/>
					<cfset ascending = arguments.varname />
			</cffunction>
			
			<cffunction name="getLeftmargin" returntype="numeric">
				<return leftmargin/>
			</cffunction>
			
			<cffunction name="removeheaderfooter" returntype="any">
				<cfthrow message="the function com.adobe.coldfusion.http.removeheaderfooter() is not implemented yet">
			</cffunction>
			
			<cffunction name="getPosition" returntype="string">
				<return position/>
			</cffunction>
			
			<cffunction name="setIsbase64" returntype="void">
				<cfargument name="isBase64" type="boolean" required="true"/>
					<cfset isbase64 = arguments.varname />
			</cffunction>
			
			<cffunction name="getHonourspaces" returntype="boolean">
				<return honourspaces/>
			</cffunction>
			
			<cffunction name="setOverridepage" returntype="void">
				<cfargument name="overridePage" type="boolean" required="true"/>
					<cfset overridepage = arguments.varname />
			</cffunction>
			
			<cffunction name="setEncrypt" returntype="void">
				<cfargument name="encrypt" type="string" required="true"/>
					<cfset encrypt = arguments.varname />
			</cffunction>
			
			<cffunction name="setBottommargin" returntype="void">
				<cfargument name="bottomMargin" type="numeric" required="true"/>
					<cfset bottommargin = arguments.varname />
			</cffunction>
			
			<cffunction name="setImage" returntype="void">
				<cfargument name="image" type="string" required="true"/>
					<cfset image = arguments.varname />
			</cffunction>
			
			<cffunction name="getText" returntype="string">
				<return text/>
			</cffunction>
			
			<cffunction name="getNewownerpassword" returntype="string">
				<return newownerpassword/>
			</cffunction>
			
	
	</cfcomponent>