terraform {
  backend "remote" {
    organization = "epsi-dpicquendar"

    workspaces {
      name = "Exam-TI"
    }
  }
}