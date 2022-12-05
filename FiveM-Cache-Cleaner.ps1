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
$main_form.BackColor = "54,75,109"

# Bloque la taille max et min
$main_form.minimumSize = New-Object System.Drawing.Size(965,665)
$main_form.maximumSize = New-Object System.Drawing.Size(965,665)

##############################################################################################################################
#                                                       Design                                                               #
##############################################################################################################################

# Je suis pas designer

$ImageCeff = New-Object System.Windows.Forms.pictureBox
$ImageCeff.Location = New-Object Drawing.Point 40,40
$ImageCeff.Size = New-Object System.Drawing.Size(100,100)
$ImageCeff.image = [system.drawing.image]::FromFile("C:\Repositories\FiveM-Cache-Cleaner\Source\Background.jpg")

##############################################################################################################################
#                                                       Toolbox                                                              #
##############################################################################################################################

###############################################################
#                          Titre Designe                      #
###############################################################



##############################################################################################################################
#                                                        # Control ToolBox                                                   #
##############################################################################################################################

# Déclare les variables du ToolBox
$main_form.controls.AddRange(@(

# Designe
$ImageCeff

))


##############################################################################################################################
#                                                     Window Settings                                                        #
##############################################################################################################################

# Affiche la fenêtre

$main_form.ShowDialog()
