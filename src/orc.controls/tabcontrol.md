TabControl
==========

The regular `TabControl` in WPF only supports lazy-loading of the views inside the tabs. The `TabControl` provided
by this library supports lots of different options:

Option|Description
-|-
LazyLoading|Load all tabs using lazy loading, but keeps the tabs in memory afterwards.
LazyLoadingUnloadOthers|Load all tabs using lazy loading. As soon as a tab is loaded, all other loaded tabs will be unloaded.
EagerLoading|Load all tabs as soon as the tab control is loaded.
EagerLoadingOnFirstUse|Load all tabs when any of the tabs is used for the first time.

## Properties

Property name|Description
-|-


## Events

Event name|Description
-|-


## Methods

Method name|Description
-|-


## How to use

```
<orc:TabControl LoadBehavior="EagerLoading">
  <TabItem ... />
  <TabItem ... />
  <TabItem ... />
</orc:TabControl>
```