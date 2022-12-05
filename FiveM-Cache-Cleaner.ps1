##############################################################################################################################
#                                     Création d'un formulaire avec une interface graphique                                  #
##############################################################################################################################

# Chargement des classe 
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

##############################################################################################################################
#                                                            Function                                                        #
##############################################################################################################################


##############################################################################################################################
#                                                     Window Settings                                                        #
##############################################################################################################################

# Création de la fenêtre pour contenir les éléments
$main_form = New-Object System.Windows.Forms.Form

#Le titre de la fenêtre
$main_form.Text ='Formulaire CEFF'

# Largeur de la fenêtre
$main_form.Width = 400

# Hauteur de la fenêtre
$main_form.Height = 400

# Étire automatiquement la fenêtre
$main_form.AutoSize = $true

#Couleur du fond
#$main_form.BackColor = "54,75,109"

# Bloque la taille max et min
$main_form.minimumSize = New-Object System.Drawing.Size(965,665)
$main_form.maximumSize = New-Object System.Drawing.Size(965,665)

##############################################################################################################################
#                                                       Design                                                               #
##############################################################################################################################

# Je suis pas designer

$BackgroundImage = New-Object System.Windows.Forms.pictureBox
$BackgroundImage.Location = New-Object Drawing.Point 0,0
$BackgroundImage.Size = New-Object System.Drawing.Size(965,665)
$BackgroundImage.image = [system.drawing.image]::FromFile("C:\Repositories\FiveM-Cache-Cleaner\Source\Background4.jpg")

##############################################################################################################################
#                                                       Toolbox                                                              #
##############################################################################################################################


###############################################################
#                             Titre                           #
###############################################################


# Création du label
$Titre = New-Object System.Windows.Forms.Label

# Le contenu du label
$Titre.Text = "FiveM Cache Cleaner"

$Titre.TextAlign = "MiddleCenter"

$Titre.Size = New-Object System.Drawing.Size(965,35)

# La position du label
$Titre.Location = New-Object System.Drawing.Point(0,20)



$Titre.BackColor = [System.Drawing.Color]::FromArgb(243,5,81) 

# Couleur du texte du label
$Titre.ForeColor = "White"

# Police et taille d'écriture
$Titre.Font = 'Bahnschrift,16'


##############################################################################################################################
#                                                        # Control ToolBox                                                   #
##############################################################################################################################

# Déclare les variables du ToolBox
$main_form.controls.AddRange(@(

$Titre

# Designe
$BackgroundImage

))


##############################################################################################################################
#                                                     Window Settings                                                        #
##############################################################################################################################

# Affiche la fenêtre

$main_form.ShowDialog()
