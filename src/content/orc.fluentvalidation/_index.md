+++
title = "Orc.FluentValidation" 
description = ""
+++

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.FluentValidation](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.FluentValidation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.fluentvalidation.svg)
Stable version|![Version](https://img.shields.io/nuget/v/orc.fluentvalidation.svg)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.fluentvalidation.svg)

Find the source at [https://github.com/WildGums/Orc.FluentValidation](https://github.com/WildGums/Orc.FluentValidation)

The validation in Catel is extremely flexible, at this point you must already know it, but sometimes it is just not enough or you are forced to use external validators.

**Note that the FluentValidation extension can be used in combination with Catel.Core only, so it is not required to combine it with the MVVM framework**

FluentValidation is a small validation library for .NET that uses a fluent interface and lambda expressions for building validation rules for your business objects. Catel provides an extension in order to use FluentValidation as a validation library.

The only thing you have to do is install an isolate package named `Orc.FluentValidation`, available via NuGet, then you will be able to write your view models validations using FluentValidation approach.

```
	public class PersonViewModelValidator : AbstractValidator<PersonViewModel>
	{
	    public PersonViewModelValidator()
	    {
	        RuleFor(person => person.FirstName).NotEmpty();
	        RuleFor(person => person.LastName).NotEmpty().WithMessage("Please specify the last name");
	    }
	}
```

In order to retrieve the right validators, you must register the `FluentValidatorProvider`:

```
	ServiceLocator.Default.RegisterType<IValidatorProvider, FluentValidatorProvider>();
```

The `FluentValidatorProvider` will automatically retrieve the right validators associated with the view models.

# How to handle all Catel validation concepts with fluent validation classes?

Catel handle concepts like field or business rules errors and warnings. So, it's necessary map the fluent validation class to the specific Catel validation using `ValidationDescriptionAttribute`.

```
	[ValidatorDescription(Tag = "Person", ValidationResultType = ValidationResultType.Error, ValidationType = ValidationType.Field)]
	public class PersonViewModelValidator : AbstractValidator<PersonViewModel>
	{
	}
```

How does the FluentValidationProvider works?

`FluentValidationProvider` is an implementation of `IValidationProvider` (see [Validation via IValidator](https://catelproject.atlassian.net/wiki/display/CTL/Validation+via+IValidator)). It searches for all validators classes that implement `FluentValidation.IValidator` interface, that also can validate the view model type.

A view model can have one or more validators, so `FluentValidationProvider` aggregates all validators in a single one using `CompositeValidator` class. For performance reasons `FluentValidationProvider` only searches for validators on the assembly which the view model belongs to. 

**Note that FluentValidationProvider does not use NamingConventions**

