if (WUT)
	CPMAddPackage(
			NAME SDL2
			VERSION 2.28.5
			URL "https://github.com/devkitPro/SDL/archive/ed6b5f84ab43a4fc18edb95046038221d41c5d5d.zip"
			EXCLUDE_FROM_ALL ON
			OPTIONS
			"BUILD_SHARED_LIBS ${SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
			"SDL_SHARED ${SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
			"SDL_STATIC ${NOT_SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
			"SDL_TEST OFF"
			"SDL2_DISABLE_SDL2MAIN ON"
			"SDL2_DISABLE_INSTALL ON"
	)
elseif(${CMAKE_SYSTEM_NAME} MATCHES NintendoWii)
	CPMAddPackage(
		NAME SDL2
		VERSION 2.28.5
		URL https://github.com/devkitPro/SDL/archive/refs/heads/ogc-sdl-2.28.zip
		EXCLUDE_FROM_ALL ON
		OPTIONS
		"BUILD_SHARED_LIBS ${SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
		"SDL_SHARED ${SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
		"SDL_STATIC ${NOT_SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
		"SDL_TEST OFF"
		"SDL2_DISABLE_SDL2MAIN ON"
		"SDL2_DISABLE_INSTALL ON"
	)
else()
	CPMAddPackage(
			NAME SDL2
			VERSION 2.24.2
			URL "https://github.com/libsdl-org/SDL/archive/refs/tags/release-2.24.2.zip"
			EXCLUDE_FROM_ALL ON
			OPTIONS
			"BUILD_SHARED_LIBS ${SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
			"SDL_SHARED ${SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
			"SDL_STATIC ${NOT_SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES}"
			"SDL_TEST OFF"
			"SDL2_DISABLE_SDL2MAIN ON"
			"SDL2_DISABLE_INSTALL ON"
	)
endif()