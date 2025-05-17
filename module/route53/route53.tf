##Route53 Records
resource "aws_route53_record" "default" {
  for_each = { for name in var.zone_name : name => name }
  zone_id  = var.zone_id
  name     = each.value
  type     = "A"

  #もしドメイン名がgitlabの場合はAレコードを作成
  records = each.value == "gitlab" ? [var.public_ip] : null
  ttl     = each.value == "gitlab" ? 300 : null

  #もしドメイン名がgitlab以外の場合はaliaseブロックを作成
  dynamic "alias" {
    for_each = each.value != "gitlab" ? [1] : []
    content {
      name                   = var.alb_dns_name
      zone_id                = var.alb_zone_id
      evaluate_target_health = true
    }
  }
}