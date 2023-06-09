#
# patch helper
#
enigma%-patch \
neutrino%-patch \
libstb-hal%-patch:
	( cd $(SOURCE_DIR) && diff -Nur --exclude-from=$(SCRIPTS_DIR)/diff-exclude $(subst -patch,,$@).org $(subst -patch,,$@) > $(BASE_DIR)/$(subst -patch,.patch,$@) ; [ $$? -eq 1 ] )

# keeping all patches together in one file
# uncomment if needed
#

# Neutrino DDT
NEUTRINO_DDT_PATCHES += $(PATCHES)/build-neutrino/neutrino-ddt.patch
NEUTRINO_LIBSTB_DDT_PATCHES += $(PATCHES)/build-neutrino/libstb-hal-ddt.patch

# Neutrino Tango
NEUTRINO_TANGOS_PATCHES += $(PATCHES)/build-neutrino/neutrino-tangos.patch
NEUTRINO_LIBSTB_TANGOS_PATCHES += $(PATCHES)/build-neutrino/libstb-hal-tangos.patch

# Neutrino2
NEUTRINO2_PATCHES += $(PATCHES)/build-neutrino/neutrino2.patch
NEUTRINO2_PLUGINS_PATCHES += $(PATCHES)/build-neutrino/neutrino2-plugins.patch

# Oscam patch
OSCAM_LOCAL_PATCH =
