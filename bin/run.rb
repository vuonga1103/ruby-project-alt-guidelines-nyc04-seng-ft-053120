require_relative '../config/environment'

interface = Interface.new()
interface.log_in_or_register_page

user_instance = interface.log_in_or_register_page