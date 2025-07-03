**Title:**
Pornography websites remain blocked in Custom Routine despite enabling them in Rules > Web Filtering

**Description:**
When a user enables pornography websites under **Rules > Web Filtering** by allowing them, then creates or edits a **Custom Routine** under **Routines > Websites** and chooses to allow all websites, pornography websites are still shown as blocked. This inconsistency could confuse users and prevent the intended access to allowed content.

**Steps to Reproduce:**

1. Navigate to **Rules** > **Web Filtering**.
2. Enable/allow pornography websites in the filtering settings.
3. Go to **Routines** and create or edit a **Custom Routine**.
4. In the routine's website rules, select **Allow all websites**.
5. Observe that pornography websites are still listed as blocked or restricted in the routine.

**Expected Result:**
Pornography websites should be accessible in the Custom Routine once they are enabled in the main Web Filtering rules, reflecting consistent permission logic across the app.

**Actual Result:**
Pornography websites remain blocked in the Custom Routine website rules, despite being allowed in the main Web Filtering settings.

**Impact:**
Users may experience confusion due to conflicting rules, leading to unexpected blocking of websites they intended to allow.

**Environment:**

* App version: N/A
* Platform: Web
* Device: Lenovo Laptop
* Network: Website


**Additional Notes:**
This might be related to inconsistent rule inheritance or a UI caching issue where the routine settings do not sync with the global web filtering preferences.

