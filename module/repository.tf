#----------------------------------------------------------

#Ajout d'un repository à l'organisation
resource "github_repository" "repo_create" {
  name               = var.repository_name
  description        = var.repository_description
  visibility         = var.repository_visibility
  gitignore_template = var.repository_gitignore
  has_wiki           = var.repository_has_wiki
  auto_init          = var.repository_auto_init
}

#----------------------------------------------------------

#Modification des droits sur le repo créé précédemment pour la team créée précédemment
resource "github_team_repository" "Add_rights" {
  team_id    = github_team.team_create.id
  repository = github_repository.repo_create.name
  permission = var.repository_team_rights
}


#----------------------------------------------------------

#Gestion protection d'une branche spécifiée sur le repository créé précédemment
resource "github_branch_protection" "branch_protection" {
  repository_id       = github_repository.repo_create.node_id
  pattern             = var.branch_protection_pattern
  enforce_admins      = var.branch_protection_enforce_admin
  allows_deletions    = var.branch_protection_allows_deletions
}