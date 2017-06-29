TabControl
==========

The regular `TabControl` in WPF only supports lazy-loading of the views inside the tabs. The `TabControl` provided
by this library supports lots of different options.
<br />Inherits from [System.Windows.Controls.TabControl][1].

Option|Description
-|-
LazyLoading|Load all tabs using lazy loading, but keeps the tabs in memory afterwards.
LazyLoadingUnloadOthers|Load all tabs using lazy loading. As soon as a tab is loaded, all other loaded tabs will be unloaded.
EagerLoading|Load all tabs as soon as the tab control is loaded.
EagerLoadingOnFirstUse|Load all tabs when any of the tabs is used for the first time.

## Properties

Property name|Description
-|-
LoadTabItems|Gets or sets load tab items strategy (LazyLoading, LazyLoadingUnloadOthers, EagerLoading or EagerLoadingOnFirstUse);

## How to use

```
<orc:TabControl LoadBehavior="EagerLoading">
  <TabItem ... />
  <TabItem ... />
  <TabItem ... />
</orc:TabControl>
```
[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.tabcontrol(v=vs.110).aspx