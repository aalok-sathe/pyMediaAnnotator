#! /bin/env/ python3

import re
from datetime import datetime

with open('README.md', 'r') as infile:
    text = infile.read()
    
with open('README.md', 'w') as out:
    print(re.sub(r"(?<=svg\?v=).+(?=\)])", str(abs(hash(datetime.now()))), text), file=out)
