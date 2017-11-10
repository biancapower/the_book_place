# The Book Place

**Table of Contents**
  * [Problem Definition and Solution](#problem-definition-and-solution)
    + [Problem](#problem)
      - [Why is there a need for selling and buying preloved books?](#why-is-there-a-need-for-selling-and-buying-preloved-books-)
      - [Why online?](#why-online-)
      - [Why within Australia?](#why-within-australia-)
      - [What's wrong with the sites that already exist?](#what-s-wrong-with-the-sites-that-already-exist-)
    + [Solution](#solution)
  * [User Stories](#user-stories)
    + [Preliminary User Stories](#preliminary-user-stories)
    + [Detailed User Stories](#detailed-user-stories)
  * [Workflow](#workflow)
  * [Style Guide](#style-guide)
  * [Wireframes](#wireframes)
  * [ERD](#erd)
  * [Trello](#trello)

## Problem Definition and Solution

### Problem

There is a need for a better online store dedicated to the buying and selling of preloved books within Australia.

This statement is justified by answering the following questions:

- Why is there a need for selling and buying preloved books?
- Why online?
- Why within Australia
- What's wrong with the sites that already exist?

#### Why is there a need for selling and buying preloved books?

As outlined below, the buying and selling of preloved books meet needs categorised within Maslow's Hierarchy as **safety**, **esteem**, and **self-actualisation**

![Maslow's Hierarchy of Needs](/readme_resources/maslow.png)


Fact 1: Many people have books lying around at home that they want to get rid of.

Fact 2: Many people want a cheap way to get books to read.

The buying and selling of preloved books allows owners of books to declutter their home of books while getting some amount of money from these books, while simultaneously offering a way for people who want to acquire books to do so at a lower cost than buying them new.

Saving money on books and/or receiving money for selling preloved books results in:

- more money is available for meeting basic needs (**safety**);
- greater access to books, as more can be acquired for less money.

Additionally, the reading of books (which as stated above is made more possible through the buying and selling of preloved books) can be a means for meeting needs in the categories of **esteem** and **self-actualisation**.

#### Why online?

Shopping online provides convenience, meaning that access to preloved books is not restricted by location (a particular advantage for those living in rural areas), time (e.g. can shop outside business hours), or ability to physically access a store.

It further allows for a reduction in the cost associated with running a store as no physical storefront is needed, allowing greater profits for sellers and less expenses for buyers.

#### Why within Australia?

Many Australians prefer to buy from within Australia for a number of reasons, not least of which is the speed of delivery within Australia compared to from overseas.

#### What's wrong with the sites that already exist?

Having already justified a need for an Australian-based two-sided marketplace for preloved books, below is a detailed overview of existing sites selling preloved books within Australia, and why a better solution is needed.

While there are a number of preloved bookshops in existance within Australia,

- they have a physical presence (not online-only)
- they're not a two-sided marketplace, they are one store selling the books

Places do exist for selling preloved books person-to-person online (e.g. Ebay, Gumtree, Fishpond, Amazon), but they're not made specifically for books. The exception to this is several sites made specifically for the buying and selling of textbooks ([Student VIP](https://studentvip.com.au/textbooks); [Dusa Bookshop](http://www.dusabookshop.com.au/2nd-hand-books); [MQ Bookshop](http://www.mqbooks.org/cgi-bin/bookex/bookex.cgi); [Zookal](https://www.zookal.com/)).

One website can be found that has the same premise as this one - an Australian two-sided marketplace for preloved books ([BookEMart](https://books.thebookemart.com/)), however it could be improved in a number of areas:

- Improve overall look of site to be more modern and aesthetically pleasing by following modern design principles
- Improve ease of navigation
- Reduce barrier to entry (enable viewing of books prior to signing up)
- Reduce or eliminate ads, or make them less obtrusive
- Make it exclusively Australian, so that users do not need to worry about whether the books they are looking at are coming from overseas
- Use a database for adding books to increase accuracy of book listing as well as increase ease of use for sellers

### Solution

Create a better online store dedicated to the buying and selling of preloved books within Australia.


## User Stories

Preliminary user stories were collected in Trello, with more detailed user stories subsequently created.

### Preliminary User Stories

![trello](/readme_resources/trello/trello_1.png)
![trello](/readme_resources/trello/trello_2.png)
![trello](/readme_resources/trello/trello_3.png)
![trello](/readme_resources/trello/trello_4.png)

### Detailed User Stories


***User should be able to edit their own profile***

**Feature:** Edit Profile

- As a User
- I want to edit my profile
- Because I want to keep my details up to date

**Scenario:** User edits profile

- Given I'm a logged in User
- When I go to the edit profile page for my profile
- And I change the text in the text fields and/or upload a new profile photo
- And I click "Update profile"
- Then I should see my profile page
- And the details should be updated

---

***User should not be able to edit a profile that is not theirs***

**Feature:** Unable to edit other user's profile
- As a User
- I want nobody other than me to be able to edit my profile
- Because I want to have control over my profile details

**Scenario:** User attempts to edit another user's profile
- Given I'm a logged in User
- When I go to the edit profile page for another user's profile
- Then I am redirected back to the user's profile view page

---

***User should be able to edit a book listing that is theirs***

**Feature:** Edit Book Listing
- As a User
- I want to edit one of my book listings
- Because I want to improve the accuracy of my book listing

**Scenario:** User edits book listing
- Given I'm a logged in User
- When I go to the edit page for a book listing that is mine
- And I change the text in the text fields and/or upload a new book image
- And I click "Update book"
- Then I should see the detailed view page for that book
- And the details should be updated

---

***User should not be able to edit a book listing that is not theirs***

**Feature:** Unable to edit other user's book listing
- As a User
- I want nobody other than me to be able to edit my book listings
- Because I want to have control over my book listings

**Scenario:** User attempts to edit another user's book listing
- Given I'm a logged in User
- When I go to the edit book page for another user's book listing
- Then I am redirected back to the detailed view page for that book listing

---

***User should be able to delete a book listing that is theirs***

**Feature:** Delete Book Listing
- As a User
- I want to delete one of my book listings
- Because I have decided not to sell it

**Scenario:** User deletes book listing
- Given I'm a logged in User
- When I go to the edit page for a book listing that is mine
- And I click 'delete book'
- Then the book listing should be deleted from the database

---


***User should not be able to open a message conversation with themselves***

**Feature:** Unable to message self
- As a User
- I do not want to see an option to message myself
- Because this would be pointless functionality

**Scenario:** User visits messages page
- Given I'm a logged in User
- When I go to the messages page
- Then my username is not listed as an option to message

---

***User should not see a 'message reader' button on their own profile***

**Feature:** No 'message reader' button on own profile
- As a User
- I do not want to see an option to message myself
- Because this would be pointless functionality

**Scenario:** User visits their profile page
- Given I'm a logged in User
- When I go to my profile page
- Then I do not see a 'message reader' button

---

***User should be able to view book listings on homepage without logging in***

**Feature:** Homepage viewable without login
- As a User
- I want to view book listings without signing in
- Because I want to know it's worth signing up before I do so

**Scenario:** User visits homepage
- Given I'm a logged out user
- When I go to the homepage
- Then I can view the book listings

---

***User should be able to view detailed book listing without logging in***

**Feature:** Detailed book view viewable without login
- As a User
- I want to view book listings without signing in
- Because I want to know it's worth signing up before I do so

**Scenario:** User visits detailed book view page
- Given I'm a logged out user
- When I go to the detailed book view page
- Then I can view the detailed book view page

---

***User should not be able to view Messages page without logging in***

**Feature:** User must be logged in to view messages page
- As a User
- I want to know that only users who are logged in can message me
- Because I don't want to get spammed

**Scenario:** User visits messages page
- Given I'm a logged out user
- When I go to the messages page
- Then I am redirected to the login page

---

***User should not be able to view New Book form page without logging in***

**Feature:** User must be logged in to see the add new book form
- As site Admin
- I want users to be required to log in in order to add a book listing
- Because I want to encourage users to create an account on the site

**Scenario:** User visits add new book page
- Given I'm a logged out user
- When I go to the add new book page
- Then I am redirected to the login page

---

***When logged in, user should not be able to view any page other than 'create profile' until they have created a profile***

**Feature:** User must create a profile upon signup in order to interact on the site
- As site Admin
- I want all users to be required to have a profile
- Because it builds a sense of community

**Scenario:** User without a profile attempts to visit any page
- Given I'm a logged in user
- And I don't have a profile
- When I go to any page other than the create profile page
- Then I am redirected to the create profile page


## Workflow

The original workflow was conceptualised in the diagram below. Some minor alterations were made during development as needed. These will be reflected in a future version of this diagram.


![workflow](/readme_resources/workflow_diagram.png)

## Style Guide

Colours and fonts were chosen as below.

![colours](/readme_resources/color_scheme.png)

![fonts](/readme_resources/Fonts.png)

Gentium Book Basic is set at a slightly heavier weight than Gentium basic, and is used for publishing books at small point sizes.

Open Sans was designed with an upright stress, open forms and a neutral, yet friendly appearance. It was optimised for print, web, and mobile interfaces, and has excellent legibility characteristics in its letterforms.

## Wireframes

Content-first mockups were created using Figma and can be viewed [here](https://www.figma.com/file/cHJ5winPhgKShwLn5E3RRi4l/Preloved-Books-Two-Sided-Marketplace).

![mockup](/readme_resources/mockups/1.png)
![mockup](/readme_resources/mockups/2.png)
![mockup](/readme_resources/mockups/3.png)
![mockup](/readme_resources/mockups/4.png)
![mockup](/readme_resources/mockups/5.png)
![mockup](/readme_resources/mockups/6.png)
![mockup](/readme_resources/mockups/7.png)
![mockup](/readme_resources/mockups/8.png)
![mockup](/readme_resources/mockups/9.png)
![mockup](/readme_resources/mockups/10.png)
![mockup](/readme_resources/mockups/11.png)
![mockup](/readme_resources/mockups/12.png)
![mockup](/readme_resources/mockups/13.png)
![mockup](/readme_resources/mockups/14.png)



## ERD

The original conception was as follows:

![erd](/readme_resources/erd_original.png)

After revisions necessary for creation of a MVP, the current ERD is as below.

![erd](/readme_resources/erd_current.png)

## Trello

Trello was used from the beginning of this project to track ideas and tasks, as well as completion dates.

See this project's [Trello board](https://trello.com/b/UHhZI3Xi/online-book-store) for details.

A snapshot at one moment in time is provided below.

![trello](/readme_resources/trello_snapshot_1.png)
![trello](/readme_resources/trello_snapshot_2.png)
