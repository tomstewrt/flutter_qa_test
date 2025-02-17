# Flutter QA Test Requirements

## Form Screen Requirements

### Text Input Fields
1. Name Field (Required)
   - Must not be empty
   - Length validation:
     - Must be more than 3 characters
     - Must be less than 20 characters
   - Special characters are automatically removed during input
   - Field should show appropriate error messages when validation fails

2. Optional Phone Number Field
   - Toggle visibility using a switch control
   - Special characters are automatically removed during input
   - When visible:
     - Must not be empty
     - Must contain only numbers
     - Should show appropriate error messages when validation fails

### Form Submission
1. Submit Button Behavior
   - Clicking submit should trigger form validation
   - Form should only submit if all visible fields pass validation

2. Success Message
   - Should display "Form submitted successfully!" when form is submitted with valid data
   - Success message should be hidden when:
     - User attempts to submit the form again
