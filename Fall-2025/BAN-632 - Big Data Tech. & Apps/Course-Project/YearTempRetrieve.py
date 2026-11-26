from mrjob.job import MRJob
from mrjob.protocol import RawValueProtocol
import re


class YearTempRetrieve(MRJob):
    # Output plain strings instead of JSON tuples
    OUTPUT_PROTOCOL = RawValueProtocol

    def mapper(self, _, line):
        # Guard against missing/short input
        if not line or len(line) < 93:
            return

        year = line[15:19]

        sign_char = line[87]
        
        if sign_char in ('+', '-'):
            temp_str = line[88:92]
            try:
                temp = int(temp_str)
            except ValueError:
                return
            if sign_char == "-":
                temp = -temp
        else:
            try:
                temp = int(line[87:92])
            except ValueError:
                return

        if abs(temp) == 9999:
           return
        
        # Optional quality flag (often at index 92):
        # q = record[92]
        # if q not in "01459":
        #     return
        yield None, "%s\t%d" % (year, temp)
        


if __name__ == "__main__":
    YearTempRetrieve.run()
