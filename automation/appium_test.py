from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy
import time

# Update this path to your actual APK location
APK_PATH = r"C:\Apexon\Learning\Apps\OK_APP\build\app\outputs\flutter-apk\app-debug.apk"

caps = {
    "platformName": "Android",
    "deviceName": "emulator-5554",  # Change if using a real device
    "app": APK_PATH,
    "automationName": "UiAutomator2"
}

driver = webdriver.Remote("http://localhost:4723/wd/hub", caps)

def find_and_tap(text):
    el = driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR, f'new UiSelector().text("{text}")')
    el.click()
    time.sleep(1)

try:
    time.sleep(3)  # Wait for app to load
    # Tap OK button
    find_and_tap("OK")
    # Validate Second Screen
    assert driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR, 'new UiSelector().text("Second Screen")')
    # Tap Go Back
    find_and_tap("Go Back")
    # Validate back on OkScreen
    assert driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR, 'new UiSelector().text("OK")')
finally:
    driver.quit()
