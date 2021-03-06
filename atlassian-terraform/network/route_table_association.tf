resource "aws_route_table_association" "pubZoneA" {
    subnet_id = "${var.public_subnet_zone_a_id}"
    route_table_id = "${aws_route_table.rancher.id}"
    depends_on = ["aws_network_acl.rancher"]
}

resource "aws_route_table_association" "pubZoneB" {
    subnet_id = "${var.public_subnet_zone_b_id}"
    route_table_id = "${aws_route_table.rancher.id}"
    depends_on = ["aws_network_acl.rancher"]
}

resource "aws_route_table_association" "pubZoneC" {
    subnet_id = "${var.public_subnet_zone_c_id}"
    route_table_id = "${aws_route_table.rancher.id}"
    depends_on = ["aws_network_acl.rancher"]
}

