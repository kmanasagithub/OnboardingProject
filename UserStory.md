## Project- scalarHubEnggOnboarding App
To complete the project, please follow the steps below.

# Step 1:  Clone the Repo 
 
Clone this repository: 
https://github.com/scalarHubTech/scalarHubEnggOnboardingApp 
* Connect your GitHub account. 
* Reach out to the Repo Admin and add yourself to the scalarHubTech org. 
* Create your personal master branch based on your name, for example <yourName>scalarHubEnggOnboarding like manojscalarHubEnggOnboarding. 
* The above branch will work as your master Branch, and you must follow the atomic commit procedure mentioned in this document. 

# Step 2: Feature 1 

User's Need: I'd like to be able to save links to images. 

# Story Description: 
* Now that our user-friendly landing page is in place, it's time to roll out our first feature! We're keen on delivering value to our customers promptly. To achieve this, we aim to empower our users to save links to images and instantly confirm that the image URL has been successfully saved. 

* While saving and displaying the image might offer distinct advantages, we've bundled these two tasks together. Both are relatively small enhancements that complement each other effectively. However, we've decided to hold off on implementing the image index for now, as it introduces unnecessary complexity. We'll consider that for a future story. 

* In essence, when adding new features or stories, the goal is to break them down into the smallest value units for users. Occasionally, it makes sense to combine two or more closely related minor features into a single story. 

# What is the expectation? 

* The landing page has the links to the Image link submission form. 
* The Link is entered through the form. 
* After the form is saved, the link persists in the database. 
* After submitting the form, the user is redirected to a page displaying the image. 
* I cannot successfully save an image with an invalid URL. 
* The destination PR will be with your Custom Master Branch. 

 

# Step 3: Create Image Index 

User's Need: As a user, I expect the homepage to show a list of all the images that have been saved. 

# Story Description : 

* Now that we have implemented the feature to save images for our users, the next logical step is to allow them to access and view these images within the system easily. You might be pondering potential enhancements like allowing users to filter images by categories, such as 'cats,' or view only the images they've uploaded. These are excellent considerations, and we may explore them in future stories. However, for now, we focus on providing a straightforward way for users to access their saved images, enhancing their experience quickly. 

 

# What is expected? 

* The New images that are added show up on the homepage, and that too on the root page / 
* The images persist if the browser is closed or even if the server is restarted 
* Images are not displayed wider than 400 px. 
* A new image appears first. 


# Step 4: Image Tags 

As a user, I'd like to be able to attach tags to images. 

# Story Description: 

* The feature that allows users to upload images has been a hit. However, with a growing collection of images, it has become clear that we need a method for categorizing and filtering them. To achieve this, we must introduce a tagging system that empowers users to assign labels to images when they upload them. This will enable more organized and efficient image management. 

References: - 

GitHub - mbleigh/acts-as-taggable-on: A tagging plugin for Rails applications that allows for custom tagging along dynamic contexts. 

NOTE: 
acts-as-taggable-on currently has an issue with one of the migrations it generates. If you see Mysql2::Error: Cannot drop index 'index_taggings_on_tag_id': needed in a foreign key constraint: DROP INDEX index_taggings_on_tag_id ON taggings when running migrations, take a look at Mysql2::Error: Cannot drop index 'index_taggings_on_tag_id': needed in a foreign key constraint: DROP INDEX `index_taggings_on_tag_id` ON `taggings` · Issue #978 · mbleigh/acts-as-taggable-on for potential solutions. 
This solution is applicable for ActsAsTaggableOn v7 and does not seem to work for v9. 

# What is expected from you? 

* When I add a new image, there is a form field to add tags 
* After I've saved an image with tags, I see those tags displayed with the associated image. 
* The application uses the acts-as-taggable-on gem to provide the tagging functionality. 

 

# Step 5: Access Images by Tags 

As a user, I would like to access images linked to a specific tag. 

# Story Description: 

* With the new feature that allows images to be linked with tags, our next step is to allow users to sort and view images based on a choosen tag. For example, Nana, who is interested in fast planes, will greatly appreciate the ability to view images exclusively tagged as "SR-71." 

# Discussion Topics: 

* Implementation Location: Where should we integrate this feature into the code to make it user-friendly and efficient? 

* Handling Nonexistent Tags: How should the system respond if a user attempts to filter by a tag that doesn't exist or hasn't been assigned to any images?


# What is expected of you? 

* When I click on a tag, I see a filtered list of only the images that have the tag I clicked. 
* The Tag name, not its ID, is used to perform the filtering. 

# Step 6: Delete Image  

As a user, I'd like the option to remove an image. 

# Story Description: 

* Our users have been actively contributing by uploading multiple images to our web service, making it a vibrant platform. However, there are instances when users mistakenly upload the wrong image and wish to rectify this by deleting it. To enhance user control, we aim to provide the capability to delete images. We want to let you know that, at this stage, we have confidence in our users' responsible use of this feature and trust that they will only remove images as needed without misuse. 

 

# What is expected of you? 

* The user is prompted for confirmation before deletion. (Use Javascript confirm ()n dialog) 
* Deleted images are removed from the homepage.
