# Product-Maintenance

The provided code includes three JSP files that demonstrate different functionalities related to product management.

## Add Product Form
Usage
The "Add Product Form" JSP file allows users to add product information using a web form. To use this functionality, follow these steps:

Configure a web server (e.g., Apache Tomcat) to run JSP files.

Access the "Add Product Form" page through a web browser.

Fill in the product details, including product number, product name, product type, manufacturer, price, and weight.

Click the "Add Product" button to submit the form.

## Functionality
The form collects product information such as product number, product name, product type, manufacturer, price, and weight.

The form supports selecting a product type from predefined options using radio buttons.

The form provides a dropdown list for selecting the manufacturer.

Upon submitting the form, the information is displayed below the form, confirming the received data.

## Delete A Record
Usage
The "Delete A Record" JSP file allows users to delete a product record from a database using a web form. To use this functionality, follow these steps:

Configure a web server (e.g., Apache Tomcat) to run JSP files.

Access the "Delete A Record" page through a web browser.

Enter the product number to be deleted in the provided text field.

Click the "Delete the Product" button to submit the form.

## Functionality
The form collects the product number to be deleted.

Upon submitting the form, the specified product record is deleted from the database.

The updated product records are displayed in a table below the form.

## Insert Record Form
Usage
The "Insert Record Form" JSP file allows users to add product information to a database using a web form. To use this functionality, follow these steps:

Configure a web server (e.g., Apache Tomcat) to run JSP files.

Access the "Insert Record Form" page through a web browser.

Fill in the product details, including product number, product name, product type, manufacturer, price, and weight.

Click the "Add Product" button to submit the form.

## Functionality
The form collects product information such as product number, product name, product type, manufacturer, price, and weight.

The form supports selecting a product type from predefined options using radio buttons.

The form provides a dropdown list for selecting the manufacturer.

Upon submitting the form, the product information is inserted into the database.

The updated product records are displayed in a table below the form.

## Database Configuration
Ensure that the database is properly configured and accessible before using the application.

## Dependencies
This project has the following dependencies:

Java Servlet API: Required for running JSP files and handling HTTP requests/responses.
JSTL (JavaServer Pages Standard Tag Library): Used for accessing and manipulating data in JSP pages.
