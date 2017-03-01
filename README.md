# Hotreads

### What is it?
See it in [production]( https://sheltered-springs-63378.herokuapp.com/)
<br><br>
Hotreads is a simple app that records reads of urls via POST to the endpoint `/api/v1/reads` The top ten reads from the past 24 hours are displayed on the main index view. Additionally Hotreads offers an API endpoint which renders those same top ten reads in json format via a GET request to `/api/v1/hotreads`.

### Install it

Please follow these steps to deploy the app locally:<br>

1. Clone the project<br>
`git clone git@github.com:lsaville/final_hot_reads.git`<br>

2. Install the dependencies<br>
`bundle install`<br>

3. Run the server<br>
`unicorn`

### It's relationship to URLockbox

Hotreads is tied integrally to the app URLockbox that can be found on [Github](https://github.com/lsaville/final_assessment_urlockbox) or seen in [production](https://calm-fjord-11043.herokuapp.com/links). URLockbox sends a record of a 'read' by a user to Hotreads where it is aggregated and potentially shown in the top links. If you wish to run the apps in conjunction locally, you'll have to change the urls in URLockbox so that it communicates with the local instance of the app.

This is additionally why it is suggested to run the app using `unicorn` as shown in the setup section because unicorn automatically runs on port 8080 rather than the rails default of 3000, avoiding the problem of trying to run both servers on the same port.

## Thanks!
