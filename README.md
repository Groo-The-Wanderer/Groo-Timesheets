# Groo Timesheets

_**Groo Timesheets**_ is a website that is used to capture timesheet details for a professional services firm. Professional Services firms sell 'time' to clients. This 'time' can be bundled in various forms (e.g. time-and-materials by the hour, by day of effort, by entire project on a fixed price, by outcome or milestone on a project, etc. or a mix of any of these).

Regardless of how the 'time' is sold, fundamental to all of it is that accurate data is captured on what the firm's employees are doing. This information could be used to generate billings for customers or to help manager's estimate effort on projects.

This site was built as a 2nd project half-way through a 12-week web development course (see [WDi from General Assembly](https://generalassemb.ly/education/web-development-immersive?where=sydney)). It was built over 5 days.

### Why 'Groo'?
Groo The Wanderer was my favourite comic book character growing up. Groo, the hero of the comics, is a bumbling, accident-prone swordsman in ancient times who has great intentions but leaves a trail of destruction wherever he goes. Groo's bumbling buffoonery appeals to me. 

## Getting Started

The site is available live via the following Heroku link:

<https://groo-timesheets.herokuapp.com/login>

To access admin functionality such as setting up reference data please log in with the following credentials:

`bl@gmail.com / chicken`

To access non-admin functionality (i.e. a normal employee user of the system) then use the following credentials:

`nathan@gmail.com / chicken`

## Site Features
![alt text](https://github.com/Groo-The-Wanderer/project1/blob/master/public/groo-timesheets-datamodel.png "Groo Timesheets datamodel")

* The datamodel above depicts the information subjects within the solution. Not all of the information subjects have been incorporated at this stage and thus the current deployed solution has only implemented a subset of these.
* Users of the system are Employees. Following login a logout link is provided in the top right hand corner of the Navbar.
* Anywhere you navigate to within the site you'll have breadcrumb navigation available in the top right-hand side of the screen just below the Navbar.
* The site has the following Admin functionality:
  * Add / Edit / Delete an Employee - includes setting and resetting a password
  * Add / Edit / Delete a Client
  * Add / Edit / Delete a Project - note that a Project has to belong to a Client
  * Add / Edit / Delete an Activity - note that an Activity has to belong to a Project
* Capture hours spent on activities via a timesheet:

![alt text](https://github.com/Groo-The-Wanderer/project1/blob/master/public/groo-timesheets-time-entry-screenshot.png "Groo Timesheets Time Entry screenshot")

  * Each timesheet is for a specific employee and requires that the employee selects the Activity, whether the activity is Billable or not, and the number of hours.
  * To the right of each time entry line is a 'Trash Can' icon which will allow a row to be deleted.
  * To add a new row the 'Add Row' button is used.

## Feature Wishlist
The site was built in 5 days and is therefore the MVP (Minimum Viable Product) of what is possible. Features to add in future include:

* Incorporate a front-end framework and SPA (Single Page Application) concepts such that every user interaction does not require a page reload. This project was built following a period of learning comprising Ruby and Ruby on Rails - therefore front-end frameworks were not known at the time.
* Add 'Total hours' calculation to the timesheet entry page.
* Add the ability to allocate activities to employees - this is provided via the backend - but not yet enabled in the frontend.
* Add functionality to restrict activities to only those allocated. Currently the timesheet entry screen will allow all activities to be seleted and not just those assigned to an employee.
* Within the timesheet entry screen add subheadings in the Activities dropdown to group activities by project.\
* Add reporting features. For example:
  * Timesheets Not Yet Entered
  * Total Hours by Employee
  * Total Hours by Project and Activity
  * Total Hours by Week
* Add approvals functionality so that timesheets need to be approved by a project owner / manager.

## Built With the Following Frameworks, APIs and Libraries

* [Ruby on Rails](https://rubyonrails.org/) - Backend server side web application framework - all screens are Ruby on  Rails views and Ruby on Rails also handles interaction with the database and user authentication and authorisation
* [PostgreSQL](https://www.postgresql.org/) - Relational database for server-side data storage
* APIs and Packages
  * [Breadcrumbs on Rails](https://github.com/weppos/breadcrumbs_on_rails) - Used to provide breadcrumb navigation features
  * [Data Confirm Modal](https://github.com/ifad/data-confirm-modal) - Used to provide Bootstrap confirmation modals when any deletion is requested
  * [Bootstrap 4 Ruby Gem](https://github.com/twbs/bootstrap-rubygem) - Allow Bootstrap 4 CSS styling throughout the site
  * [Jquery-Rails](https://github.com/rails/jquery-rails) - Used to calculate total hours by activity in the timesheet details form and also to provide SPA-like features in the All Activities screen where Activities can be filtered by Project

## Authors

* **Brendan Leonard** - *Initial work*

## License

This project is licensed under the MIT License

## Acknowledgments

* Help / 2nd Pair of Eyes / Inspiration [ Text Chimp (Luke) and Grant ]
* Debugging help / Ideas / Sanity / Laughs [ Anna, Ana, Bhagi, Nathan, Scott & Linna - WDi27 Sydney ]
