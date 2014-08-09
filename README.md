# Motion-YAML nil Bug Example

Here's a test project showing the bug described in [HipByte/motion-yaml Issue #9](https://github.com/HipByte/motion-yaml/issues/9)

At first I thought it was being caused by the gem cutting off the last character in all cases. After trying to re-create the error again, I found this wasn't quite the case.

In our app, we deal with some non-roman characters such as the Norwegian "å" - the bug I've described only seems to happen when these are introduced.

### How To Reproduce This Bug

Just now - when you try to load the app it will report that YAML.load() returns nil. To get it to return the YAML contents as a hash, the way we expect it to, you can add an extra line-break at the end
