We provide a ready to go docker container for this service. If you're interested, it's made of two main pieces of software:

- [Mailin](http://mailin.io) - a nodejs based Email to HTTP daemon.
- [Diehard_FundEmailGateway](http://github.com/diehard_fund/diehard_fund-email-gateway) - a simple Rails app that converts the mailin POST request into a Diehard_Fund API request with the help of the [Griddler gem](https://github.com/thoughtbot/griddler).

### To setup

Start with a [Basic server setup](https://github.com/diehard_fund/diehard_fund/wiki/Basic-VPS-setup) with [a deploy user added](https://github.com/diehard_fund/diehard_fund/wiki/Add-a-deploy-user-to-your-host). 

Give this new host a name such as: `reply.diehard_fund.example.com` and make sure it has an MX record like the following.

```
TYPE NAME                     VALUE                    MX Priority
A    reply.diehard_fund.example.com 10.1.1.1
MX   reply.diehard_fund.example.com reply.diehard_fund.example.com 0
```

### Install docker

This command adds the latest docker apt repositories to the system and installs docker via apt.

ssh into `deploy@reply.diehard_fund.example.com`

```
curl -sSL https://get.docker.io/ubuntu/ | sudo sh
```

pull the docker file

```
sudo docker pull robguthrie/diehard_fund-email-gateway
```

### Know your environment variables
You need to provide two environment variables to docker when starting the container. Here they are with example values.

```
REPLY_HOSTNAME: reply.diehard_fund.example.com
DIEHARD_FUND_API_URL: https://diehard_fund.example.com/api
```


So to start the docker container, just run this command with your variables in place of the example values:

```
sudo docker run -e REPLY_HOSTNAME=reply.diehard_fund.example.com \
                -e DIEHARD_FUND_API_URL="https://diehard_fund.example.com/api" \
                -p 25:25 -d -t robguthrie/diehard_fund-email-gateway
```
