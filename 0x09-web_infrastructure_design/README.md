# 0x09. Web infrastructure design
## Concepts
DNS

Monitoring

Web Server

Network basics

Load balancer

Server

What is a database

What’s the difference between a web server and an app server?

DNS record types

Single point of failure

How to avoid downtime when deploying new code

High availability cluster (active-active/active-passive)

What is HTTPS

What is a firewall

Application server vs web server

## TASK

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

## Issues With This Infrastructure: 

Single Point of Failure (SPOF): This infrastructure has multiple SPOFs, meaning that if any critical component fails, such as the MySQL database server, the entire website becomes inaccessible.
Downtime During Maintenance: Performing maintenance checks requires temporarily taking down components or the entire server. Since there is only one server, this results in downtime for the website.
Limited Scalability: Scaling this infrastructure is challenging due to the concentration of all components on a single server. When the server experiences a high influx of incoming traffic, it can quickly exhaust resources or become sluggish, impacting the website's performance.

# 1: Distributed Web Infrastructure

## Description:
This is a distributed web infrastructure that reduces traffic to the primary server by distributing load to a replica server using a load balancer.

## Specifics:
Load balancer: HAProxy with Round Robin algorithm for fair distribution based on server weights.

## Setup: Active-Passive configuration enabled by the HAProxy load balancer, where one node is active and the other is on standby.

## Primary-Replica cluster: One server acts as the Primary server for read/write requests, while the other server acts as a Replica for read requests. Data synchronization occurs when the Primary server performs write operations.

## Difference between Primary and Replica nodes: Primary node manages the write operations, and the Replica node minimize read traffic to the Primary node.

## Issues:
Multiple Single Points Of Failure (SPOFs), are found in MySQL database server, load balancer server, and application server.

## Security concerns: The system is very vulnerable to hackers because it Lack of SSL encryption for network transmission. Also no firewall were installed to stop access that are unauthorized IPs.

# 2: Secured and Monitored Web Infrastructure

## Description
## Specifics About This Infrastructure
## Firewalls: Firewalls protect networks by acting as intermediaries between internal and external networks, blocking unwanted and unauthorized users.

## SSL Certificates: SSL certificates encrypt traffic between web servers and the external network, ensuring privacy, integrity, and identification while preventing attacks.

## Monitoring Clients: Monitoring clients analyze and monitor servers and the external network, providing metrics and alerts on server performance, health, and operations to administrators.

## Issues:
1. SSL Termination: Terminating SSL at the load balancer level leaves traffic between the load balancer and web servers unencrypted.
2. Single MySQL Server: Having only one MySQL server is not scalable and creates a single point of failure.
3. Identical Server Components: Servers with the same components contend for resources, leading to poor performance and troubleshooting difficulties. This setup lacks scalability.

# 3: Scaled Up Web Infrastructure

## Description
In this scaled-up version of the Secured and Monitored Web Infrastructure, all single points of failure (SPOFs) have been eliminated. Major components, such as web servers, application servers, and database servers, have been relocated to separate GNU/Linux servers. Each server is protected by a firewall and is individually monitored. 

## Specifics About This Infrastructure:
- Each server is safeguarded by a dedicated firewall, providing protection against unwanted access.
  
## Issues:
- High maintenance costs: The infrastructure expansion requires additional server purchases and increased electricity consumption, resulting in increased operational expenses. Allocation of company funds is necessary for server acquisition and ongoing electricity costs for both new and existing servers.

## Author
CLEMENT IGBINOBA
