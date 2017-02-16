
#!/bin/bash

START_DIR=`pwd`

cd ../articles
ARTICLES=`ls *.html`

# write sitemap header
SITEMAP_FILE="articles-sitemap.xml"
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" > $SITEMAP_FILE
echo "<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">" >> $SITEMAP_FILE

# write sitmap entries
for ARTICLE in $ARTICLES
do
	echo "  <url>" >> $SITEMAP_FILE
	echo "    <loc>http://www.catholicworker.org/dorothyday/articles/$ARTICLE</loc>" >> $SITEMAP_FILE
	echo "    <priority>1</priority>" >> $SITEMAP_FILE
	echo "  </url>" >> $SITEMAP_FILE
done

# write sitemap footer
echo "</urlset>" >> $SITEMAP_FILE

cd $START_DIR



