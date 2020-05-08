# README

This app is a sample app to reproduce Rails issue.

## Steps to reproduce

Clone this repo and execute `bin/setup`.

```console
$ git clone https://github.com/sinsoku/rails_issue_readonly_error.git
$ cd rails_issue_readonly_error
$ bin/setup
```

Run a test to reproduce the issue.

```console
$ bin/rails test
Running via Spring preloader in process 35224
Run options: --seed 9169

# Running:

E

Error:
UserTest#test_should_not_raise_ActiveRecord::ReadOnlyError:
ActiveRecord::ReadOnlyError: Write query attempted while in readonly mode: INSERT INTO "users" ("created_at", "updated_at") VALUES (?, ?)
    test/models/user_test.rb:9:in `block (4 levels) in <class:UserTest>'
    test/models/user_test.rb:9:in `block (3 levels) in <class:UserTest>'
    test/models/user_test.rb:8:in `block (2 levels) in <class:UserTest>'
    test/models/user_test.rb:5:in `block in <class:UserTest>'


rails test test/models/user_test.rb:4



Finished in 0.168230s, 5.9442 runs/s, 0.0000 assertions/s.
1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```
