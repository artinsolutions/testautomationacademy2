# Cart Test Cases

Tags: catalogue, cart

## User is not logged in yet

### Positive Cart Paths

* 311 Adding a specific item via available category filters
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click on the 'Computers and Laptops' category located in the left menu
    * Click on the 'Laptops' category located in the left menu
    * Click on the 'Home and Office' category button
    * Click on the 'Affordable' category button
    * Click on the 'Best Sellers' results header tab
    * Click on the Item that is marked as the third bestseller item with respective badge icon badge
    * Click on the 'Add to Cart' button
    * Check if:
      - Phrase 'Product Added to Cart.' is present on the page
      - (x) Respective picture and product name is present on the page
      - (*) Count of the items over the cart icon located in the top right corner is set to 1
      - (?) Price next to the cart icon located in the top right corner is correct
    * Click on the 'Proceed to Checkout' button
    * Check the redirection to https://www.alza.sk/EN/Order1.htm
    * Click on the 'Continue' button
    * (?) Check the redirection to https://www.alza.sk/EN/Order2.htm
    * Click on the 'Do not add anything' button
    * Click on the 'Bratislava - main shop' shipping option
    * Click on the button 'Confirm your selection'
    * Click on the 'Credit / Debit Card' option
    * Click on the 'Continue' button
    * Check the redirection to https://www.alza.sk/EN/Order3.htm

* 312 Adding a multiple items via various paths
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Type in text 'lego' into the search box 
    * Click on the 'Search' button 
    * Click on the 'Top-Rated' results header tab
    * Click on the 'Buy' button for product located in the 3rd row and 2nd column within the results grid
    * Check if:
      - Phrase 'Product Added to Cart.' is present on the page
      - Respective picture and product name is present on the page
      - Count of the items over the cart icon located in the top right corner is set to 1
    * Click on the alza.sk logo in the top left corner of the page
    * Click on the previous button within the 'Deal Weeks' carousel box
    * Click on the 4th product from 'Deal Weeks' carousel box
    * Click on the 'Add to Cart' button
    * Check if:
      - Phrase 'Product Added to Cart.' is present on the page
      - Respective picture and product name is present on the page
      - Count of the items over the cart icon located in the top right corner is set to 2
    * Hover the mouse cursor over the 'Household supplies' category located in the left menu
    * Click on the 'More categories' within the 'Light Bulbs and Lighting' section located in the floating menu
    * Click on the 'Work lights' sub-category
    * Click on the picture of the 1st  product within the 'Best Sellers' section
    * Click on the 'Add to Cart' button
    * Check if:
      - Phrase 'Product Added to Cart.' is present on the page
      - Respective picture and product name is present on the page
      - Count of the items over the cart icon located in the top right corner is set to 3
    * Click on the cart icon
    * Check the redirection to https://www.alza.sk/EN/Order1.htm
    * Check if the total count of listed items is 3
  
### Negative Cart Paths
* 321 Adding a not available item from search engine results
    * Navigate to https://www.alza.sk/EN/honor-9-lite-midnight-black-d5240693.htm
    * Check if:
     - the phrase 'We apologise, but the product is no longer sold' is shown over the product picture
     - 'Add to Cart' button is not available
     - 'Show alternatives' button is available