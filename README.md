# robot-registerlogin
Register and login automation test script using Robot Framework

## 1. Registration 
For test script registration, I use generate random string combined with timestamp to ensure uniqueness of email. If I only use timestamp then it can have same email when test script executed at same time (for multi browser testing). If using only random string there's still slightly chance it will have same email.

## 2. Login
### Testcases :
#### I. Successfully login with valid data
Step : 
1. Open browser 
2. Go to automationpractice.com
3. Click Sign in
4. Insert valid email under "ALREADY REGISTERED?"
5. Insert valid password 
6. Click Sign in below Forgot your password?

Result : Successfully login and go to Home. There's Sign out button.
#### II. Login using Invalid Email should Fail
Step :
1. Open browser 
2. Go to automationpractice.com
3. Click Sign in
4. Insert invalid email under "ALREADY REGISTERED?"
5. Insert valid password 
6. Click Sign in below Forgot your password?

Result : Fail to login and still in Home. There's no Sign out button.
#### III. Login using Invalid Password should Fail
Step :
1. Open browser 
2. Go to automationpractice.com
3. Click Sign in
4. Insert valid email under "ALREADY REGISTERED?"
5. Insert invalid password 
6. Click Sign in below Forgot your password?

Result : Fail to login and still in Home. There's no Sign out button.
#### IV. Login using Invalid Email and Password should Fail
Step :
1. Open browser 
2. Go to automationpractice.com
3. Click Sign in
4. Insert invalid email under "ALREADY REGISTERED?"
5. Insert invalid password 
6. Click Sign in below Forgot your password?

Result : Fail to login and still in Home. There's no Sign out button.
#### V. Login using Empty Email should Fail
Step :
1. Open browser 
2. Go to automationpractice.com
3. Click Sign in
4. Don't insert anything under "ALREADY REGISTERED?"
5. Insert valid password 
6. Click Sign in below Forgot your password?

Result : Fail to login and still in Home. There's no Sign out button.
#### VI. Login using Empty Password should Fail
Step :
1. Open browser 
2. Go to automationpractice.com
3. Click Sign in
4. Insert valid email under "ALREADY REGISTERED?"
5. Don't insert anything in password 
6. Click Sign in below Forgot your password?

Result : Fail to login and still in Home. There's no Sign out button.
#### VII. Login using Empty Email and Password should Fail
Step :
1. Open browser 
2. Go to automationpractice.com
3. Click Sign in
4. Don't insert anything in email under "ALREADY REGISTERED?"
5. Don't insert anything in password 
6. Click Sign in below Forgot your password?

Result : Fail to login and still in Home. There's no Sign out button.

### Testplan
| Test No. | Title | Author | Severity | Reviewer | Status (Pass/Fail) |
| ------ | ------ | ------ | ------ | ------ | ------ |
| I | Successfully login with valid data | Eko | Critical | Yordan | ------ |
| II | Login using Invalid Email should Fail | Eko | Major | Yordan | ------ |
| III | Login using Invalid Password should Fail | Eko | Major | Yordan | ------ |
| IV | Login using Invalid Email and Password should Fail | Eko | Major | Yordan | ------ |
| V | Login using Empty Email should Fail | Eko | Major | Yordan | ------ |
| VI | Login using Empty Password should Fail | Eko | Major | Yordan | ------ |
| VII | Login using Empty Email and Password should Fail | Eko | Major | Yordan | ------ |
