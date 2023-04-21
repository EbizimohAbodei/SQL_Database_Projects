# Recipes Database

We are creating a database to store recipe data

Database consists recipes and ingredients needed in the recipe.

Origin of the recipe is stored as country-code (ISO)

Recipe:

- id (primary-key)
- name
- countryCode
- instructions

Ingredients:

- id (unique/primary-key)
- name
- image/picture

recipe_has_some_ingredient:

- recipeId
- ingredientId
- amount
- unit
