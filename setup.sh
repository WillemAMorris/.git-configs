!/bin/sh
CONF_DIR = $(HOME)/.config/
GIT_DIR = $(PWD)
CP_DIR = cp -vr
RM_DIR = rm -r

# Copy awesome config
if [ ! -d "$(CONF_DIR)awesome" ]; then
  $CP_DIR $(GIT_DIR)awesome $(CONF_DIR)
else
  $RM_DIR $(CONF_DIR)awesome
  $CP_DIR $(GIT_DIR)awesome $(CONF_DIR)
fi

# Copy sddm theme
SDDM_DIR = '/usr/share/sddm/themes/'
if [ ! -d "$(SDDM_DIR)custom_simplicity" ]
  sudo $CP_DIR $(GIT_DIR)custom_simplicity $(SDDM_DIR)
else
  sudo $RM_DIR $(SDDM_DIR)custom_simplicity
  sudo $CP_DIR $(GIT_DIR)custom_simplicity $(SDDM_DIR)
fi
