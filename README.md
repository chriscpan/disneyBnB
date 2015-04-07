# disneyBnB

[Heroku link][heroku]

[heroku]: http://flux-capacitr.herokuapp.com

## Minimum Viable Product
disneyBnB is a clone of airBnB built on Rails and Backbone. Users can:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [ ] Create accounts
- [ ] Create sessions (log in)
- [ ] Search through locations
- [ ] Book locations
- [ ] Create comments for locations
- [ ] Rate locations
- [ ] View details for a location
- [ ] View and edit your profile
- [ ] See other's profile

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication and Heroku (~1 day)
I will implement user authentication in Rails based on the practices learned at
App Academy. By the end of this phase, users will be able to log in, log out,
and sign up. The application will be pushed to Heroku. The session urls pages
will have the majority of the CSS finished.

[Details][phase-one]

### Phase 2: Viewing listings and their description (~2 days)
I will add API routes to listings. Each location will also have a description of the location. This is done by creating Backbone collections and models that fetch data from these routes.

At the end of this phase, users will be able to go to specific listings to view
that location's description. The majority of CSS for these location should be
finished.

[Details][phase-two]

### Phase 3: Viewing Profiles(~1 days)
I will add API routes to user profiles. Comments for profiles and listings will
be added. Seed data for user profiles will also be created.

A search bar will be added that updates in real time.

[Details][phase-three]

### Phase 4: Own Listing and Profile (~1 days)
A form to list your space will be added. Profiles now include views to see and make
requests, reservations, and your own listings.

Guest Login will be available now.

[Details][phase-four]

### Phase 5: Implement a Map Feature (~ 1.5 days)
A third party API, which can display Google Maps is used. Users can see where
the locations will be located exactly in regards to a map.

A split screen subview will be implemented to have the maps display and the
location listing simultaneously.

I'll need to add `search` routes to both the Blogs and Posts controllers. On the
Backbone side, there will be a `SearchResults` composite view has `BlogsIndex`
and `PostsIndex` subviews. These views will use plain old `blogs` and `posts`
collections, but they will fetch from the new `search` routes.

[Details][phase-five]

### Phase 6: Touch Up (~ 2 days)
Finish the CSS and find out if there are any glitches in the application.
Refactor the code.

[Details][phase-six]

### Bonus Features (TBD)
- [ ] Allow searches that filter by time  
- [ ] Make a 'most popular' location in the root url
- [ ] Transition main root url picture to other pictures
- [ ] Create a 5-star ranking system in listing description
- [ ] Search filter with price list
- [ ] Search filter with a room type
- [ ] Create 'groups' feature

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase6.md
