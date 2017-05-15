
![Alt Text](/docs/stash-your-cash.png 'stash your cash logo')
![Alt Text](https://travis-ci.org/whatsrupp/stash-your-cash.svg?branch=master 'Travis Build Logo')

This is a basic banking app which works as a practice tech test for interview preparation. The acceptance criteria outline is shown below:


## Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


## User Stories

Decided to go down the user stories route to start the project off on the right track, they are listed below:

```
As a user
So that I can cache my cash
I want to be able to deposit into my account
```

```
As a user
so that I can flash my cash
I want to be able to withdraw from my account
```

```
As a user
so that I can be brash about my cash
I want to know how much is in my account
```

```
As a user
so that my cash isn't in a mishmash
I want to be able to print a full statement of my account
```

```
As a user
so that my cash statements aren't slapdash
I want to see my statement in reverse chronological
```
