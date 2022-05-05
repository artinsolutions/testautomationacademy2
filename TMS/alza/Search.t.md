# Search Test Cases

Tags: searchbox, autocomplete, searchgrid, results

## Search Box Suggestions
* 11 Empty Search Box Suggestions
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Check if the autocomplete widget with following sections appear:
      - Most searched phrases
      - Most viewed products
      - You may like
      
* 12 One Letter Suggestions
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Type in the character "m" into the search box
    * Check if the autocomplete widget with following groups appears under the search box:
      - Items
      - Category
      - Brand
      - Article

* 13 Search History Suggestions    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Type in the text "pen" into the search box
    * Click on the 'Search' button
    * Type in the text "phone" into the search box
    * Click on the 'Search' button 
    * Erase the text in the search button
    * Check if the autocomplete widget is suggesting following phrases:
      - phone
      - pen
      
## Search Results Relevancy
* 14 Searching For A Specific Keyword
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Type in text 'pen' into the search box
    * Click on the 'Search' button
    * Check the redirection to https://www.alza.sk/EN/search.htm?exps=pen
    * Check if all listed items in following sections contains text 'pen':
      - Categories
      - Product types

* 15 No Matching Result
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Type in text '%qazwsx' into the search box
    * Hit the enter key
    * Check the redirection to https://www.alza.sk/EN/search.htm?exps=qazwsx
    * Check if the search result section contains following phrases:
      - I'm doing my best, but I can't find „%qazwsx“.
      - What next?
          - Please check you entered the correct information. 
          - Try searching using similar words.
          - Try a more general search.
          
## Search Results Grid

* 16 Total Number Of Search Results
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Type in text 'phone' into the search box
    * Click on the 'Search' button
    * Check if the following phrase is present above the result grid header:
      - 880 Results

* 17 Search Results Header
    * Navigate to https://www.alza.sk/EN/ with clear site data
    * Click in the search box
    * Type in text 'christmas' into the search box
    * Click on the 'Search' button
    * Check if the following tabs are present on the top of the search results grid:
      - TOP
      - Price High to Low
      - Price Low to High
      - Top-Rated

### Search Results Grid Sorting
* 171 Sorting of the TOP Results
    * Process TC 17
    * Check if:
      - the 'TOP' results header tab is active
      - the url contains '#f&cst=null&cud=0&pg=1&prod='
      - the results grid contains 6 rows and 4 columns

* 172 Sorting of the 'Price High to Low' Results
    * Process TC 17
    * Click on the 'Price High to Low' results header tab
    * Check if:
      - the url contains '#f&cst=null&cud=0&pg=1&pn=2&prod='
      - the results grid contains 6 rows and 4 columns
      - the prices in the grid are actually sorted from high to low

* 173 Sorting of the 'Price Low to High' Results
    * Process TC 17
    * Click on the 'Price Low to High' results header tab
    * Check if:
      - the url contains '#f&cst=0&cud=0&pg=1&pn=1&prod='
      - the results grid contains 6 rows and 4 columns
      - the prices in the grid are actually sorted from low to high

* 174 Sorting of the 'Top-Rated' Results
    * Process TC 17
    * Click on the 'Top-Rated' results header tab
    * Check if:
      - the url contains '#f&cst=0&cud=0&pg=1&pn=6&prod='
      - the results grid contains 6 rows and 4 columns
      - the rating is actually sorted from highest to lowest one