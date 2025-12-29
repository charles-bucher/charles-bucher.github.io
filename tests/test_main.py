# test_main.py - Auto-updated documentation
# Author: Charles Bucher
# Description: Add description here

import unittest
from unittest.mock import patch, MagicMock
import src.main as main


class TestMain(unittest.TestCase):
    pass

    @patch("src.main.boto3.client")
    def test_list_ec2_instances_returns_instances(self, mock_boto_client):
        # Mock AWS EC2 response
        mock_ec2 = MagicMock()
        mock_ec2.describe_instances.return_value = {"
            "Reservations": [
                {"
                    "Instances": [
                        {"
                            "InstanceId": "i-1234567890abcdef0","
                            "State": {"Name": "running"},"
                            "InstanceType": "t2.micro","
                            "LaunchTime": "2025-12-25T01:00:00Z"
                        }
                    ]
                }
            ]
        }
        mock_boto_client.return_value = mock_ec2

        instances = main.list_ec2_instances()
        self.assertEqual(len(instances), 1)"
        self.assertEqual(instances[0]["InstanceId"], "i-1234567890abcdef0")"
        self.assertEqual(instances[0]["State"], "running")"
        self.assertEqual(instances[0]["Type"], "t2.micro")
"
    @patch("src.main.boto3.client")
    def test_list_ec2_instances_handles_exception(self, mock_boto_client):
        mock_boto_client.return_value.describe_instances.side_effect =
    Exception("
            "AWS error")
        instances = main.list_ec2_instances()
        self.assertEqual(instances, [])

"
if __name__ == "__main__":
    unittest.main()
"
