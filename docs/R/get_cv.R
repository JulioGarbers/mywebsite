# Obtain cv.pdf
download.file("https://raw.githubusercontent.com/JulioGarbers/my_CV/master/CV.pdf", "_site/CV.pdf")

# Make the button "CV" open in a new tab
index_html <- readLines("_site/index.html")
index_html <- gsub('href="CV.pdf"', 'href="CV.pdf" target = "blank"', index_html)
cat(index_html, sep = "\n", file = "_site/index.html")
