# Project- scalarHubEnggOnboarding App
To complete the project, please follow the steps below.

## Step 1:  Clone the Repo 
 
Clone this repository: 
https://github.com/scalarHubTech/scalarHubEnggOnboardingApp 
* Connect your GitHub account. 
* Reach out to the Repo Admin and add yourself to the scalarHubTech org. 
* Create your personal master branch based on your name, for example <yourName>scalarHubEnggOnboarding like manojscalarHubEnggOnboarding. 
* The above branch will work as your master Branch, and you must follow the atomic commit procedure mentioned in this document. 

## Step 2: Feature 1 

User's Need: I'd like to be able to save links to images. 

## Story Description: 
* Now that our user-friendly landing page is in place, it's time to roll out our first feature! We're keen on delivering value to our customers promptly. To achieve this, we aim to empower our users to save links to images and instantly confirm that the image URL has been successfully saved. 

* While saving and displaying the image might offer distinct advantages, we've bundled these two tasks together. Both are relatively small enhancements that complement each other effectively. However, we've decided to hold off on implementing the image index for now, as it introduces unnecessary complexity. We'll consider that for a future story. 

* In essence, when adding new features or stories, the goal is to break them down into the smallest value units for users. Occasionally, it makes sense to combine two or more closely related minor features into a single story. 

## What is the expectation? 

* The landing page has the links to the Image link submission form. 
* The Link is entered through the form. 
* After the form is saved, the link persists in the database. 
* After submitting the form, the user is redirected to a page displaying the image. 
* I cannot successfully save an image with an invalid URL. 
* The destination PR will be with your Custom Master Branch. 

 

## Step 3: Create Image Index 

User's Need: As a user, I expect the homepage to show a list of all the images that have been saved. 

## Story Description : 

* Now that we have implemented the feature to save images for our users, the next logical step is to allow them to access and view these images within the system easily. You might be pondering potential enhancements like allowing users to filter images by categories, such as 'cats,' or view only the images they've uploaded. These are excellent considerations, and we may explore them in future stories. However, for now, we focus on providing a straightforward way for users to access their saved images, enhancing their experience quickly. 

 

## What is expected? 

* The New images that are added show up on the homepage, and that too on the root page / 
* The images persist if the browser is closed or even if the server is restarted 
* Images are not displayed wider than 400 px. 
* A new image appears first. 


## Step 4: Image Tags 

As a user, I'd like to be able to attach tags to images. 

## Story Description: 

* The feature that allows users to upload images has been a hit. However, with a growing collection of images, it has become clear that we need a method for categorizing and filtering them. To achieve this, we must introduce a tagging system that empowers users to assign labels to images when they upload them. This will enable more organized and efficient image management. 

References: - 

GitHub - mbleigh/acts-as-taggable-on: A tagging plugin for Rails applications that allows for custom tagging along dynamic contexts. 

NOTE: 
acts-as-taggable-on currently has an issue with one of the migrations it generates. If you see Mysql2::Error: Cannot drop index 'index_taggings_on_tag_id': needed in a foreign key constraint: DROP INDEX index_taggings_on_tag_id ON taggings when running migrations, take a look at Mysql2::Error: Cannot drop index 'index_taggings_on_tag_id': needed in a foreign key constraint: DROP INDEX `index_taggings_on_tag_id` ON `taggings` · Issue #978 · mbleigh/acts-as-taggable-on for potential solutions. 
This solution is applicable for ActsAsTaggableOn v7 and does not seem to work for v9. 

## What is expected from you? 

* When I add a new image, there is a form field to add tags 
* After I've saved an image with tags, I see those tags displayed with the associated image. 
* The application uses the acts-as-taggable-on gem to provide the tagging functionality. 

 

## Step 5: Access Images by Tags 

As a user, I would like to access images linked to a specific tag. 

## Story Description: 

* With the new feature that allows images to be linked with tags, our next step is to allow users to sort and view images based on a choosen tag. For example, Nana, who is interested in fast planes, will greatly appreciate the ability to view images exclusively tagged as "SR-71." 

## Discussion Topics: 

* Implementation Location: Where should we integrate this feature into the code to make it user-friendly and efficient? 

* Handling Nonexistent Tags: How should the system respond if a user attempts to filter by a tag that doesn't exist or hasn't been assigned to any images?


## What is expected of you? 

* When I click on a tag, I see a filtered list of only the images that have the tag I clicked. 
* The Tag name, not its ID, is used to perform the filtering. 

## Step 6: Delete Image  

As a user, I'd like the option to remove an image. 

## Story Description: 

* Our users have been actively contributing by uploading multiple images to our web service, making it a vibrant platform. However, there are instances when users mistakenly upload the wrong image and wish to rectify this by deleting it. To enhance user control, we aim to provide the capability to delete images. We want to let you know that, at this stage, we have confidence in our users' responsible use of this feature and trust that they will only remove images as needed without misuse. 

 

## What is expected of you? 

* The user is prompted for confirmation before deletion. (Use Javascript confirm ()n dialog) 
* Deleted images are removed from the homepage.

## Step 7: Required Tag Association

As a user I want all the images to have atleast on tag:

## Story Description: 

* The tag feature has been a hit. Our users love being able to filter images by cats, SR-71s, and ScalarHub tax etc. We have discovered that images without any tags receive significantly less views than those with tags. As a result, we have decided to require all images to have atleast on tag.

## Discussion Topics:

* What do you do about the existing images that don't have any tags?
* Pretend this is a production system that has been running for years with thousands of uses and billions of images. You can't just drop your production db and 
  rebuild it. You solution should consider the following points.

* You can not delete the tagless images.

* You should not annoy users by presenting them with validation errors if they try to open or edit a tagless image.

* If your solution modifies your production db, then your solution should be able to un-modify your produciton db if you decide to run an older version of your 
 code on the production db. (Hint: what Rails mechanism performs versioned db changes?)

## What is expected of you? 

* I can not save an image without adding atleast one tag.
* An error message is associated with the appropriate input field when a tag is not provided.
* All images have atleast one tag.


## Step 8: Modify Tag List

As a user I want to edit the tag list for an image.

## Story Description: 

Image tags are awesome -- our users love them! Tags help us make sense of plethora of images added to our system. But how annoying is it when our users make spelling mistakes in their image tags? Very annoying! How awesome , and useful would it be to allow for tags to be edited after an image is added?

## Discussion Topics:

* Show an image's URL to be editable?
* How would you define a "valid" tag list?

## What is expected of you? 

* There is a link to edit an image.
* The image whose tags are to be modified is displayed on the edit page.
* After saving the edit page with valid tags, my changes are visible through our rest of the application.


## Step 9: React Setup

As a developer I want to be able to integrate React into my rails application.

## Story Description:

Your users are loving the image sharer application, and want to give their opinions on how certain features can be improved. Using Typescript, Reach and MobX, we will enable users to submit feedback for the application.

We will practice the act of "Slicing" stories into small, quick to test and deliver parts. For this issue, you will be asked to add footer text to the existing boilerplate code.

## Save these links

Details about the boilerplate code

In
  app/javascript/react_app

 you will find some boilerplate code for you to start with. Some common directories you may see in React apps are:

/components holds all React components, potentially namespaced by more directories
/stores holds MobX state stores and deals with api calls, asynchronous actions, etc (see references/documentation related to MobX)
/utils holds general purpose helper modules that can be shared across different parts of the client application
/test holds tests for all functional code in the application. It's directory structure usually mimics that of the source.

To integrate React with your Rails application, we have already included the necessary set up and dependencies for rails/webpacker. What you need to do is to decide which view template to include:

...other template code

<div id="feedback-root"></div>
<%= javascript_pack_tag 'application' %>


and you will on your way to developing a feedback form in React! Hint: App.tsx is the primary React component rendered.

A note about testing with enzyme and react-testing-library

For testing we will use react-testing-library. There are many reasons for moving to react-testing-library such as:

Easier to test React hooks and any type of DOM related code

Enzyme is somewhat abandonware. Last published was ~3 years ago

Enzyme encourages testing implementation details about React which does not help with UI testing

Enzyme makes it harder to test React hooks and related code

So, as part of the react code on the rockstar app, you will see one enzyme test for education, but you should avoid writing these types of tests if you can and prefer react-testing-library.

Debugging information

If you're having issues getting any React content to render, try:
in the terminal:

rm -rf tmp
rails assets:clobber
foreman start

in the browser (chrome):
right click the reload icon and select "Empty Cache and Hard Reload"

## References:
https://beta.reactjs.org/learn
https://mobx.js.org/getting-started.html
https://www.typescriptlang.org/docs/handbook/2/everyday-types.html
https://airbnb.io/enzyme/
https://mochajs.org/
https://nodejs.org/api/assert.html
https://www.chaijs.com/guide/

## What is expected of you? 
* There is a footer at the bottom of all the pages that reads a "Copyright: Foo Test Inc. New Hire Onboarding".
* There  is a unit test that checks that the footer text exists

## Step 10: Add Submit Feedback Button

As a developer I want to be able to get prompt feedback for the application I have developed.

## Story Description:

Now that we ahve some familiarity with the react setup, It's time to add a Submit Feedback button that opens a Model that says "Thank you for submitting your feedback."

## User Story

As a User I want to see have Submit feedback Button option on application  Main page so that I can submit feedback that prompt "Thank you for submitting your feedback."As a User I want to see have Submit feedback Button option on application  Main page so that I can submit feedback that prompt "Thank you for submitting your feedback."

## Note:

if you see:
  TypeError: __webpack_require__.r is not a function.

try clearing the browser caches and reloading the page. Also look for a rogue bin/webpacker process running in the background. This has also simply fixed itself for some people with time.

## References:
https://react.dev/learn/tutorial-tic-tac-toe
https://testing-library.com/docs/react-testing-library/intro/

## What is expected of you? 
* There is a "Submit Feedback" react-gears button in the footer.
* Clicking the "Submit Feedback" opens up a react-gears modal with text saying "Thank you for submitting"
* User should be able to close the modal with an x icon.

## Step 11: Adding Feedback Form

React-hook-form Updates
As a developer I want to be able to get detailed feedback.

## Story Description:

The Feedback Modal has been a huge success! Although User’s have now been wanting to actually type some feedback. Let’s add a form to the Modal to fulfill their request.

## Discussion Topics:

What is a react-hook-form?

How does react-hook-form state differes from using React useState or MobX?

## References:
https://react-hook-form.com/
