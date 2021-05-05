#----------------------------------------------------------

#Ajout d'un utilisateur github à l'organisation
resource "github_membership" "user_create" {
  username = var.user_name
  role     = var.user_role
}

#----------------------------------------------------------

#Création d'un équipe pour l'organisation
resource "github_team" "team_create" {
  name        = var.team_name
  description = var.team_description
}

#----------------------------------------------------------

#Ajout de d'un utilisateur quelconque à la team créée
resource "github_team_membership" "Add_user_to_team" {
  team_id  = github_team.team_create.id
  username = var.team_add_user_name
  role     = var.team_add_user_role
}

