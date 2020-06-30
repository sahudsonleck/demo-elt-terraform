import os
import re 
 
d = 'C:\\temp\\training\\terraform\\demo-etl-terraform\\demo-etl-terraform\\'
for i in os.listdir(d):
    if os.path.isdir(d + i) and re.match(r'[a-zA-Z]',i[0]):
            doc = 'terraform-docs md ' + (d+i) + ' > ' + (d+i) + '\\' + 'README.md'
            print(doc)
            #exec(doc)
    