This describes the current continuous integration setup of DiehardFund

# Continuous Integration

### Environments

##### DiehardFund Clone
[http://diehard_fundclone.org](http://diehard_fundclone.org)

DiehardFund clone is an environment designed to mirror the production environment as much as possible. It will have a snapshot of a recent production database, and will have the latest commit of master for which the tests have passed.

Emails on DiehardFund Clone will be intercepted and sent to `interceptor@diehard_fund-clone.org`, one per batch action. (This is to prevent real users receiving emails from a staging environment)

##### DiehardFund Test
[http://diehard_fundtest.org](http://diehard_fundtest.org)

DiehardFund test is an environment designed for private user testing, ie of a premium feature, a new release or workflow, etc.
It does not have a production-like database, and will all emails normally. (This is designed to allow testers to mimic going through particular workflows as seamlessly as possible.)
The data stored there should not be relied on to remain for longer than a few weeks. (We will likely clear it out periodically)

DiehardFund test is tied to the `user-testing` branch in github. Pushing to the `user-testing` branch will cause the CI to run tests, and deploy if they pass.

**It's okay to force push to this branch.** We're not looking to maintain a history, but rather to be able to swap out branches to test as seamlessly as possible.

### Testing

Travis will run several test suits in order. These include

- **RSpec**: Rails unit, mailer, and controller tests. Test files are located in `spec/`
- **Cucumber**: Rails integration tests. Test files are located in `features/`
- **Jasmine**: Angular directive and controller tests. Test files are located in `lineman/spec/`
- **Protractor**: Angular integration tests. Test files are located in `lineman/spec-e2e/`
