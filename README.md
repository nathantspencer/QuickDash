![QuickDash Logo](images/png/QuickDashLogoTextDark.png#gh-dark-mode-only)
![QuickDash Logo](images/png/QuickDashLogoTextLight.png#gh-light-mode-only)
---
QuickDash is an AutoHotkey script for quickly typing en and em dashes on Windows: a task that is particularly cumbersome for users of keyboard without numpads.

Type two hypens to form an en dash, or three for an em dash.

- [Installing QuickDash](#installing-quickdash)
- [Uninstalling QuickDash](#uninstalling-quickdash)
- [Modifying QuickDash](#modifying-quickdash)
- [FAQs](#faqs)

# Installing QuickDash

 - Navigate to the [latest release on the releases page](https://github.com/nathantspencer/QuickDash/releases)
 - Download `QuickDash.exe` and `InstallQuickDash.bat`
 - Open to the folder on your PC where they were downloaded, then double-click `InstallQuickDash.bat`
 - Successful installation will display a result like the one shown below; QuickDash is active immediately

![image](https://github.com/user-attachments/assets/68b4f3b2-e7b3-47ba-b175-6a8bf91c461b)

# Uninstalling QuickDash

 - Navigate to the [latest release on the releases page](https://github.com/nathantspencer/QuickDash/releases)
 - Download `UninstallQuickDash.bat`
 - Open to the folder on your PC where this file was downloaded, then double-click it
 - Successful uninstallation will display a result like the one shown below; QuickDash is deactivated immediately

![image](https://github.com/user-attachments/assets/36c1ec89-3deb-42fd-aaca-a150c28d2bf1)

# Modifying QuickDash

# FAQs

### What platforms does QuickDash support?

QuickDash is Windows-only.

### Can I restrict QuickDash to operate only in certain programs?

Yes, this can be achieved by modifying the `#HotIf` directive in `QuickDash.ahk`, shown below:

https://github.com/nathantspencer/QuickDash/blob/d5ba18980035a1b98cf9ca004dcc12e39b336e16/sources/QuickDash.ahk#L3-L8

The programs listed there are excluded from QuickDash. To easily find the names of programs to include or exclude from QuickDash, AutoHotkey's Window Spy feature can be used. After making a change, follow the instructions in [Modifying QuickDash](#modifying-quickdash) to produce a new executable.
