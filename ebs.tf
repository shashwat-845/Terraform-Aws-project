# EBS Volume
resource "aws_ebs_volume" "myvolume" {
  availability_zone = aws_instance.web1.availability_zone
  size              = 10

  tags = {
    Name = "Terraform-EBS"
  }
}

# Attach EBS to web1
resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.myvolume.id
  instance_id = aws_instance.web1.id

  force_detach = true
}