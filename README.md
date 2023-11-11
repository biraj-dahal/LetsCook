# LetsCook App

LetsCook is an IOS App which helps you craft various dishes through the unique recipes, and AI assistance.
===

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

LetsCook is a mobile app that revolutionizes the cooking experience, offering users access to a diverse recipe database, detailed cooking procedures, and the invaluable assistance of an AI chatbot. Whether you're a seasoned chef or a novice in the kitchen, LetsCook provides a comprehensive cooking companion, enabling users to effortlessly explore, save, and create personalized recipes while seeking real-time guidance and clarification from the AI chatbot, making every cooking endeavor a delightful and stress-free culinary adventure.

### App Evaluation

## Category
Food & Cooking / AI Assistance

## Mobile
Mobile is essential for recipe access in the kitchen, and the AI chatbot provides instant assistance to users.

## Story
LetsCook enhances the cooking experience by offering a comprehensive recipe database and a friendly AI chatbot to answer users' questions. The AI chatbot can help users with ingredient substitutions, cooking techniques, and provide personalized recommendations based on users' preferences.

## Market
LetsCook is designed for home cooks, food enthusiasts, and anyone looking to improve their culinary skills. The app can monetize through partnerships with food-related brands and in-app advertisements.

## Habit
Users are likely to use the app whenever they cook, making it a habitual tool in the kitchen.

## Scope
- Version 1 (V1) would provide access to recipes and basic cooking procedures.
- Version 2 (V2) could include the AI chatbot feature for recipe assistance.
- Version 3 (V3) might allow users to save their favorite recipes.
- Version 4 (V4) could offer personalized recommendations based on users' cooking history and preferences.

## Pros/Cons
- Pros: Wide appeal among home cooks, integration of AI chatbot for unique value, potential for partnerships with food-related brands.
- Cons: Competing with existing recipe apps, development complexity of the AI chatbot.


# Product Spec

## User Stories

### Required Must-have Stories:

- [x] As a user, I want to log in to access my account.
- [x] As a user, I want to sign up for a new account.
- [x] As a user, I want to access the Home Screen for recipe search and personalized recommendations.
- [x] As a user, I want to browse recipe categories.
- [x] As a user, I want to create, add, or save new recipes.
- [x] As a user, I want to access my favorite recipes.
- [x] As a user, I want to access my user profile.
- [ ] As a user, I want to view detailed cooking procedures for recipes.
- [ ] As a user, I want to ask the AI chatbot for recipe assistance.

### Optional Nice-to-have Stories:

- As a user, I want to find ingredient substitutions for recipes.
- As a user, I want to receive cooking technique tips from the AI chatbot.
- As a user, I want to create a shopping list based on selected recipes.
- As a user, I want to see in-app advertisements from food-related brands.
- As a user, I want to receive personalized recipe recommendations.

## Screen Archetypes

### Login/Signup Screen: 
- [x]
- Allows users to log in or sign up for an account.
- Associated Required Stories: Log in, Sign up.

### Home Screen:

- Displays recipe search functionality and personalized recommendations.
- Associated Required Story: Access the Home Screen.

### Categories Screen:

- Allows users to browse recipe categories.
- Associated Required Story: Browse recipe categories.

### Create Recipe Screen:

- Enables users to create, add, or save new recipes.
- Associated Required Story: Create, add, or save new recipes.

### Favorite Recipes Screen:

- Shows a list of saved favorite recipes with images and procedures.
- Associated Required Story: Access favorite recipes.

### User Profile Screen:

- Displays user information and settings.
- Associated Required Story: Access user profile.

### Recipe Details Screen:

- Displays a selected recipe with detailed cooking procedures and images.
- Associated Required Story: View detailed cooking procedures.
- Associated Optional Story: View ingredient substitutions and cooking technique tips.

### AI Chatbot Screen:

- Allows users to interact with the AI chatbot for recipe assistance.
- Associated Required Story: Ask the AI chatbot for recipe assistance.

### Shopping List Screen (Optional):

- Enables users to create a shopping list based on selected recipes.
- Associated Optional Story: Create a shopping list.

### Advertisement Screen (Optional):

- Displays in-app advertisements from food-related brands.
- Associated Optional Story: View in-app advertisements.

## Navigation

### Tab Navigation (Tab to Screen):

- [x] Login/Signup
- Home
- Categories
- Create Recipe
- Favorite Recipes
- User Profile

### Flow Navigation (Screen to Screen):

#### From the Login/Signup Screen:
- [x]
- After logging in or signing up, direct the user to the Home Screen.

#### From the Home Screen:
- [x]
- To the Categories Screen when a user wants to browse categories.
- To the Create Recipe Screen when a user wants to add a new recipe.
- To the Favorite Recipes Screen to access saved recipes.
- To the User Profile Screen to access user settings.
- To the Recipe Details Screen when a user selects a recipe.

#### From the Recipe Details Screen:

- To the Description/Recipe view to see recipe details.
- To the AI Chatbot view for recipe assistance.

#### From the AI Chatbot Screen:

- Return to the Recipe Details Screen.


## Wireframes

![IMG_0328](https://github.com/biraj-dahal/LetsCook/assets/102353731/753c7fda-2e5a-41ee-9344-900c28e4e8ba)


### [BONUS] Digital Wireframes & Mockups

![IMG_0328](https://github.com/biraj-dahal/LetsCook/assets/102353731/753c7fda-2e5a-41ee-9344-900c28e4e8ba)

### [BONUS] Interactive Prototype
(Progress)
![Simulator Screen Recording - iPhone 14 Pro - 2023-11-10 at 20 25 12](https://github.com/biraj-dahal/LetsCook/assets/102353731/bdf22ed1-6856-4d1b-812d-e166f0a19024)

### Reflection on the Progress

I have created User UI for Navigation Controller through Login/SignUp which has a full working Login/SignUp start page, which redirects to Login page when clicked on Login, and redirects to SignUp page when clicked on Signup page. After putting in details, which I will authenticate using firebase later, it redirects into home screen. Starting here, we have a tab view controller, which has 5 different options to change the tab to: Home/Categories/Create/Favourite/User Profile.


## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
