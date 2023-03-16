<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="MeditacionCss.css" />
			</head>
			<body>
				
				<h1>
					<xsl:value-of select="Texto/titulo"></xsl:value-of>
				</h1>
				
				<h2>
					<xsl:value-of select="Texto/artista"></xsl:value-of>
				</h2>
				
				<h2>
					<xsl:value-of select="Texto/tiempo"></xsl:value-of>
				</h2>
				
				<xsl:for-each select="Texto/parrafo">
					<h3>Parrafo</h3>
					<xsl:for-each select="linea">
					<xsl:value-of select="linea"/><p><span></span><xsl:value-of select="."/></p></xsl:for-each>
				</xsl:for-each>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>