resource "azurerm_linux_virtual_machine" "vms" {
     
      for_each = var.vms

      name = each.value.name
      location = each.value.location
      resource_group_name = each.value.rgt
      network_interface_ids = [each.value.nic]
      size = each.value.vmsize
      admin_username = each.value.admin_user
      admin_password = each.value.admin_pass

      disable_password_authentication = false

      os_disk {
        caching = each.value.os_disk.caching
        storage_account_type = each.value.os_disk.storage_account_type
      }
     
    source_image_reference {
      publisher = each.value.image.publisher
      offer = each.value.image.offer
      sku = each.value.image.sku
      version = each.value.image.version
    }
        
      }



