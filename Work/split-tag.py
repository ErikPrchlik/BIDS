import sys
import csv

fixed_stdin = map(lambda x: x.replace("\r", " ").replace("\0", ""), sys.stdin)
writer = csv.writer(sys.stdout, delimiter=",")
name = None
tags_str = None
try:
    for name, tags_str in csv.reader(fixed_stdin, delimiter=";"):
        if tags_str != '[None]':
            for tags in csv.reader((tags_str,), delimiter="|"):
                for tag in tags:
                    writer.writerow((name, tag))
except Exception as e:
    print("chybne tagy:", name, repr(tags_str), file=sys.stderr)
    raise e
