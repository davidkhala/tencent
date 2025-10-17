import os
import unittest
from davidkhala.tencent.map import API

class SuggestTestCase(unittest.TestCase):
    def setUp(self):
        key = os.environ.get('KEY')
        self.api = API(key)
    def test_schools(self):
        address = "福安市第一中學"
        r = self.api.suggest(address)
        self.assertEqual(1, len(r))
        print(r)



if __name__ == '__main__':
    unittest.main()
