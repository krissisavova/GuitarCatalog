<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="text" encoding="UTF-8" indent="no"/>

    <xsl:template match="/">

        Каталог за китари
        <xsl:for-each select="guitars_catalog/guitars/guitarAbout">
            Марка: <xsl:value-of select="guitar/brand"/>
            Произход (Държава): <xsl:value-of select="countryOfOrigin/@code"/>
            Година на производство: <xsl:value-of select="yearOfManufacture"/>
            Оценка (1-5): <xsl:value-of select="rating"/>
            Уебсайт: <xsl:value-of select="website"/>
            ---------------------------------

        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>
<!-- Guitars-3.xml -->