# README

## Related information

It may need a bit more information, here it is :)

### Question 1

* To be sure that surbooking is impossible, I have created a custom validation under `app/validators/booking_validator.rb`.
* Tests with RSpec

### Question 2

*  `http://localhost:3000/`shows an index of all stay then `See more` goes to a stay's payments details.
* On this page, the button `To be paid` is only available while the monthly rate is still unpaid to avoid issues. 

### Question 3

Gem used : <a href="https://github.com/rest-client/rest-client">Rest_client</a>

<b>Choice explanation : </b>
* For each new stay booked, a monthly prorated payment rate is created and stored in the table `payments`.
* Once the tenant pays the rate related to a month (on the payment lists page available for each stay), the guid generated is stored to allow payment checking status.


## Question 4

Chosen tool : draw.io

* The design of the domain model is available <a href="https://drive.google.com/file/d/1tENfrdi2wbXucy2-9uau_ZhykGPnIMg9/view?usp=sharing">here</a>
* I chose to work based on an e-commerce model where tenants can add services to their carts and pay for them.

