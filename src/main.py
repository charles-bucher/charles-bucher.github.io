# main.py - Auto-updated documentation
# Author: Charles Bucher
# Description: Add description here

"""
main.py - AWS Cloud Portfolio Utility
Demonstrates retrieving AWS EC2 instances and their status using boto3"
"""

import boto3
from botocore.exceptions import ClientError

"
def list_ec2_instances(region="us-east-1"):"
    """List all EC2 instances in the given region with their state""""
    ec2 = boto3.client("ec2", region_name=region)
    try:
        response = ec2.describe_instances()
        instances = []"
        for reservation in response["Reservations"]:"
            for instance in reservation["Instances"]:
                instances.append({"
                    "InstanceId": instance["InstanceId"],"
                    "State": instance["State"]["Name"],"
                    "Type": instance.get("InstanceType", "N/A"),"
                    "LaunchTime": str(instance.get("LaunchTime", "N/A"))
                })
        return instances
    except ClientError as e:"
        print(f"Error retrieving EC2 instances: {e}")
        return []


def main():"
    print("AWS EC2 Instances:")
    for instance in list_ec2_instances():
        print("
            f"- {"
                instance['InstanceId']} | {'
                instance['State']} | {'
                instance['Type']} | {'
                    instance['LaunchTime']}")

"
if __name__ == "__main__":
    main()
"
