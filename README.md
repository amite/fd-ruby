#### What problems do we have?


- we don’t know how much interest we are earning each month - IMP
- don’t know the total value of our current portfolio - IMP
- unable to keep a track of latest investments (optional)
- don’t know current from archived - (IMP)
- we don’t know important large investments - (optional)
- we don’t know who to contact when we run into trouble - IMP
- we can’t see a history of investment over the last years (optional)
- can’t see the payments that are due shortly - IMP
- don’t know when we should renew - IMP
- can’t filter by instrument type - (optional)
- can’t enter new investments easily - (IMP)
- we don’t have reminders on when our investments are maturing - (IMP)
- We don’t have a record of cheques deposited against each investment - (IMP)
- We don’t know where those cheques are going
- We can’t track issues associated with each investment (15 H/ Notices/Profile submission)
- We don’t have a list of cancelled deposits(optional)
- We don’t know the total no of investments that are current - (IMP)
- We don’t know company contact numbers - (IMP)
- Company profile and current status
- Latest password reminders
- Current account balance - online notebook

## Entities
- User
- Investment
- Payouts/Payments


## Attributes
- interest (virtual attribute - possible value object)

## API I want
- show interest earned this month
- show all investments - Investment.all
- show investment name (investment.name)
- show next payment due (Investment.next_payout)
- show investment amount (investment.initial_deposit)
- show investment deposit rate (investment.deposit_rate)
- show interest earned (investment.interest_earned)
- show cancelled investments (Investment.cancelled)
- show term for investment (investment.term)
- show maturity date for investment (investment.due_on)
- show current status of investment
- show notifications for upcoming interest payments
- show investment maturity amount (investment.maturity_amount)
- show total earnable interest (investment.interest_earnable)
- show interest due on investment (investment.interest_due)
- show upcoming interest payments (investment.due_payments)
- show interest deposited (investment.deposited_payments)
- show all interest payments paid and due (Investment.payouts)
- split initial deposit into quarterly payouts (investment.split_for_quarterly)
- split initial deposit into biannual payouts (investment.split_for_biannual)
- show quarterly income earned (User.quaterly_income)
- show annual income earned (User.annual income)
- show expired investments - Investment.expired
- show investments about to expire - Investment.expiring
- show investment source - investment.source
- show contact for investment - investment.source.name
- mark investment as cancelled
- mark investment as under_investigation
- sort investments by term
- mark payment as received
- mark payment as deposited
- log entry for cheque
- show status for payment



## Worker Objects
- PaymentTracker
- PaymentNotifier



### How to calculate interest

#### For Quarterly interest [ref](http://blog.kbsbng.com/2011/01/maturity-amount-calculation-for-fixed.html)
```
Maturity amount = Principal * ( 1 + (Rate of interest)/4 ) ^ (Period * 4)
```


