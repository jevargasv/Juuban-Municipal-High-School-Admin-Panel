# Juuban-Municipal-High-School-Admin-Panel

This is an admin panel for Juuban Municipal High School, which Usagi Tsukino a.k.a. Sailor Moon attends as well as the rest of the Sailor Team. Also known as 十番区立高等学校 (Jūban Kuritsu Kōtō Gakkō). Also, transfer and foreign exchange students are will be added to this panel in the nearest future.

# Goal:

To create an admin panel for a fictitious school whereby the administrator can create users and complete common administrative tasks.

# Learning Objectives:  

Upon successful completion of this project, the student will demonstrate their understanding of Ruby on Rails, UI Branding, Data Integrity, AJAX in Rails, APIs and deploying a Rails application to Heroku.

# Instructions:

One of the more common requests received when working as a software developer is to create what’s referred to as an administrative panel or admin panel for short. An admin panel is a website, usually proprietary, that is designed to allow people to do common administrative tasks. An example of this is the Wordpress Admin Panel (Links to an external site.)Links to an external site.. In the case of Wordpress, they have created an admin panel for common tasks related to posting content on their website including posting tagging, integration with other apps and theming. If you are not familiar, try signing up for a free account on the WordPress website and familiarize yourself with how their admin panel works.

Pay attention to the following details:

- What is the layout of the website?
- Is this layout effective?
- Why is it laid out this way?
- What is the purpose of this admin panel?
- What are my capabilities when logged in?
- What are my capabilities when logged out?

Given all of this information, let’s try building an admin panel of our own. Picture yourself as a junior developer working for a school, much like this one. The principal of the school reaches out to you and asks you to create a website that enables logged in users to do common tasks needed to run a school. When logged in you should be able to manage students, instructors, courses, and cohorts.

# Completion Requirements:

The completed assignment should:

- have a way to create, display, edit and remove students and
- students have the following information associated with them 
- first name
- last name
- age - must be less than 150
- deletion should be enabled via an ajax call
- have a way to create, display, edit and remove instructors
- Instructors have the following information associated with them
- first name
- last name
- age - must be less than 150
- salary - cannot be less than 0
- highest completed education - should be limited to HS, College, Masters, PHD
- deletion should be enabled via an ajax call
- have a way to create, display, edit and remove courses
- courses have the following information associated with them 
- name
- total in class hours - cannot be less than 0
- deletion should be enabled via an ajax call
- have a way to create, display, edit and remove cohorts
- cohorts have the following information associated with them 
- name
- start date
- end date
- instructor teaching the cohort
- students in the cohort
- deletion should be enabled via an ajax call
- have a way to add students to cohorts
- have a way to add instructors to cohorts
- have a way to add cohorts to courses
- Github - 20 commits , 5 branches
- be deployed to Heroku

# Main Page of the Panel

![alt text](https://github.com/jevargasv/Juuban-Municipal-High-School-Admin-Panel/blob/master/Main%20Page.png)

# Built With:
- CSS/SASS/Bootstrap - Design
- Ruby on Rails - Functions and Data Display
- PostgreSQL - Data Storage
- Ajax/jQuery - Function Call for "Delete"

# Heroku link

https://juuban-municipal-high-school.herokuapp.com/

# Authors:
Jennifer Vargas of NYCDA, September 4, 2018
