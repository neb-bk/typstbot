
#let allowed_permissions = ("read", "write", "delete")

#block[
  Is "read" in `allowed_permissions` using `in`? #("read" in allowed_permissions)
  Is "execute" in `allowed_permissions` using `in`? #("execute" in allowed_permissions)
  Is "write" in `allowed_permissions` using `contains`? #(allowed_permissions.contains("write"))
]
