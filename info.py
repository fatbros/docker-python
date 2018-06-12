#!/usr/bin/env python
import platform
import os

print('platform: ' + platform.platform())
print('python version: ' + platform.python_version())
print('os uid: ' + str(os.getuid()))
