![QuickDash Logo](images/png/QuickDashLogoTextDark.png#gh-dark-mode-only)
![QuickDash Logo](images/png/QuickDashLogoTextLight.png#gh-light-mode-only)
---
QuickDash is an AutoHotkey script for quickly typing en and em dashes on Windows: a task that is particularly cumbersome for users of keyboard without numpads. Type two hypens to form an en dash, or three for an em dash.

# Installing QuickDash

Take [QuickDash.exe](QuickDash.exe)

# Modifying QuickDash

# FAQs

### What platforms does QuickDash support?

QuickDash is Windows-only.

### Can I restrict QuickDash to operate only in certain programs?

Yes, this can be achieved by modifying the `#HotIf` directive in [QuickDash.ahk](sources/QuickDash.ahk), shown below:

https://github.com/nathantspencer/QuickDash/blob/d5ba18980035a1b98cf9ca004dcc12e39b336e16/sources/QuickDash.ahk#L3-L8

The programs listed there are excluded from QuickDash. To easily find the names of programs to include or exclude from QuickDash, AutoHotkey's Window Spy feature can be used. After making a change, follow the instructions in [Modifying QuickDash](#modifying-quickdash) to produce a new executable.
