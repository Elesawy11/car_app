# Car App
## Clean Architecture Approach 
## Separate each widget to make reuse operation easy
## Use Get Package in :
###   - state management
###   - Localization
###   - Navigation in App
###   - some animation
###   - dependency injection4
## Responsible App 
- use responsible widgets, MediaQuery package, and ScreenUtils Package
## The project consists of UI only, 
- first status app bar, i create a class that extends GetxController and create method that change color of status bar
 then i get it in home view widget with Get.put method to conduct dependency injection.
- dark mode icon, when click on it it see state of theme mode and change theme mode depend on past state
- each widget in UI can be reused again in any place in app. 
# Home Screen Light Mode
![Screenshot_1730650508](https://github.com/user-attachments/assets/ae53d203-4188-43d5-b50d-c58c36e6ea4b)

# Home Screen Dark Mode
## I use the 'Get' to Access theme mode in the app 
![Screenshot_1730650595](https://github.com/user-attachments/assets/3dad43f5-d696-471c-b0d2-6101c7cd841c)
# Car Details Screen
![Screenshot_1730650522](https://github.com/user-attachments/assets/e26e970f-97e5-4fba-84b9-cf5f705ccbf9)
