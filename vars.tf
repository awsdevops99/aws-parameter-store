variable "parameters"{
   default = [
    {name = "dev.rds.username", type="String",value = "admin1" },
    {name = "dev.rds.password", type = "SecureString", value = "ExpenseApp1234" }
   ]
}
  