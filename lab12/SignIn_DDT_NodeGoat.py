# -*- coding: utf-8 -*-
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
from ddt import ddt, data, unpack
import csv
import unittest, time, re
import warnings
warnings.simplefilter(action='ignore', category=Warning)

@ddt
class NodeGoatSignIn(unittest.TestCase):

    @classmethod
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(30)

    
    @unpack
    def test_sign_in(self):
        driver = self.driver
     
        driver.get("http://nodegoat.herokuapp.com/login")
        driver.find_element_by_id("userName").click()
        driver.find_element_by_id("userName").clear()
        driver.find_element_by_id("userName").send_keys("user1")
        driver.find_element_by_id("password").click()
        driver.find_element_by_id("password").clear()
        driver.find_element_by_id("password").send_keys("User1_123")
        driver.find_element_by_xpath("//button[@type='submit']").click()
		
    @classmethod
    def tearDown(self):
        self.driver.quit()
        
	

	
if __name__ == "__main__":
    unittest.main()
	
