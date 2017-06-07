# Orc.Analytics

[![Join the chat at https://gitter.im/WildGums/Orc.Analytics](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Analytics?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![License](https://img.shields.io/github/license/wildgums/orc.analytics.svg)
![NuGet downloads](https://img.shields.io/nuget/dt/orc.analytics.svg)
![Version](https://img.shields.io/nuget/v/orc.analytics.svg)
![Pre-release version](https://img.shields.io/nuget/vpre/orc.analytics.svg)

This library makes it very easy to integration Google Analytics with Catel projects.

![Google Analytics](doc/images/google_analytics.png)  

# Initializing the service

Initializing the service is really easy. It tries to get as much information as possible, but all properties can be changed accordingly. The service is automatically registered in the Catel service locator. 

Use the code to initialize the service by letting the service injected into a view model or resolve it manually from the service locator, then call this code:

    googleAnalyticsService.AccountId = AccountId;

# Customizing user ID

The user id is retrieved from the *IUserIdService*. By default, it uses a combination of the CPU id and the HDD id and hashes a combination of these 2 so they cannot be traced back to the user.

It can be customized by creating a custom *IUserIdService* or by setting the *UserId* property manually on the *IGoogleAnalyticsService*.

# Sending data

You can send data to Google Analytics with several calls. Below are all the calls explained separately.

## SendView

Use the following method:

    public async Task SendView(string viewName);

## SendEvent

Use the following method:

    public async Task SendEvent(string category, string action, string label = null, long value = 0);

## SendTransaction

Use the following method:

    public async Task SendTransaction(string sku, string name, string transactionId, long costPerProduct, int quantity = 1);

## SendTiming

Use the following method:

    public async Task SendTiming(TimeSpan time, string category, string variable, string label = "")
