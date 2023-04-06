# Microsoft Azure Lighthouse

Azure Lighthouse provides capabilities to perform cross-tenant management at scale.  We do this by providing you the ability to view and manage multiple customers from a single context. When you log into Azure, you can see all of your customers who you are managing through Azure Lighthouse. [Learn more](https://azure.com/lighthouse).

The templates shown below can be used to [onboard a customer to Azure Lighthouse](https://docs.microsoft.com/en-us/azure/lighthouse/how-to/onboard-customer). You can deploy these manually, or use the "Deploy to Azure" buttons to deploy directly in the Azure portal.
# Deploy to Azure buttons

Name | Description   | Auto-deploy   | Manual deploy |
-----| ------------- |--------------- |------- 
| Azure Lighthouse - Subscription Deployment |onboard a *subscription* | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FMicroAgeServicesOrg%2FAzure-Lighthouse-Onboarding%2Fmain%2Ftemplates%2Fdelegated-resource-management%2Fsubscription%2FMicroAgeServicesLighthouseOnboarding.json) | [templates](https://github.com/MicroAgeServicesOrg/Azure-Lighthouse-Onboarding/tree/main/templates/delegated-resource-management/subscription)


# How To: Onboard MicroAge Services as a Lighthouse enabled service provider
One of the most common monitoring requirements for a virtual machine is to create an alert if it stops running. The best method for this is to create a metric alert rule in Azure Monitor using the **VM availability** metric which is currently in public preview.

In this article, you learn how to:

> * Deploy delegated subscription access to MicroAge Services via Azure Lighthouse

## Prerequisites

> * Owner permissions on the subscriptions you would like to delegate.

## Onboarding

1. Make sure you are signed in to the Azure portal in your current browser session
1. Click on the "Deploy to Azure" button at the top of this article.
1. On the custom deployment page, select the subscription you would like to delegate to MicroAge.
1. Click "Next: Review + create."
1. Click the Create button to deploy Lighthouse delegation.
## Support

For support, email support@microage.com