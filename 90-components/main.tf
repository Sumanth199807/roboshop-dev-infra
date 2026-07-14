module "components" {
    for_each = var.components
    source = "git::https://github.com/Sumanth199807/terraform-roboshop-component.git"
    environment = var.environment
    component = each.key
    app_version = each.value.app_version
    rule_priority = each.value.rule_priority
}