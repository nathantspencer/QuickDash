![QuickDash Logo](images/png/QuickDashLogoTextDark.png#gh-dark-mode-only)
![QuickDash Logo](images/png/QuickDashLogoTextLight.png#gh-light-mode-only)
---
QuickDash is an AutoHotkey script for quickly typing en and em dashes on Windows: a task that is particularly cumbersome for users of keyboard without numpads.

![image](images/gif/QuickDashDemo.gif)

Type two hypens to form an en dash, or three for an em dash.

- [Installing QuickDash](#installing-quickdash)
- [Modifying QuickDash](#modifying-quickdash)
- [Uninstalling QuickDash](#uninstalling-quickdash)
- [FAQs](#faqs)

# Installing QuickDash

 - Navigate to the [latest release on the releases page](https://github.com/nathantspencer/QuickDash/releases)
 - Download `QuickDash.exe` and `InstallQuickDash.bat`
 - Open to the folder on your PC where they were downloaded, then double-click `InstallQuickDash.bat`
 - Successful installation will display a result like the one shown below; QuickDash is active immediately

![image](https://github.com/user-attachments/assets/97e26b98-d9cb-4f56-bce4-a4389b101ba9)

# Modifying QuickDash

QuickDash can be modified to fit your needs. See [the FAQs](#faqs) for examples of modifying QuickDash to:

- Restrict it to operate only in certain programs
- Adjust the threshold for how quickly hyphens must be typed to form en or em dashes

Most modifications will be done by first modifying the AutoHotkey script [`QuickDash.ahk`](sources/QuickDash.ahk). To run the modified script directly or to compile it into an executable `QuickDash.exe`, you'll need to install [AutoHotkey](https://www.autohotkey.com/).

Once AutoHotkey is installed, and before testing a modified version of the script, be sure the [QuickDash is uninstalled](#uninstalling-quickdash) to avoid conflicting behavior. Then you can test your changes by running the following command from the `sources` directory:

```
AutoHotkey.exe QuickDash.ahk
```

The hotkeys should immediately become active. If you make additional changes, you can run the above command again, which will replace the previously bound hotkey behavior with the new one.

To stop the hotkeys, you can find and end the task for AutoHotkey from Task Manager, shown below:

![image](https://github.com/user-attachments/assets/b768a3d4-f673-44f3-bab6-1d2b2e8333e1)

When you are satisfied with the changes, use AutoHotkey Dash—an executable installed with AutoHotkey—to compile `QuickDash.ahk` into `QuickDash.exe`. Ensure that the new version of `QuickDash.exe` is present alongside the script `InstallQuickDash.bat`, then double-click the latter to run the installation process. The modified version of QuickDash will be activated immediately.


# Uninstalling QuickDash

 - Navigate to the [latest release on the releases page](https://github.com/nathantspencer/QuickDash/releases)
 - Download `UninstallQuickDash.bat`
 - Open to the folder on your PC where this file was downloaded, then double-click it
 - Successful uninstallation will display a result like the one shown below; QuickDash is deactivated immediately

![image](https://github.com/user-attachments/assets/90473179-88a5-4604-912c-a58f737d9dfc)

# FAQs

### What platforms does QuickDash support?

QuickDash is Windows-only.

### I'm having a problem with QuickDash. How can I get some help?

If QuickDash isn't working correctly for you please [open an issue](https://github.com/nathantspencer/QuickDash/issues) and I'll get back to you as soon as possible.

If you have general feedback, questions, or suggestions you'd like to share, please [start a discussion](https://github.com/nathantspencer/QuickDash/discussions) instead.

### Can I restrict QuickDash to operate only in certain programs?

Yes. This can be achieved by modifying the `#HotIf` directive in [`QuickDash.ahk`](sources/QuickDash.ahk), shown below:

https://github.com/nathantspencer/QuickDash/blob/d5ba18980035a1b98cf9ca004dcc12e39b336e16/sources/QuickDash.ahk#L3-L8

The programs listed there are excluded from QuickDash. To easily find the names of programs to include or exclude from QuickDash, AutoHotkey's Window Spy feature can be used. After making a change, follow the instructions in [Modifying QuickDash](#modifying-quickdash) to produce and install a new executable.

### Can I change how quickly I need to type hyphens in order to form en and em dashes?

Yes. This can be done by adjusting the `TIME_THRESHOLD_MS` constant in [`QuickDash.ahk`](sources/QuichDash.ahk), shown below:

https://github.com/nathantspencer/QuickDash/blob/b2107fa577d64c8221c6a2046b7a295a1fca9289/sources/QuickDash.ahk#L18-L20

This threshold represents the number of milliseconds within which an additional hyphen must be typed in order to transform a hypen into an en dash, or an en dash into an em dash. Increasing this number will allow you to form en and em dashes from more slowly typed hyphens. After making a change, follow the instructions in [Modifying QuickDash](#modifying-quickdash) to produce and install a new executable.