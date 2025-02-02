# CHANGELOG

## 2.0.1

- chore: upgrade sghi_core package

## 2.0.0

- chore: upgrade to flutter 3.3.9

## 1.1.32-nullsafety

- chore: app name

## 1.1.31-nullsafety

- chore: slade advantage rebrand

## 1.1.30-nullsafety

- chore: app fixes

## 1.1.29-nullsafety

- fix: bottom nav icons

## 1.1.28-nullsafety

- chore: package upgrade

## 1.1.27-nullsafety

- Move CI workflow to github

## 1.1.25-nullsafety

- Capture exceptions thrown after user updates their first name and last name during onboarding

## 1.1.24-nullsafety

- chore: update packages

## 1.1.23-nullsafety

- fix: navigation drawer UI

## 1.1.22-nullsafety

- chore: package update to resolve feed errors

## 1.1.21-nullsafety

- fix: extra information

## 1.1.20-nullsafety

- fix: navigation drawer UI

## 1.1.19-nullsafety

- fix: change PIN

## 1.1.18-nullsafety

- fix: clinical logout

## 1.1.17-nullsafety

- fix: partner type page

## 1.1.16-nullsafety

- fix: navigation to terms page in user profile page

## 1.1.15-nullsafety

- fix: terms and conditions

## 1.1.14-nullsafety

- chore: user registration response

## 1.1.13-nullsafety

- feat: user registration

## 1.1.12-nullsafety

- feat: make app branding dynamic

## 1.1.11-nullsafety

- chore: add title to help center page

## 1.1.10-nullsafety

- chore: upgrade dart_fcm package

## 1.1.9-nullsafety

- chore: upgrade app wrapper package

## 1.1.8-nullsafety

- fix: bottom navigation bar currentIndex

## 1.1.7-nullsafety

- chore: package fixes and cleanup

## 1.1.6-nullsafety

- chore: remove unused icons

## 1.1.5-nullsafety

- fix: favorite action guide

## 1.1.4-nullsafety

- fix: logout issue

## 1.1.2-nullsafety

- fix: add variables to getFeed query for debugging purposes

## 1.1.1-nullsafety

- fix: package versioning

## 1.0.14-nullsafety

- chore: favorite action guide

## 1.0.13-nullsafety

- chore: retire unused and obsolete theming code

## 1.0.12-nullsafety

- fix: app wide search and navigation

## 1.0.11-nullsafety

- fix: logout helpers

## 1.0.10-nullsafety

- fix: end exam dialog send otp

## 1.0.9-nullsafety

- fix: add logout action to home page

## 1.0.8-nullsafety

- chore: migrated from the deprecated connectivity plugin to connectivity_plus.

## 1.0.7-nullsafety

- fix: name field issue within basic details page under patient registration
- fix: navigation to profile

## 1.0.6-nullsafety

- fix: home padding

## 1.0.5-nullsafety

- fix: navigation

## 1.0.4-nullsafety

- fix: modify home page to accept feed content callbacks

## 1.0.3-nullsafety

- chore: update dependencies

## 1.0.2

- refactor: change `CoreState`

## 1.0.1

- refactor: change `AppState` with `CoreState`

## 1.0.0

- feat: initial implementation of `bewell_pro_core`

## ^0.9.0

Features:

chore: app linting
chore: setup ios Continuous Deployment pipeline
refactor: add variables below all queries
refactor: move recording doctor into a shared and testable function
refactor: cleaned up the patient exam diagnosis file
refactor: place all app constants in one folder
feat: upgrade outdated flutter packages
refactor: Refactored the clinical forms files
feat: implement proper versioning
refactor: refactor all user feedback strings to use constants from shared utils
feat : merge google action with apple login action
feat : retire email/pwd login
chore:typos on database_mobile_documentation
chore: remove commented code from add_nhif.dart
chore: delete lifecycle_manager.dart
refactor: refactor add test modal
refactor: completely removed the patient exam styles file
feat: improve post visit survey
feat: prevent users from registering themselves as next of kin
refactor: Allow decimals while adding temperature

Bugfixes:

fix: increase CI test running time to 20 minutes
fix: fix getWidth function
fix: renaming of variable dummyPhotoData to defaultPhotoData
fix: made the diagnosis tab look expandable
fix: keyboard not popping up upon dismiss
fix: adding missing drug routes
fix : defensive programming
fix: place all theme data in one file
fix: Handled nulls and de-serialization errors
fix: adding of diagnosis via quick access
fix: zero state for tests
fix: fix retire problems and allergies in small screen
fix: start visit
fix: trim email input
fix: respiratory drawer handling double values
fix: update test environment endpoints

Features:

feat: update the post-survey page ui

Bugfixes:

fix: switch from sendOtpQuery to generateAndEmailOtpQuery api
fix: prevent keyboard from obstructing email textField
fix: update validation rules in patient history
fix: responsiveness of drawers in the event of problems, allergies and conditions with long names
fix: add a timer to control resending of emails when verifying
fix: fix patient registration
fix: fix null patient name when retiring tests
fix: add image source selector when taking photos
fix: fix email regexp in extra information
