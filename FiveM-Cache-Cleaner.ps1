##############################################################################################################################
#                                     Création d'un formulaire avec une interface graphique                                  #
##############################################################################################################################

# Chargement des classe 
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

##############################################################################################################################
#                                                            Function                                                        #
##############################################################################################################################

function MainPage {
    $ButtonClear.Visible = $true
    $ButtonPreload.Visible = $true
    $ButtonSettings.Visible = $true
    $ButtonRetour.Visible = $false
    $TitreClearCache.Visible = $false
    $TitrePreload.Visible = $false
    $TitreSettings.Visible = $false
    $Titre.Visible =$true
    $TitreClearCache.Visible = $false
}

function ClearCachePage {
    $ButtonClear.Visible = $false
    $ButtonPreload.Visible = $false
    $ButtonSettings.Visible = $false
    $Titre.Visible = $false
    $TitreClearCache.Visible = $true
    $ButtonRetour.Visible = $true
}

function PreloadPage {
    $ButtonClear.Visible = $false
    $ButtonPreload.Visible = $false
    $ButtonSettings.Visible = $false
    $Titre.Visible = $false
    $TitrePreload.Visible = $true
    $ButtonRetour.Visible = $true
}

function SettingsPage {
    $ButtonClear.Visible = $false
    $ButtonPreload.Visible = $false
    $ButtonSettings.Visible = $false
    $Titre.Visible = $false
    $TitreSettings.Visible = $true
    $ButtonRetour.Visible = $true
}




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
$Titre.Location = New-Object System.Drawing.Point(0,30)

$Titre.BackColor = [System.Drawing.Color]::FromArgb(243,5,81) 

# Couleur du texte du label
$Titre.ForeColor = "White"

# Police et taille d'écriture
$Titre.Font = 'Bahnschrift,16'


###############################################################
#                      Titre Clear Cache                      #
###############################################################


# Création du label
$TitreClearCache = New-Object System.Windows.Forms.Label

# Le contenu du label
$TitreClearCache.Text = "Clear Cache"

$TitreClearCache.TextAlign = "MiddleLeft"

$TitreClearCache.Size = New-Object System.Drawing.Size(965,35)

# La position du label
$TitreClearCache.Location = New-Object System.Drawing.Point(0,30)



$TitreClearCache.BackColor = [System.Drawing.Color]::FromArgb(243,5,81) 

# Couleur du texte du label
$TitreClearCache.ForeColor = "White"

# Police et taille d'écriture
$TitreClearCache.Font = 'Bahnschrift,16'


###############################################################
#                        Titre Preload                        #
###############################################################


# Création du label
$TitrePreload = New-Object System.Windows.Forms.Label

# Le contenu du label
$TitrePreload.Text = "PRELOAD CACHE"

$TitrePreload.TextAlign = "MiddleLeft"

$TitrePreload.Size = New-Object System.Drawing.Size(965,35)

# La position du label
$TitrePreload.Location = New-Object System.Drawing.Point(0,30)



$TitrePreload.BackColor = [System.Drawing.Color]::FromArgb(243,5,81) 

# Couleur du texte du label
$TitrePreload.ForeColor = "White"

# Police et taille d'écriture
$TitrePreload.Font = 'Bahnschrift,16'

###############################################################
#                       Titre Settings                        #
###############################################################


# Création du label
$TitreSettings = New-Object System.Windows.Forms.Label

# Le contenu du label
$TitreSettings.Text = "SETTINGS"

$TitreSettings.TextAlign = "MiddleLeft"

$TitreSettings.Size = New-Object System.Drawing.Size(965,35)

# La position du label
$TitreSettings.Location = New-Object System.Drawing.Point(0,30)



$TitreSettings.BackColor = [System.Drawing.Color]::FromArgb(243,5,81) 

# Couleur du texte du label
$TitreSettings.ForeColor = "White"

# Police et taille d'écriture
$TitreSettings.Font = 'Bahnschrift,16'




###############################################################
#                      Button Clear                           #
###############################################################



$ButtonClear = New-Object System.Windows.Forms.Button

$ButtonClear.Location = New-Object System.Drawing.Size(215,100)

$ButtonClear.Size = New-Object System.Drawing.Size(120,40)

$ButtonClear.Text = "Clear Cache"

$ButtonClear.ForeColor = [System.Drawing.Color]::FromArgb(243,5,81) 

$ButtonClear.BackColor = "White"

$ButtonClear.Font = 'Bahnschrift,11'

# Event click
$ButtonClear.Add_Click({


ClearCachePage
    })

###############################################################
#                      Button Preload Cache                   #
###############################################################

$ButtonPreload = New-Object System.Windows.Forms.Button

$ButtonPreload.Location = New-Object System.Drawing.Size(415,100)

$ButtonPreload.Size = New-Object System.Drawing.Size(120,40)

$ButtonPreload.Text = "Preload Cache"

$ButtonPreload.ForeColor = [System.Drawing.Color]::FromArgb(243,5,81) 

$ButtonPreload.BackColor = "White"

$ButtonPreload.Font = 'Bahnschrift,11'

# Event click
$ButtonPreload.Add_Click({
PreloadPage
    })

###############################################################
#                         Button Settings                     #
###############################################################

$ButtonSettings = New-Object System.Windows.Forms.Button

$ButtonSettings.Location = New-Object System.Drawing.Size(615,100)

$ButtonSettings.Size = New-Object System.Drawing.Size(120,40)

$ButtonSettings.Text = "Settings"

$ButtonSettings.ForeColor = [System.Drawing.Color]::FromArgb(243,5,81) 

$ButtonSettings.BackColor = "White"

$ButtonSettings.Font = 'Bahnschrift,11'

# Event click
$ButtonSettings.Add_Click({
SettingsPage
    })


###############################################################
#                         Button Return                       #
###############################################################

$ButtonRetour = New-Object System.Windows.Forms.Button

$ButtonRetour.Location = New-Object System.Drawing.Size(10,80)

$ButtonRetour.Size = New-Object System.Drawing.Size(120,40)

$ButtonRetour.Text = "⬅ Retour"

$ButtonRetour.ForeColor = [System.Drawing.Color]::FromArgb(243,5,81) 

$ButtonRetour.BackColor = "White"

$ButtonRetour.Font = 'Bahnschrift,11'

# Event click
$ButtonRetour.Add_Click({
MainPage
    })

##############################################################################################################################
#                                                        # Control ToolBox                                                   #
##############################################################################################################################


# Déclare les variables du ToolBox
$main_form.controls.AddRange(@(

# Main
$Titre,
$TitreClearCache,
$TitrePreload,
$TitreSettings,

# ToolBox
$ButtonClear,
$ButtonSettings,
$ButtonPreload,
$ButtonRetour,








# Designe
$BackgroundImage

))


##############################################################################################################################
#                                                     Window Settings                                                        #
##############################################################################################################################

# Affiche la fenêtre

MainPage

$main_form.ShowDialog()
