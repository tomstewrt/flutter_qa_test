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

### Test Cases to Implement
1. Name Field Validation
   - Test empty field submission
   - Test name length constraints (< 3 chars and > 20 chars)
   - Test special character removal when text is entered
   - Verify error messages

2. Phone Number Field
   - Test toggle visibility
   - Test validation when visible
   - Test numeric-only input
   - Verify error messages

3. Form Submission
   - Test successful submission with valid data
   - Verify success message appears
   - Verify success message is hidden on resubmission failure

4. Edge Cases
   - Test form submission with only required fields
   - Test form submission with all fields
