import json
import os
cwd = os.getcwd()
out_file = ''
out_json = ''
datastore = ''

print (os.getcwd())
for filename in os.listdir(os.getcwd()):
    if filename.endswith(".json"): 
        out_file = os.path.join(os.getcwd(),filename)
        print (out_file)
        with open(out_file, 'r') as f:
            datastore = json.load(f)
            print (datastore)
