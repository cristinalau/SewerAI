<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <!-- Identity transform -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Drop any element explicitly marked nil -->
  <xsl:template match="*[@xsi:nil='true']"/>

  <!-- Drop empty leaf elements (no children, no attributes, empty/whitespace text) -->
  <xsl:template match="*[not(*) and not(@*) and normalize-space(.)='']"/>

</xsl:stylesheet>
