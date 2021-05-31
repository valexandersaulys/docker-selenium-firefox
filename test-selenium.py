#!/usr/bin/env python3
from selenium.webdriver import Firefox
from selenium.webdriver.firefox.options import Options
from pyvirtualdisplay import Display

display = Display(visible=0, size=(800, 600))
display.start()
driver = Firefox()

driver.get("https://vincentsaulys.com/")
html = driver.page_source

print(html);
