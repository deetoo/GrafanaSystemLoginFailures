# Grafana System Login Failures

This is how I graph, and monitor the number of login failures on a Linux server using Grafana with a MySQL data source.

## Getting Started

You'll need to have a basic understanding of Linux System Administration, a MySQL Database, and Grafana to make any sense of what I'm doing here.


### Installing

There are just a few steps needed to make this all work.
1. Creating the MySQL database, and creating a user tha has read and write privileges to tha database.
2. Importing the table schema for the database, which will contain all of our recorded failed logins.
3. Setting up a cronjob to regularly update that DB (I run my cronjob hourly.)
4. Defining a datasource in Grafana that uses this MySQL DB
5. Creatng a new Graph in Grafana, which will display the number of failed login attempts.

Ultimately, that graph will look something like this.

## Built With

* [Grafana](http://www.grafana.com) - The open source time series framework used.
* [MySQL](https://dev.mysql.com) - The open source database used.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/deetoo/GrafanaSystemLoginFailures/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/deetoo/GrafanaSystemLoginFailures/tags). 

## Authors

* **Doug Dobies** - *Initial work* - [deetoo](https://github.com/deetoo)

See also the list of [contributors](https://github.com/deetoo/GrafanaSystemLoginFailures/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [PurpleBooth](https://github.com/PurpleBooth) for the excellent README template!

