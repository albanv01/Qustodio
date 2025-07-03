# 🧪 Qustodio QA Technical Test – API Testing, Routines Feature & Bug Reports

Hi! 👋  
This is my submission for the QA technical test. Inside, you'll find:

- ✅ API tests using Postman for the [Petstore API](https://petstore.swagger.io/)
- 🧠 Gherkin test cases for the **Routines** feature in a parental control app
- 🐞 Two structured bug reports (based on observed or inferred issues)
- 📥 Steps to import and run the Postman collection

Hope you enjoy going through it as much as I enjoyed working on it!

---

## 🔁 API Testing – Petstore

**Scenario:** Add and update a pet using the [Swagger Petstore API](https://petstore.swagger.io/)

### Tools Used:
- Postman (v10+)
- Collection runner
- `tests` tab with JavaScript assertions

### Covered Test Scenarios:
1. Add a new pet with valid data
2. Retrieve the newly added pet by ID
3. Update the pet's name and status
4. Attempt to update a pet with an invalid ID
5. Send a malformed request and expect an error response
6. Try to create a pet without required fields
7. Ensure data persists and updates properly across calls

📁 You'll find the collection file attached: `/api-testing/pet_store.json`

---

## 📥 How to Import the Postman Collection

1. Open Postman
2. Click **"Import"**
3. Choose the file: `pet_store.json`
4. Open the collection and use the Collection Runner to run the full test set

✅ Each request includes:
- Parameters
- Headers (where needed)
- Sample request body
- Assertions under the **Tests** tab

---

## 🧩 Gherkin Test Cases – Routines Feature

**Feature:** Routines in a Parental Control App

I’ve written detailed scenarios in Gherkin syntax to cover:

### 🟢 Main Functional Test Cases
- Routine creation and categories (`Study`, `Focus`, etc.)
- Custom routine logic with app/website rules and device blocks
- Drawer UI behavior and routine customization
- Time and weekday scheduling

### ⚠️ Edge Case Scenarios (e.g., invalid time ranges, overlapping routines, naming conflicts)
You can find all edge cases grouped under `routines_edge.feature`.

---

## 🐛 Bug Reports

### Bug #1 – Rule Syncing Inconsistency
- **Title:** Pornography websites remain blocked in Custom Routine despite being allowed in global rules
- **Summary:** Custom routines do not inherit updated web filtering rules from global settings

### Bug #2 – Mobile Crash on iPhone
- **Title:** Website crashes repeatedly on iPhone – "(https://www.qustodio.com/) has repeatedly caused problems"
- **Summary:** Website is not accessible on iPhone 13 Safari, blocks users completely

Both reports follow a clear structure: title, steps to reproduce, expected vs actual results, environment, and impact.

---

## 🤝 Final Notes

- This project reflects my style of thinking as a QA: detailed, exploratory, user-centered, and curious.
- I'm happy to dig deeper into anything or talk through my choices!
- Thank you for the opportunity 🙌

Feel free to reach out if you'd like the same in another format (PDF, TestRail, Jira, etc.) or if you want to pair on expanding these tests further!

---

Made with 💙 by Alba
