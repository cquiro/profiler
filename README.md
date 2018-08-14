# PROFILER


- This app shows the profile of a user in the browser.


- The user can update their profile from the browser.


- No authentication was implemented.


- The app includes an API with two endpoints exposed:

    /zemoga_portfolio_api/modify_user_info

    Action: GET
    Params: None
    Use: Returns some of the user's info. The endpoint returns json like:

    * { "full_name": "Carlos Quiroga",
        "title": "Web Developer",
        "description": "I build web apps using Rails.", 
        "image": "https://placehold.it/200x200.png" }


    /zemoga_portfolio_api/modify_user_info

    Action: PATCH
    Params: { user: { first_name: '', last_name: '', title: '', image: '', description: '' } }
    Use: Update all or one of the user attributes. The endpoint returns json like:

    * { "full_name": "Carlos Quiroga",
        "title": "Web Developer",
        "description": "I build web apps using Rails.", 
        "image": "https://placehold.it/200x200.png" }


Ruby version: 2.5.0
Rails version: 5.2.1
Database: PostgreSQL

Configuration: 
- You need to get authentication credentials from Twitter and store them in a .env file.

