# Recipes database

We are creating a database to store recipe data.

Database consists recipes and ingredients needed in the recipe.

Origin of the recipe in stored as country code (ISO) (2 or 3 chars) Here 3 chars

for example FIN or SWE

https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes


recipe:
-   id (unique)
-   name
-   countrycode
-   instructions

ingredients:
-   id (unique)
-   name
-   pictureName

recipe_has_ingredient:
-   recipeNumber
-   ingredientNumber
-   amount
-   unit

country should have also name, 2 char countrycode and the -language.

add images for recipe (image have number (unique) and name, alt text and filename)