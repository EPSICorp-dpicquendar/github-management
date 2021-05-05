module "myteam" {
  source = "./module/"

  #----------------------------------------------------------

  #Création repository
  repository_name        = "test_example"
  repository_description = "Test de création d'un repository dans l'organisation"
  repository_visibility  = "public"
  repository_gitignore   = "Terraform"
  repository_has_wiki    = true
  repository_auto_init   = true

  #----------------------------------------------------------

  #Ajout du user et configuration de son role au sein de l'organisation
  user_name = "nicolasvassal"
  user_role = "member"

  #----------------------------------------------------------

  #Création d'une team
  team_name        = "DevOps"
  team_description = "Équipe de DevOps"

  #----------------------------------------------------------

  #Gestion des teams (ajout user, et configuration role pour la team créée)
  team_add_user_name = "nicolasvassal"
  team_add_user_role = "member"
  #team_add_name          = "DevOps"  (Ne fonctionne pas - utile pour sélectionenr une team déjà existante)

  #----------------------------------------------------------  

  #Gestion des droits de la team créée sur le repository créé
  repository_team_rights = "maintain"

  #----------------------------------------------------------  

  #Gestion de la protection d'une branche spécifiée dans le repository créé précédemment
  branch_protection_name = "main"

}