#!/usr/bin/env bash

# Setup & usage
# Step 0 Build the UITest project & generate an APK using the "Release" configuration (or use the provided APK)
# Step 1 Generate an AppCenter upload command and paste it to the variable 
AppCenter_Test_Command='paste upload command here'

# Debugging upload command 
# AppCenter_Test_Command='appcenter test run uitest --app "XTCTeam/Kent-G.-Forms-Gallery-1" --devices "XTCTeam/10-11-pixels-and-motorolas" --app-path pathToFile.apk --test-series "main" --locale "en_US" --build-dir pathToUITestBuildDir'

# Step 2 Provide the (absolute or relative) path to the apk
app_path='FormsGallery/FormsGallery.Android/bin/Debug/com.appcenter.formsgallery-Signed.apk'

# Step 3 Provide the (absolute or relative) path to the UITest project bin folder
build_dir='FormsGallery.UITest/bin/Debug'

# Step 4 run using the command "sh android.sh"

# Script injects app_path & build_dir and executes resulting command
AppCenter_Test_Command=${AppCenter_Test_Command/'pathToFile.apk'/$app_path}
AppCenter_Test_Command=${AppCenter_Test_Command/'pathToUITestBuildDir'/$build_dir}
echo $AppCenter_Test_Command
eval $AppCenter_Test_Command


