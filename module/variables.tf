#----------------------------------------------------------

variable "repository_name" {
  type = string
}

variable "repository_description" {
  type = string
}

variable "repository_visibility" {
  type = string
}

variable "repository_gitignore" {
  type = string
}

variable "repository_has_wiki" {
  type = bool
}

variable "repository_auto_init" {
  type = bool
}

#----------------------------------------------------------

variable "user_name" {
  type = string
}

variable "user_role" {
  type = string
}

#----------------------------------------------------------

variable "team_name" {
  type = string
}

variable "team_description" {
  type = string
}

#----------------------------------------------------------

variable "team_add_user_name" {
  type = string
}

/* Ne fonctionne pas : Utile pour ajouter un utilisateur quelconque à une team quelconque de l'organisation

variable "team_add_name" {
  type = string
}

*/

variable "team_add_user_role" {
  type = string
}

#----------------------------------------------------------

variable "repository_team_rights" {
  type = string
}

#----------------------------------------------------------

variable "branch_protection_name" {
  type = string
}