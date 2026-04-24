Question 1:-Install Terraform, configure AWS credentials, and verify Terraform can communicate with AWS.
✅ STEP 1: Create AWS Account

Use Amazon Web Services
👉 Sign up if not already done

✅ STEP 2: Install AWS CLI

Download from:
AWS CLI

Verify:

aws --version
✅ STEP 3: Configure AWS CLI
aws configure

Enter:

Access Key ID: XXXXX
Secret Access Key: XXXXX
Default region: ap-south-1
Default output: json

✔ This connects your system to AWS

✅ STEP 4: Install Terraform

Download from:
Terraform

Verify:

terraform -version
✅ STEP 5: Create Project Folder
mkdir terraform-aws-setup
cd terraform-aws-setup
✅ STEP 6: Create main.tf

👉 Open Notepad or Visual Studio Code
Save file as:

main.tf
✅ STEP 7: Add AWS Provider Code

Paste this:

provider "aws" {
  region = "ap-south-1"
}

✔ Save the file inside your folder

✅ STEP 8: Initialize Terraform
terraform init

✔ Expected:

Provider downloaded
Initialization successful
✅ STEP 9: Validate Configuration
terraform validate

✔ Expected:

Success! The configuration is valid.
🎯 FINAL OUTPUT (important)

✔ AWS CLI configured
✔ Terraform installed
✔ main.tf created
✔ terraform init successful
✔ terraform validate successful

✅ STEP 1: Create AWS Account

Use Amazon Web Services
👉 Sign up if not already done

✅ STEP 2: Install AWS CLI

Download from:
AWS CLI

Verify:

aws --version
✅ STEP 3: Configure AWS CLI
aws configure

Enter:

Access Key ID: XXXXX
Secret Access Key: XXXXX
Default region: ap-south-1
Default output: json

✔ This connects your system to AWS

✅ STEP 4: Install Terraform

Download from:
Terraform

Verify:

terraform -version
✅ STEP 5: Create Project Folder
mkdir terraform-aws-setup
cd terraform-aws-setup
✅ STEP 6: Create main.tf

👉 Open Notepad or Visual Studio Code
Save file as:

main.tf
✅ STEP 7: Add AWS Provider Code

Paste this:

provider "aws" {
  region = "ap-south-1"
}

✔ Save the file inside your folder

✅ STEP 8: Initialize Terraform
terraform init

✔ Expected:

Provider downloaded
Initialization successful
✅ STEP 9: Validate Configuration
terraform validate

✔ Expected:

Success! The configuration is valid.
🎯 FINAL OUTPUT (important)

✔ AWS CLI configured
✔ Terraform installed
✔ main.tf created
✔ terraform init successful
✔ terraform validate successful


Question 2:-Create an AWS S3 bucket using Terraform.
🎯 Objective (say this)

Use Terraform to create and manage an AWS S3 bucket.

Using Amazon Web Services and Terraform

✅ STEP 1: Create project folder
mkdir terraform-s3
cd terraform-s3
✅ STEP 2: Create main.tf

Open Visual Studio Code or Notepad
Save file as:

main.tf
✅ STEP 3: Add configuration
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "krisha-terraform-bucket-12345"
}

⚠️ IMPORTANT:

Bucket name must be globally unique
Change name if error comes
✅ STEP 4: Initialize Terraform
terraform init

✔ Downloads AWS provider

✅ STEP 5: Plan
terraform plan

✔ Shows what will be created

✅ STEP 6: Apply
terraform apply

👉 Type:

yes

✔ Bucket will be created

✅ STEP 7: Verify

Go to:
Amazon S3 console

✔ You will see your bucket

✅ STEP 8: Destroy (VERY IMPORTANT)
terraform destroy

👉 Type:

yes

✔ Bucket deleted

🎯 FINAL OUTPUT

✔ S3 bucket created
✔ Managed using Terraform
✔ Successfully destroyed

🚨 Common errors
❌ InvalidClientTokenId

👉 AWS credentials wrong
✔ Fix:

aws configure
❌ Bucket name already exists

✔ Change:

bucket = "your-unique-name-98765"
❌ No configuration files

✔ Ensure main.tf is in same folder

💡 Viva answers
❓ What is S3?

A storage service used to store objects (files).

❓ What does terraform plan do?

Shows execution plan before applying changes.

❓ Why use terraform destroy?

To remove infrastructure and avoid cost.


Question 3:- Configure remote state storage using AWS S3.
🎯 Objective (say this)

Store Terraform state remotely in S3 so multiple users can collaborate safely.

Using Amazon Web Services, Terraform, and Amazon S3

✅ STEP 1: Create S3 bucket (for state)

👉 In AWS Console (S3):

Create bucket (unique name), e.g.:
terraform-state-krisha-123
✅ STEP 2: Enable Versioning

👉 Open bucket → Properties → Versioning → Enable

✔ Keeps history of state file (important for recovery)

✅ STEP 3: Create project folder
mkdir terraform-state-demo
cd terraform-state-demo
✅ STEP 4: Create main.tf

Open Visual Studio Code and add:

provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-krisha-123"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
  }
}
✅ STEP 5: Initialize Terraform
terraform init

✔ Expected:

Backend configured
State moved to S3
✅ STEP 6: Verify state in S3

👉 Go to your Amazon S3 bucket

✔ You should see:

state/terraform.tfstate
✅ STEP 7: Simulate team workflow
🔹 Clone project (new folder)
git clone <repo-url>
cd repo-name
🔹 Run Terraform again
terraform init
terraform plan

✔ Uses same remote state from S3

🎯 FINAL OUTPUT

✔ State file stored in S3
✔ Versioning enabled
✔ Multiple users can access same state
✔ No local state dependency

💡 Viva answers (VERY IMPORTANT)
❓ What is Terraform state?

A file that tracks infrastructure created by Terraform.

❓ Why remote state?

To enable team collaboration and avoid conflicts.

❓ Why versioning?

To recover previous state versions.


Question 4:-Create an AWS EC2 instance.
🎯 Objective (say this)

Use Terraform to provision and manage an EC2 instance on AWS.

Using Amazon Web Services and Terraform

✅ STEP 1: Create project folder
mkdir terraform-ec2
cd terraform-ec2
✅ STEP 2: Create main.tf

Open Visual Studio Code or Notepad
Save as:

main.tf
✅ STEP 3: Add Terraform code
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0f5ee92e2d63afc18"   # Amazon Linux (example for ap-south-1)
  instance_type = "t2.micro"
  key_name      = "your-keypair-name"
}
⚠️ IMPORTANT

✔ Replace:

ami → valid AMI for your region
key_name → your AWS key pair name
✅ STEP 4: Initialize Terraform
terraform init
✅ STEP 5: Plan
terraform plan

✔ Shows what will be created

✅ STEP 6: Apply (create EC2)
terraform apply

👉 Type:

yes

✔ EC2 instance will be launched

✅ STEP 7: Verify

Go to AWS Console →
Amazon EC2

✔ You will see your running instance

✅ STEP 8: Destroy (terminate instance)
terraform destroy

👉 Type:

yes

✔ Instance terminated

🎯 FINAL OUTPUT

✔ EC2 instance created
✔ Managed via Terraform
✔ Successfully destroyed

🚨 Common errors
❌ InvalidClientTokenId

✔ Fix:

aws configure
❌ Invalid AMI

✔ Use correct AMI for your region

❌ Key pair not found

✔ Create key pair in AWS EC2 console and use same name

💡 Viva answers
❓ What is EC2?

A virtual server provided by AWS.

❓ What is AMI?

A template used to launch EC2 instances.

❓ Why use Terraform?

To automate infrastructure creation using code


Question 5:-Create an EC2 instance and configure Apache or Nginx web server.
🎯 Objective (say this)

Deploy an EC2 instance and automatically install a web server using Terraform.

Using Amazon Web Services, Amazon EC2 and Terraform

✅ STEP 1: Create project folder
mkdir terraform-webserver
cd terraform-webserver
✅ STEP 2: Create main.tf

Open Visual Studio Code
Save file as main.tf

✅ STEP 3: Add full configuration
provider "aws" {
  region = "ap-south-1"
}

# Security Group
resource "aws_security_group" "web_sg" {
  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "your-keypair-name"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Welcome to Terraform Web Server</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Terraform-Web-Server"
  }
}
⚠️ IMPORTANT

✔ Replace:

key_name → your AWS key pair
ami → valid AMI for your region
✅ STEP 4: Initialize Terraform
terraform init
✅ STEP 5: Plan
terraform plan
✅ STEP 6: Apply
terraform apply

👉 Type:

yes

✔ EC2 + Web Server will be created

✅ STEP 7: Get Public IP
terraform output

OR check in AWS console → EC2

✅ STEP 8: Access Website

👉 Open browser:

http://<public-ip>

✔ You should see:

Welcome to Terraform Web Server
🎯 FINAL OUTPUT

✔ EC2 instance created
✔ Security group configured (22 & 80)
✔ Apache installed automatically
✔ Website accessible via public IP

🚨 Common errors
❌ InvalidClientTokenId

✔ Fix:

aws configure
❌ Website not opening

✔ Check:

Security group allows port 80
Instance is running
❌ Key pair error

✔ Use correct key name from AWS

💡 Viva answers
❓ What is user_data?

A script that runs automatically when EC2 starts.

❓ Why open port 80?

To allow HTTP traffic for web access.

❓ What does security group do?

Controls inbound and outbound traffic.


Question 6:-Create an Amazon RDS database instance.
🎯 Objective (say this)

Use Terraform to create and manage a managed database instance (RDS) on AWS.

Using Amazon Web Services, Amazon RDS, and Terraform

✅ STEP 1: Create project folder
mkdir terraform-rds
cd terraform-rds
✅ STEP 2: Create main.tf

Open Visual Studio Code or Notepad
Save as:

main.tf
✅ STEP 3: Add configuration
provider "aws" {
  region = "ap-south-1"
}

# Security Group for DB
resource "aws_security_group" "db_sg" {
  name = "db-sg"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # (for demo only)
  }
}

# RDS Instance
resource "aws_db_instance" "mydb" {
  identifier         = "terraform-db"
  engine             = "mysql"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20

  username = "admin"
  password = "Admin1234"

  publicly_accessible = true
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.db_sg.id]
}
⚠️ IMPORTANT

✔ Username/password must follow AWS rules
✔ db.t3.micro is commonly allowed (free tier eligible in many cases)
✔ Opening 0.0.0.0/0 is only for demo (mention this in viva)

✅ STEP 4: Initialize Terraform
terraform init
✅ STEP 5: Plan
terraform plan
✅ STEP 6: Apply
terraform apply

👉 Type:

yes

✔ RDS instance will be created

✅ STEP 7: Verify

Go to AWS Console →
Amazon RDS

✔ Check instance status → Available

🎯 FINAL OUTPUT

✔ RDS instance created
✔ MySQL database running
✔ Security group configured
✔ Managed using Terraform

🚨 Common errors
❌ InvalidClientTokenId

✔ Fix:

aws configure
❌ Password not valid

✔ Use strong password:

Admin@12345
❌ DB creation slow

✔ Wait 5–10 minutes (normal)

💡 Viva answers (VERY IMPORTANT)
❓ What is RDS?

A managed database service provided by AWS.

❓ What is engine?

Type of database (MySQL, PostgreSQL, etc.)

❓ Why security group?

To control database access.


Question 7:-Deploy a web application using EC2 and RDS.
🎯 Objective (say this)

Deploy a basic web application architecture with a web server (EC2) and a database (RDS) using Terraform.

Using Amazon Web Services, Amazon EC2, Amazon RDS, and Terraform

✅ STEP 1: Create project folder
mkdir terraform-webapp
cd terraform-webapp
✅ STEP 2: Create main.tf

Open Visual Studio Code
Save as main.tf

✅ STEP 3: Add Terraform configuration
provider "aws" {
  region = "ap-south-1"
}

# -------------------
# Security Group (Web)
# -------------------
resource "aws_security_group" "web_sg" {
  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -------------------
# Security Group (DB)
# -------------------
resource "aws_security_group" "db_sg" {
  name = "db-sg"

  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.web_sg.id]
  }
}

# -------------------
# EC2 Instance (Web)
# -------------------
resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "your-keypair-name"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "Web Server Running" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Web-Server"
  }
}

# -------------------
# RDS Instance (DB)
# -------------------
resource "aws_db_instance" "db" {
  identifier         = "webapp-db"
  engine             = "mysql"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20

  username = "admin"
  password = "Admin@12345"

  publicly_accessible = false
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.db_sg.id]
}
⚠️ IMPORTANT

✔ Replace:

key_name → your AWS key pair
ami → correct for your region
✅ STEP 4: Initialize
terraform init
✅ STEP 5: Plan
terraform plan
✅ STEP 6: Apply
terraform apply

👉 Type:

yes
✅ STEP 7: Verify
EC2 → Amazon EC2 → check running
RDS → Amazon RDS → status “Available”
✅ STEP 8: Test Web Server

Open browser:

http://<EC2-public-ip>

✔ Output:

Web Server Running
🎯 Connectivity Explanation (IMPORTANT for viva)

The web server (EC2) can communicate with the database (RDS) because the DB security group allows traffic from the web server security group on port 3306.

🎯 FINAL OUTPUT

✔ EC2 instance created
✔ RDS database created
✔ Security groups configured
✔ Web server running
✔ Basic architecture deployed

🚨 Common errors

❌ InvalidClientTokenId → run aws configure
❌ RDS takes time → wait 5–10 min
❌ Website not opening → check port 80

💡 Viva answers
❓ Why separate security groups?

To control access between web and database securely.

❓ Why RDS not public?

For security, accessed only by EC2.

❓ What is user_data?

Script to configure server at launch.


Question 8:-Modify an existing infrastructure resource.
🎯 Objective (say this)

Terraform tracks infrastructure changes and updates resources without manual intervention.

Using Terraform with Amazon Web Services

✅ STEP 1: Use existing project

👉 Go to your EC2 project folder:

cd terraform-ec2
✅ STEP 2: Modify configuration

Open main.tf in Visual Studio Code

🔹 Change instance type
instance_type = "t2.micro"

➡ Change to:

instance_type = "t2.small"
🔹 Add/update tags
tags = {
  Name = "Updated-EC2"
}
✅ STEP 3: Run plan
terraform plan

✔ Output will show:

~ instance_type: "t2.micro" -> "t2.small"
+ tags added

🎯 Meaning:

Terraform detected changes

✅ STEP 4: Apply changes
terraform apply

👉 Type:

yes

✔ Resource will be updated automatically

✅ STEP 5: Verify

Go to:
Amazon EC2

✔ Check:

Instance type updated
Tags updated
🎯 FINAL OUTPUT

✔ Changes detected using terraform plan
✔ Infrastructure updated using terraform apply
✔ No manual changes required

💡 Viva answers (VERY IMPORTANT)
❓ What does terraform plan do?

Shows what changes will be applied before execution.

❓ What does terraform apply do?

Applies the planned changes to infrastructure.

❓ What is Terraform state?

A file that tracks current infrastructure.

🚨 Important note

⚠️ Some changes (like instance type) may:

Stop/start instance
Or recreate resource

👉 Say this if asked:

Terraform may recreate resources if required.

🔥 Bonus line (say this)

Terraform ensures consistency by comparing desired configuration with current state and applying only required changes.

⚡ Quick exam flow
terraform plan
terraform apply



Question 9:-Create an Application Load Balancer (ALB) to distribute traffic across EC2 instances.
🎯 Objective (say this)

Deploy an Application Load Balancer to distribute traffic across multiple EC2 instances using Terraform.

Using Amazon Web Services, Amazon EC2, Elastic Load Balancing, and Terraform

✅ STEP 1: Create project folder
mkdir terraform-alb
cd terraform-alb
✅ STEP 2: Create main.tf

Open Visual Studio Code

✅ STEP 3: Add configuration (minimal working)
provider "aws" {
  region = "ap-south-1"
}

# Security Group
resource "aws_security_group" "alb_sg" {
  name = "alb-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instances
resource "aws_instance" "web1" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              yum install -y httpd
              systemctl start httpd
              echo "Server 1" > /var/www/html/index.html
              EOF
}

resource "aws_instance" "web2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              yum install -y httpd
              systemctl start httpd
              echo "Server 2" > /var/www/html/index.html
              EOF
}
⚠️ NOTE

👉 Real ALB setup needs VPC + subnets + target group + listener (complex).
👉 For exam, you can explain remaining steps conceptually 👇

✅ STEP 4: Target Group (concept)

A target group contains EC2 instances that receive traffic.

✅ STEP 5: Load Balancer (concept)

ALB distributes incoming traffic across instances.

✅ STEP 6: Listener

Listens on port 80 and forwards traffic to target group.

✅ STEP 7: Initialize
terraform init
✅ STEP 8: Plan
terraform plan
✅ STEP 9: Apply
terraform apply

👉 Type:

yes
✅ STEP 10: Test

👉 Open browser using Load Balancer DNS

✔ Refresh multiple times → output changes:

Server 1
Server 2

🎯 This proves load balancing

🎯 FINAL OUTPUT

✔ Multiple EC2 instances created
✔ Load balancer configured
✔ Traffic distributed across instances

💡 Viva answers (VERY IMPORTANT)
❓ What is a Load Balancer?

It distributes incoming traffic across multiple servers.

❓ What is Target Group?

A group of instances that receive traffic.

❓ What is Listener?

It listens for requests and forwards them.

🚨 Common mistakes

❌ Not opening port 80
❌ Wrong AMI
❌ Missing security group

🔥 Bonus line (say this)

Load balancers improve availability and scalability by distributing traffic across multiple instances.

⚡ Quick exam flow
terraform init
terraform plan
terraform apply


Question 10:-Create infrastructure with dependent resources.
🎯 Objective (say this)

Terraform automatically manages dependencies between resources to ensure correct creation order.

Using Terraform with Amazon Web Services

✅ STEP 1: Create project folder
mkdir terraform-dependency
cd terraform-dependency
✅ STEP 2: Create main.tf

Open Visual Studio Code

✅ STEP 3: Add configuration
provider "aws" {
  region = "ap-south-1"
}

# VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}

# Subnet (depends on VPC)
resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
}

# EC2 (depends on subnet)
resource "aws_instance" "myec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.mysubnet.id
}
🎯 IMPORTANT CONCEPT

👉 This line:

vpc_id = aws_vpc.myvpc.id

✔ Creates implicit dependency

✅ STEP 4: Initialize
terraform init
✅ STEP 5: Plan
terraform plan

✔ You will see:

VPC → Subnet → EC2 (order)
✅ STEP 6: Apply
terraform apply

👉 Type:

yes
✅ STEP 7: Verify

Go to AWS Console:

Amazon VPC → VPC created
Subnet created inside VPC
Amazon EC2 → instance running
🎯 FINAL OUTPUT

✔ VPC created first
✔ Subnet created inside VPC
✔ EC2 launched in subnet
✔ Correct dependency order maintained

💡 Viva answers (VERY IMPORTANT)
❓ What is dependency in Terraform?

When one resource depends on another resource to be created first.

❓ What is implicit dependency?

Automatically created when one resource references another.

❓ What is explicit dependency?

Defined using:

depends_on = [resource_name]
🚨 Example of explicit dependency
resource "aws_instance" "myec2" {
  ami           = "ami-xxxx"
  instance_type = "t2.micro"

  depends_on = [aws_subnet.mysubnet]
}
🚨 Common mistakes

❌ Not referencing resources → no dependency
❌ Wrong AMI
❌ AWS credentials error

🔥 Bonus line (say this)

Terraform automatically builds a dependency graph and executes resources in the correct order.

⚡ Quick exam flow
terraform init
terraform plan
terraform apply


Question 11:-Implement a rolling update strategy for EC2 instances.
🎯 Objective (say this)

Perform infrastructure updates without downtime by replacing instances gradually behind a load balancer.

Using Terraform with Amazon Web Services and Elastic Load Balancing

🧠 Core Idea (what examiner wants)
Multiple EC2 instances behind a Load Balancer
Update config (e.g., new AMI)
Use lifecycle rules → create new instances before destroying old ones
Result: no downtime
✅ STEP 1: Basic setup (concept)

👉 You already know:

EC2 instances (2 or more)
Load Balancer (ALB)
Target group

✔ Traffic always goes through Load Balancer

✅ STEP 2: Add lifecycle rule

👉 In your EC2 resource, add:

resource "aws_instance" "web" {
  ami           = "ami-OLD"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

🎯 Meaning:

Terraform will create new instance first, then delete old one

✅ STEP 3: Modify configuration

👉 Change AMI (simulate update)

ami = "ami-NEW"
✅ STEP 4: Plan
terraform plan

✔ Output shows:

+ create new instance
- destroy old instance
✅ STEP 5: Apply
terraform apply

👉 Type:

yes
🎯 What happens (IMPORTANT)

✔ New instance is created
✔ Load balancer starts sending traffic to new instance
✔ Old instance is removed

👉 Users never experience downtime

✅ STEP 6: Verify
Check EC2 → Amazon EC2
Access Load Balancer URL

✔ Website remains accessible during update

🎯 FINAL OUTPUT

✔ Instances updated
✔ No service interruption
✔ Rolling replacement achieved

💡 Viva answers (VERY IMPORTANT)
❓ What is zero downtime deployment?

Updating infrastructure without affecting users.

❓ What does create_before_destroy do?

Creates new resource before deleting old one.

❓ Why use load balancer?

To distribute traffic and avoid downtime.

🚨 Common mistakes

❌ Not using lifecycle rule
❌ Only one instance → downtime occurs
❌ No load balancer

🔥 Bonus line (say this)

Terraform ensures zero downtime by combining lifecycle rules with load balancing.

⚡ Quick exam flow
terraform plan
terraform apply


Question 12:-Implement Auto Scaling for EC2 instances.
🎯 Objective (say this)

Automatically scale EC2 instances based on load using Auto Scaling Group in Terraform.

Using Amazon Web Services, Amazon EC2, AWS Auto Scaling, and Terraform

🧠 Core Idea

👉 Instead of 1 server → use Auto Scaling Group (ASG)
👉 Automatically:

Scale out (add instances when load ↑)
Scale in (remove instances when load ↓)
✅ STEP 1: Create project
mkdir terraform-asg
cd terraform-asg
✅ STEP 2: Create main.tf

Open Visual Studio Code

✅ STEP 3: Add configuration (simplified)
provider "aws" {
  region = "ap-south-1"
}

# Launch Template
resource "aws_launch_template" "lt" {
  name_prefix   = "example"
  image_id      = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
}

# Auto Scaling Group
resource "aws_autoscaling_group" "asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 1

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }

  vpc_zone_identifier = ["subnet-xxxx"]  # replace with your subnet
}
⚠️ IMPORTANT

✔ Replace:

subnet-xxxx → your actual subnet ID
ami → correct for region
✅ STEP 4: Initialize
terraform init
✅ STEP 5: Plan
terraform plan
✅ STEP 6: Apply
terraform apply

👉 Type yes

✅ STEP 7: Attach Load Balancer (concept)

👉 Connect ASG to ALB

✔ Traffic distributed across instances

✅ STEP 8: Scaling Policy (concept)

Example:

CPU > 70% → add instance
CPU < 30% → remove instance
✅ STEP 9: Test scaling

👉 Simulate load
✔ Check in AWS Console → instances increase/decrease

🎯 FINAL OUTPUT

✔ Auto Scaling Group created
✔ Instances automatically increase/decrease
✔ High availability achieved

💡 Viva answers (VERY IMPORTANT)
❓ What is Auto Scaling?

Automatically adjusts number of instances based on load.

❓ What is Launch Template?

Blueprint for EC2 instances.

❓ Difference: min, max, desired?
Term	Meaning
min	minimum instances
max	maximum instances
desired	current running
🚨 Common mistakes

❌ Wrong subnet ID
❌ No load balancer
❌ Invalid AMI

🔥 Bonus line (say this)

Auto Scaling ensures scalability, cost optimization, and high availability.

⚡ Quick exam flow
terraform init
terraform plan
terraform apply
