## Task 0: Simple web stack

Description:
A simple web stack refers to a basic web infrastructure that hosts a website accessible via the domain www.foobar.com. This infrastructure lacks firewalls and SSL certificates for network protection. The server's resources, including CPU, RAM, and SSD, are shared among the components, such as the database and application server.

## Specifics About This Infrastructure:

Server: A computer hardware or software that provides services to clients, which are other computers.
Domain Name: A human-friendly alias for an IP address, making it easier to recognize and remember websites. The mapping of domain names to IP addresses is handled by the Domain Name System (DNS).
DNS Record: The www subdomain of foobar.com uses an A record, which stores the hostname and its corresponding IPv4 address.
Web Server: The software or hardware that accepts HTTP or HTTPS requests and returns the requested content or error messages.
Application Server: Responsible for installing, operating, and hosting applications and related services for end users, IT services, and organizations. It enables the hosting and delivery of high-end consumer or business applications.
Database: Stores organized information that can be easily accessed, managed, and updated.
Server-Client Communication: Communication between the server and the client (user's computer) takes place over the internet network using the TCP/IP protocol suite.

## Issues With This Infrastructure: {"style = "font-size : larger;"}


Single Point of Failure (SPOF): This infrastructure has multiple SPOFs, meaning that if any critical component fails, such as the MySQL database server, the entire website becomes inaccessible.
Downtime During Maintenance: Performing maintenance checks requires temporarily taking down components or the entire server. Since there is only one server, this results in downtime for the website.
Limited Scalability: Scaling this infrastructure is challenging due to the concentration of all components on a single server. When the server experiences a high influx of incoming traffic, it can quickly exhaust resources or become sluggish, impacting the website's performance.




