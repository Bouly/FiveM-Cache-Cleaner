##############################################################################################################################
#                                     Création d'un formulaire avec une interface graphique                                  #
##############################################################################################################################

# Chargement des classe 
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


##############################################################################################################################
#                                                            Variables                                                       #
##############################################################################################################################

$FolderBrowser.SelectedPath = "C:\Users\cp-20ahb\Desktop\Cache"

$pathCache1 = $FolderBrowser.SelectedPath + '\cache1'
$pathCache2 = $FolderBrowser.SelectedPath + '\cache2'
$pathCache3 = $FolderBrowser.SelectedPath + '\cache3'
$pathCache4 = $FolderBrowser.SelectedPath + '\cache4'

$i = 0

$TestPathResult1 = test-path $pathCache1
$TestPathResult2 = test-path $pathCache2
$TestPathResult3 = test-path $pathCache3
$TestPathResult4 = test-path $pathCache4

if( $TestPathResult1 -eq $false ){
 $Status = "Clear"
 $StatusColor = "Green"
}
else{
$Status = "Not"
$StatusColor = "Red"
}




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
    $ButtonClearCache.Visible = $false
    $ProgressBar.Visible = $false
    $LabelStatus.Visible = $false
    $LabelStatusVar.Visible = $false
    $ButtonCacheLoc.Visible = $false
}

function ClearCachePage {
    $ButtonClear.Visible = $false
    $ButtonPreload.Visible = $false
    $ButtonSettings.Visible = $false
    $Titre.Visible = $false
    $TitreClearCache.Visible = $true
    $ButtonClearCache.Visible = $true
    $ButtonRetour.Visible = $true
    $LabelStatus.Visible = $true
    $LabelStatusVar.Visible = $true
}

function PreloadPage {
    $ButtonClear.Visible = $false
    $ButtonPreload.Visible = $false
    $ButtonSettings.Visible = $false
    $Titre.Visible = $false
    $TitrePreload.Visible = $true
    $ButtonRetour.Visible = $true
    $ButtonCacheLoc.Visible = $true
}

function SettingsPage {
    $ButtonClear.Visible = $false
    $ButtonPreload.Visible = $false
    $ButtonSettings.Visible = $false
    $Titre.Visible = $false
    $TitreSettings.Visible = $true
    $ButtonRetour.Visible = $true
}


Function StartProgressBar
{
	if($i -le 0){
	    $ProgressBar.Value = $i
	    $script:i += 1
	}
	else {
		$timer.enabled = $false
	}
	
}


##############################################################################################################################
#                                                     Window Settings                                                        #
##############################################################################################################################

# Création de la fenêtre pour contenir les éléments
$main_form = New-Object System.Windows.Forms.Form

#Le titre de la fenêtre
$main_form.Text ='FiveM Cache Cleaner'

# Largeur de la fenêtre
$main_form.Width = 400

# Hauteur de la fenêtre
$main_form.Height = 400

# Étire automatiquement la fenêtre
$main_form.AutoSize = $true

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
#                       Label Status                          #
###############################################################


# Création du label
$LabelStatus = New-Object System.Windows.Forms.Label

# Le contenu du label
$LabelStatus.Text = "Status:"

$LabelStatus.TextAlign = "MiddleLeft"

$LabelStatus.Size = New-Object System.Drawing.Size(76,35)

# La position du label
$LabelStatus.Location = New-Object System.Drawing.Point(804,80)

$LabelStatus.BackColor = [System.Drawing.Color]::FromArgb(28,31,40) 

# Couleur du texte du label
$LabelStatus.ForeColor = "White"

# Police et taille d'écriture
$LabelStatus.Font = 'Bahnschrift,16'


###############################################################
#                       Label StatusVar                       #
###############################################################


# Création du label
$LabelStatusVar = New-Object System.Windows.Forms.Label

# Le contenu du label
$LabelStatusVar.Text = "$Status"

$LabelStatusVar.TextAlign = "MiddleLeft"

$LabelStatusVar.Size = New-Object System.Drawing.Size(76,35)

# La position du label
$LabelStatusVar.Location = New-Object System.Drawing.Point(875,80)

$LabelStatusVar.BackColor = [System.Drawing.Color]::FromArgb(28,31,40) 

# Couleur du texte du label
$LabelStatusVar.ForeColor = "$StatusColor"

# Police et taille d'écriture
$LabelStatusVar.Font = 'Bahnschrift,16'

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



###############################################################
#                         Button CacheLocation                #
###############################################################

$ButtonCacheLoc = New-Object System.Windows.Forms.Button

$ButtonCacheLoc.Location = New-Object System.Drawing.Size(615,100)

$ButtonCacheLoc.Size = New-Object System.Drawing.Size(120,40)

$ButtonCacheLoc.Text = "Location"

$ButtonCacheLoc.ForeColor = [System.Drawing.Color]::FromArgb(243,5,81) 

$ButtonCacheLoc.BackColor = "White"

$ButtonCacheLoc.Font = 'Bahnschrift,11'


$FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

# Event click
$ButtonCacheLoc.Add_Click({
    $FolderBrowser.ShowDialog()
    })


##########################################################

$ProgressBar = New-Object System.Windows.Forms.ProgressBar
$ProgressBar.Maximum = 100
$ProgressBar.Minimum = 0
$ProgressBar.Location = new-object System.Drawing.Size(215,500)
$ProgressBar.size = new-object System.Drawing.Size(600,20)
$i = 0


$timer = New-Object System.Windows.Forms.Timer 
$timer.Interval = 1000

$timer.add_Tick({
    StartProgressBar
    })

    $timer.Enabled = $true
$timer.Start()


###############################################################
#                         Button Clear Cache                  #
###############################################################

$ButtonClearCache = New-Object System.Windows.Forms.Button

$ButtonClearCache.Location = New-Object System.Drawing.Size(415,300)

$ButtonClearCache.Size = New-Object System.Drawing.Size(160,100)

$ButtonClearCache.Text = "Clear Cache"

$ButtonClearCache.ForeColor = [System.Drawing.Color]::FromArgb(243,5,81) 

$ButtonClearCache.BackColor = "White"

$ButtonClearCache.Font = 'Bahnschrift,11'

# Event click
$ButtonClearCache.Add_Click({
# Efface le cache



if ($TestPathResult1 -eq $false -And $TestPathResult2 -eq $false -And $TestPathResult3 -eq $false -And $TestPathResult4 -eq $false){
    [System.Windows.Forms.MessageBox]::Show('Le cache à déjà était vidé !','Erreur','Ok','Error')
}
else{
    $ProgressBar.Visible = $true
    While ($i -le 100) {
        $ProgressBar.Value = $i
        Start-Sleep -Seconds 0.01
        "VALLUE EQ"
        $i
        $i += 1
    }
    Remove-Item $pathCache1 -Recurse
    Remove-Item $pathCache2 -Recurse
    Remove-Item $pathCache3 -Recurse
    Remove-Item $pathCache4 -Recurse
    [System.Windows.Forms.MessageBox]::Show('Le cache à était vidé avec succès !','Succès','Ok','Information')


}


$ProgressBar.Visible = $false
    })

##############################################################################################################################
#                                                        # Control ToolBox                                                   #
##############################################################################################################################


# Déclare les variables du ToolBox
$main_form.controls.AddRange(@(

# Main
$Titre,
$LabelStatusVar,
$LabelStatus,
$TitreClearCache,
$TitrePreload,
$TitreSettings,

# ToolBox
$ButtonClear,
$ButtonSettings,
#$ButtonPreload,
$ButtonRetour,
$ButtonClearCache,
$ProgressBar,


$ButtonCacheLoc,



# Designe
$BackgroundImage

))


##############################################################################################################################
#                                                     Window Settings                                                        #
##############################################################################################################################

# Affiche la fenêtre

MainPage

$main_form.ShowDialog()
